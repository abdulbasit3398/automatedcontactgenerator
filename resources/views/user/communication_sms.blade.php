@extends('layouts.user')

@section('page-content')
<style type="text/css">
  .chat-list li a:hover {
      box-shadow: 0.75rem 0.75rem 0.75rem 1.5rem rgb(18 38 63 / 3%);
  }
</style>

<div class="container-fluid">
  <!-- start page title -->
  <div class="row">
    <div class="col-12">
      <div class="page-title-box d-sm-flex align-items-center justify-content-between">
        <a href="{{route('new-send-communication-sms')}}" class="btn btn-success btn-rounded">
          <i class="mdi mdi-plus"></i>
          <span class="d-none d-sm-inline-block me-2">Compose</span>

        </a>
         

      </div>
    </div>
  </div>

  <div class="d-lg-flex">
    <div class="chat-leftsidebar me-lg-4">
      <div class="">

        <div class="chat-leftsidebar-nav">
          <ul class="nav nav-pills nav-justified">
            <li class="nav-item">
                <a href="#chat" data-bs-toggle="tab" aria-expanded="true" class="nav-link active">
                    <i class="bx bx-chat font-size-20 d-sm-none"></i>
                    <span class="d-none d-sm-block">Chat</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="#contacts" data-bs-toggle="tab" aria-expanded="false" class="nav-link">
                    <i class="bx bx-book-content font-size-20 d-sm-none"></i>
                    <span class="d-none d-sm-block">Contacts</span>
                </a>
            </li>
          </ul>
          <div class="tab-content py-4">
            <div class="tab-pane show active" id="chat">
              <div>
                <h5 class="font-size-14 mb-3">Recent</h5>
                <ul class="list-unstyled chat-list" data-simplebar style="max-height: 410px;">
                  @if(count($data['numbers']) > 0)
                  @foreach($data['numbers'] as $number)
                  <li class="{{(isset($_GET['n']) && $_GET['n'] == $number->contact_phone_number) ? 'active' : ''}}">
                    <a href="?n={{$number->contact_phone_number}}">
                      <div class="media">
                        <div class="align-self-center me-3">
                          <i class="mdi mdi-circle font-size-10"></i>
                        </div>
                        <div class="align-self-center me-3">
                          <img src="{{asset('assets/images/users/'.$number->contact->contact_avatar)}}" class="rounded-circle avatar-xs" alt="">
                        </div>

                        <div class="media-body overflow-hidden">
                          <h5 class="text-truncate font-size-14 mb-1">{{$number->contact->contact_name}}</h5>
                          <p class="text-truncate mb-0">{{$number->contact_phone_number}}</p>
                        </div>
                      </div>
                    </a>
                  </li>
                  @endforeach
                  @endif
                  
                   
                </ul>
              </div>
            </div>
            <div class="tab-pane" id="contacts">

              <div data-simplebar="init" style="max-height: 410px;">
                <div class="simplebar-wrapper" style="margin: 0px;">
                  <div class="simplebar-height-auto-observer-wrapper">
                    <div class="simplebar-height-auto-observer"></div>
                  </div>
                  <div class="simplebar-mask">
                    <div class="simplebar-offset" style="right: 0px; bottom: 0px;"><div class="simplebar-content-wrapper" style="height: auto; overflow: hidden;">
                      <div class="simplebar-content" style="padding: 0px;">
                        <div>

                          <ul class="list-unstyled chat-list">
                            @foreach($data['contacts'] as $contact)
                              <li>
                                <a href="{{route('new-send-communication-sms')}}?num={{$contact->id}}">
                                    <h5 class="font-size-14 mb-0">{{$contact->contact_name}}</h5>
                                    <p>{{$contact->contact_phone}}</p>
                                </a>
                              </li>
                            @endforeach
                               
                          </ul>
                        </div>
         
                      </div>
                    </div>
                  </div>
                </div>
                <div class="simplebar-placeholder" style="width: 0px; height: 0px;"></div>
              </div>
              <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
                <div class="simplebar-scrollbar" style="transform: translate3d(0px, 0px, 0px); display: none;"></div>
              </div>
              <div class="simplebar-track simplebar-vertical" style="visibility: hidden;">
                <div class="simplebar-scrollbar" style="transform: translate3d(0px, 0px, 0px); display: none; height: 290px;"></div>
              </div>
            </div>

            </div>
          </div>
        </div>


      </div>
    </div>
    @if(isset($_GET['n']))
    <div class="w-100 user-chat">
      <div class="card">
        <div class="p-4 border-bottom ">
          <div class="row">
            <div class="col-md-4 col-9">
              <h5 class="font-size-15 mb-1">{{$data['contact_name']}}</h5>
            </div>
            <div class="col-md-8 col-3">
               
            </div>
          </div>
        </div>


        <div>
          <div class="chat-conversation p-3">
            <ul class="list-unstyled mb-0" data-simplebar style="max-height: 486px;">
              <!-- <li> 
                <div class="chat-day-title">
                  <span class="title">Today</span>
                </div>
              </li> -->
              @php
                foreach($data['history'] as $sms):
                if($sms->send_receive == 'receive')
                  $class = 'right';
                else
                  $class = '';
              @endphp
              <li class="{{$class}}">
                <div class="conversation-list">
                   
                  <div class="ctext-wrap">
                    <p>
                      {{$sms->message}}
                    </p>
                    <p class="chat-time mb-0"><i class="bx bx-time-five align-middle me-1"></i> {{date('Y-m-d H:i',strtotime($sms->created_at))}}</p>
                  </div>

                </div>
              </li>
              @endforeach

            </ul>
          </div>
          <div class="p-3 chat-input-section">
            <form method="post" action="{{route('send-communication-sms')}}" enctype="multipart/form-data">
              @csrf 
              <div class="row">

                <div class="col-12 collapse mb-2" id="collapseExample">
                  <input class="form-control form-control-sm" id="formFileSm" type="file" name="file_mms" accept="image/*,.pdf,.txt,.doc,.docx">
                </div>

                <div class="col">
                  <div class="position-relative">

                    <input type="hidden" name="sms_recipient_contact" value="{{$data['contact_id']}}">
                    <input type="text" class="form-control chat-input" name="message" placeholder="Enter Message...">

                    <div class="chat-input-links" id="tooltip-container">
                      <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                          <a class="collapsed" data-bs-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample" href="javascript: void(0);" title="Add Files"><i class="mdi mdi-file-document-outline"></i></a>
                        </li>
                      </ul>
                    </div>
                     
                  </div>
                </div>
                <div class="col-auto">
                  <button type="submit" class="btn btn-primary btn-rounded chat-send w-md waves-effect waves-light"><span class="d-none d-sm-inline-block me-2">Send</span> <i class="mdi mdi-send"></i></button>
                </div>

              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    @endif
  </div>
  <!-- end row -->

</div>

@endsection