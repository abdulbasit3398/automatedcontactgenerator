<?php

namespace App\Http\Controllers;

use App\Conversation;
use App\Http\Requests\Chat\ChatRequest;
use App\Message;
use App\UserHasConversation;
use Auth;
use App\User;
//use App\CrmChatHistory;
use Carbon\Carbon;
use Illuminate\Http\Request;

class CrmChatController extends Controller
{
    public function index()
    {

        $users = User::where([['type','user'],['id','!=',Auth::id()]])->get();

        $user_id= auth()->id();

        $allConvos = Conversation::where('sender_id', $user_id)->orWhere('rcvr_id', $user_id)->latest()->get();
        $conversations = $allConvos->unique('id');

        return view('user.chat',compact('users','conversations'));
    }


    public function send_chat(ChatRequest $request)
    {
        $rcvr_id = $request->receiver_id ?? $request->form_receiver_id;

        $conversation = Conversation::where([['sender_id',auth()->id()],['rcvr_id',$rcvr_id]])
            ->orWhere([['sender_id',$rcvr_id],['rcvr_id',auth()->id()]])->first();

        if(!$conversation){
            $conversation = Conversation::create([
                'sender_id'=>auth()->id(),
                'rcvr_id'=>$rcvr_id,
            ]);
        }

        $message = Message::create([
            'conversation_id'=> $conversation->id,
            'sender_id'=>auth()->id(),
            'rcvr_id'=>$rcvr_id,
            'body'=>$request->message,
            'created_at'=>Carbon::now(),
        ]);

        if($request->hasFile('file_mms') || $request->hasFile('file_mms2'))
        {
          $this->validate($request,[
            'file_mms' => 'mimes:jpg,bmp,png,doc,docx,txt',
            'file_mms2' => 'mimes:jpg,bmp,png,doc,docx,txt'
          ]);

          $image = $request->file('file_mms') ?? $request->file('file_mms2');

          $name = time().'.'.$image->getClientOriginalExtension();
          $destinationPath = public_path('/assets/mms_files');
          $imagePath = $destinationPath. "/". $name;
          $image->move($destinationPath, $name);

          $message->update([
              'media'=>$name
          ]);
        }

        if($request->send_message_form){
            $msg = Message::where('conversation_id',$message->conversation_id)->with('sender','receiver')->latest()->first();
            return view('user.chat-single-message',compact('msg'));
        }

        return back();
    }


    public function getMessages(Request $request){
        $request->validate([
            'conversation_id'=>'required',
        ]);

        $messages = Message::where('conversation_id',$request->conversation_id)->with('sender','receiver')->get();
        return view('user.chat-messages',compact('messages'));

    }
}
