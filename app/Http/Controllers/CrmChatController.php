<?php

namespace App\Http\Controllers;

use Auth;
use App\User;
use App\CrmChatHistory;
use Illuminate\Http\Request;

class CrmChatController extends Controller
{
    public function index()
    {

        $users = User::where([['type','user'],['id','!=',Auth::id()]])->get();
        return view('user.chat',compact('users'));
    }
    public function send_chat(Request $request)
    {
        $this->validate($request,[
            'receiver_id' => 'required',
            'message' => 'required',
        ]);

        $name = '';

        if(isset($request->file_mms) && $request->hasFile('file_mms'))
        {
          $this->validate($request,[
            'file_mms' => 'mimes:jpg,bmp,png,doc,docx,txt'
          ]);
          $image = $request->file('file_mms');
          $name = time().'.'.$image->getClientOriginalExtension();
          $destinationPath = public_path('/assets/mms_files');
          $imagePath = $destinationPath. "/". $name;
          $image->move($destinationPath, $name);

        }

        $crm_chat = new CrmChatHistory;
        $crm_chat->user_id = Auth::id();
        $crm_chat->receiver_id = $request->receiver_id;
        $crm_chat->message_body = $request->message;
        $crm_chat->media = $name;
        $crm_chat->save();

        return redirect()->back();
    }
}
