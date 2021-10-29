<li class="right">
    <div class="conversation-list">
        <div class="ctext-wrap">
            <div class="conversation-name">{{$msg->sender->full_name}}</div> <p> {{$msg->body}} </p>

            @if($msg->media)
                <div class="mb-3">
                    <a href="{{url('/assets/mms_files/'.$msg->media)}}">
                        <img src="{{asset('/assets/mms_files/'.$msg->media)}}" alt="">
                    </a>
                </div>
            @endif
            <p class="chat-time mb-0"><i class="bx bx-time-five align-middle me-1"></i>{{$msg->created_at}}</p>
        </div>
    </div>
</li>
