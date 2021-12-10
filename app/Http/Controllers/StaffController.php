<?php

namespace App\Http\Controllers;

use App\Funnel;
use App\User;
use App\BulkSmsEmail;
use App\ContactGenerator;
use Illuminate\Http\Request;
use App\Notifications\UserContactNotification;
use Illuminate\Notifications\Messages\MailMessage;

class StaffController extends Controller
{
  public function __construct()
  {
    $this->middleware('auth');
  }
  public function index()
  {
    $contacts = ContactGenerator::orderBy('id','DESC')->get();
    return view('staff.dashboard',compact('contacts'));
  }

  public function save_contact_file(Request $request)
  {
    $this->validate($request,[
      'contact_id' => 'required',
      // 'contact_file' => 'required',
    ]);

    // if(!$request->hasFile('contact_file'))
      // return redirect()->back();

    $contact = ContactGenerator::findOrFail($request->contact_id);

    $available = $status = 0;

    if(count($contact->user->contacts_available) != 0)
    {
      $available = $contact->user->check_contacts_availability($contact->created_at);
    }
    if($available == 0)
    {
      $this->validate($request,['price_of_file' => 'required']);

      $contact->price = $request->price_of_file;
      $contact->downloadable = 0;
    }

    if($request->hasFile('contact_file'))
    {
      $image = $request->file('contact_file');
      $name = 'contact_'.time().'.'.$image->getClientOriginalExtension();
      $destinationPath = public_path('/assets/contacts');
      $imagePath = $destinationPath. "/". $name;
      $image->move($destinationPath, $name);
      $contact->contact_file = $name;
      $status = 1;
    }


    $contact->status = $status;
    $contact->is_file_complete = ($request->file_complete) ? $request->file_complete : 0;
    $contact->notes = $request->notes;

    $contact->save();

    $user = User::findOrFail($contact->user_id);
    $user->remaining_contacts -= $request->contacts_used;
    $user->save();

    $user->notify(new UserContactNotification($contact));


    return redirect()->back()->with('success','File save successfully.');
  }

  public function funnels(){
      $funnels = Funnel::all();
      return view('staff.custom-funnels',compact('funnels'));
  }

  public function sms_email_request()
  {
    $bulk_sms_email = BulkSmsEmail::orderBy('id','DESC')->get();
    return view('staff.sms_email_request',compact('bulk_sms_email'));
  }

}
