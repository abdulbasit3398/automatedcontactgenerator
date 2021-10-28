@extends('layouts.user')

@section('custom-css')
<link href="{{asset('assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css')}}" rel="stylesheet" type="text/css" />
<link href="{{asset('assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css')}}" rel="stylesheet" type="text/css" />
<link href="{{asset('assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css')}}" rel="stylesheet" type="text/css" />

<!-- Calender css -->
<link rel="stylesheet" type="text/css" href="{{asset('assets/libs/tui-time-picker/tui-time-picker.min.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('assets/libs/tui-date-picker/tui-date-picker.min.css')}}">
<link href="{{asset('assets/libs/tui-calendar/tui-calendar.min.css')}}" rel="stylesheet" type="text/css" />

<!-- Create project css -->
<link href="{{asset('assets/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css')}}" rel="stylesheet">
<link href="{{asset('assets/libs/dropzone/min/dropzone.min.css')}}" rel="stylesheet" type="text/css" />
<style type="text/css">
.custom-input{
  border: 0 !important;
  border-bottom: 1px solid #ced4da !important;
  border-radius: 0 !important;
  height: 50px !important;
}
.t-heading{
  font-weight: 600;
}
.custom-radio{
  border-radius: 4em !important;
  width: 193px !important;
  height: 93px !important;
}
.clock-wrapper{
  /*text-align: center;*/
}
.clock-wrapper span{
  font-size: 50px;
}
</style>
@endsection

@section('page-content')
<div class="modal fade bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body upload-modal-body">
           
          <div class="mb-3 row">
            <div class="col-md-6">
              <label for="phone_no" class="form-label">First Name</label>
              <br/>
              <p id="d_first_name"></p>

            </div>
            <div class="col-md-6">
              <label for="phone_no" class="form-label">Last Name</label>
              <br/>
              <p id="d_last_name"></p>

            </div>
            <div class="col-md-6">
              <label for="phone_no" class="form-label">Email</label>
              <br/>
              <p id="d_email"></p>

            </div>
            <div class="col-md-6">
              <label for="phone_no" class="form-label">Username</label>
              <br/>
              <p id="d_username"></p>

            </div>
            <div class="col-md-6">
              <label for="phone_no" class="form-label">Company Name</label>
              <br/>
              <p id="d_company_name"></p>

            </div>
            <div class="col-md-6">
              <label class="form-label">Payment Paid</label>
              <br/>
              <p id="d_total_payment"></p>
            </div>
          </div>
 
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h4>Add new contact</h4>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body upload-modal-body">
          <div class="alert alert-danger error-alert" role="alert" style="display: none;">

          </div>
          <form method="POST"  class="require-validation" action="{{route('save-user-contacts')}}" enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="package_id" id="package_id">
            

            <div class="mb-3">
              <label for="contact_name" class="form-label">Name*</label>
              <input id="contact_name" type="text" class="form-control @error('contact_name') is-invalid @enderror " name="contact_name" value="{{ old('contact_name') }}" required autocomplete="contact_name" autofocus >

              
            </div>

            <div class="mb-3 row">
              <div class="col-md-6">
                <label for="phone_no" class="form-label">Phone#</label>
                <input id="phone_no" type="text" class="form-control @error('phone_no') is-invalid @enderror" name="phone_no" value="{{ old('phone_no') }}" autocomplete="phone_no" autofocus >

              </div>
              <div class="col-md-6">
                <label for="email" class="form-label">Email</label>
                <input id="email" type="text" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" autocomplete="email" autofocus >

              </div>
              <div class="col-md-6">
                <label for="phone_no" class="form-label">Company</label>
                <input id="company" type="text" class="form-control @error('company') is-invalid @enderror" name="company" value="{{ old('company') }}" autocomplete="company" autofocus >

              </div>
            </div>

            <div class="mb-3">
              <label for="cvc" class="form-label">Notes</label>
              <textarea class="form-control" rows="5" name="note"></textarea>
            </div>

            <div class="form-group mb-3">
              <label class="form-label">Upload File</label>
              <small>Max upload size is 10MB</small>
              <input type="file" name="contact_file" class="form-control" >
            </div>

            <div class="mb-3" style="float: right;">
              <button type="submit" class="btn btn-primary w-md">Save</button>
            </div>
          </form>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>

  <div class="modal fade bs-example-modal-lg1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h4>Add new user</h4>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body upload-modal-body">
          <div class="alert alert-danger error-alert" role="alert" style="display: none;">

          </div>
          <form method="POST"  class="require-validation" action="{{route('create-referal-user')}}" >
            @csrf

            <div class="mb-3 row">
              <div class="col-md-6">
                <label for="first_name" class="form-label">First Name</label>
                <input id="first_name" type="text" class="form-control " name="first_name" >
              </div>
              <div class="col-md-6">
                <label for="last_name" class="form-label">Last Name</label>
                <input id="last_name" type="text" class="form-control " name="last_name" >
              </div>
              <div class="col-md-6">
                <label for="username" class="form-label">Username</label>
                <input id="username" type="text" class="form-control " name="username"  >
              </div>
              <div class="col-md-6">
                <label for="email" class="form-label">Email*</label>
                <input id="email" type="email" class="form-control " name="email"  required>
              </div>
              <div class="col-md-6">
                <label for="password" class="form-label">Password*</label>
                <input id="password" type="text" class="form-control " name="password"  required>
              </div>
              <div class="col-md-6">
                <label for="company_name" class="form-label">Company Name</label>
                <input id="company_name" type="text" class="form-control " name="company_name" >
              </div>
            </div>

            <div class="mb-3" style="float: right;">
              <button type="submit" class="btn btn-primary w-md">Save</button>
            </div>
          </form>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>

<div class="container-fluid">

  <!-- start page title -->
  <div class="row">
    <div class="col-12">
      <div class="page-title-box d-sm-flex align-items-center justify-content-between">
        <h4 class="mb-sm-0 font-size-18">Dashboard</h4>



      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-xl-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-6">
              <h4 class="card-title">New Accounts</h4>
            </div>
            <div class="page-title-right col-md-6">
              <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg1" style="float: right;"><i class="fas fa-plus"></i></button>

            </div>
          </div>
          <br/>
          <div class="table-responsive">
            <table class="table align-middle table-nowrap table-hover">
              <thead class="table-light">
                <tr>
                  <th>Username</th>
                  <th>Email</th>
                  <th>Payment Paid</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                @foreach($users as $user)
                <tr>
                  <td>{{$user->username}}</td>
                  <td>{{$user->email}}</td>
                  <td>${{$user->package_price}}</td>
                  <td>
                    <a href="#" class="btn btn-success waves-effect waves-light me-1 show-user" data-first_name="{{$user->first_name}}" data-last_name="{{$user->last_name}}" data-email="{{$user->email}}" data-username="{{$user->username}}" data-payment_paid="{{$user->package_price}}"><i class="fas fa-eye"></i></a> 
                     
                  </td>
                </tr>
                @endforeach

              </tbody>
            </table>
          </div>

        </div>
      </div>
    </div>

  </div>
  
  

  <div class="container-fluid">

    <!-- start page title -->
    <div class="row">
      <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
          <h4 class="mb-sm-0 font-size-18"></h4>

          

        </div>
      </div>
    </div>
    <!-- end page title -->

    <div class="row">
      <div class="col-lg-12" style="padding: 0;">
        <div class="card">
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
                <h4 class="card-title">Contacts</h4>
              </div>
              <div class="page-title-right col-md-6">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg" style="float: right;"><i class="fas fa-plus"></i></button>

              </div>
            </div>
            <br/>
            
            @if(\Session::has('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
              {!! \Session::get('success') !!}
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>

            @endif
            <div class="table-responsive">
              <table class="table align-middle table-nowrap table-hover" id="datatable">
                <thead class="table-light">
                  <tr>
                    <th scope="col">Name</th>
                    <th scope="col">Phone#</th>
                    <th scope="col">Email</th>
                    <th scope="col">Company</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                 @foreach($data['contacts'] as $contact)
                 <tr>
                  <td>
                    <h5 class="font-size-14 mb-1"><a href="#" class="text-dark">{{$contact->contact_name}}</a></h5>
                  </td>
                  <td>{{$contact->contact_phone}}</td>
                  <td>{{$contact->contact_email}}</td>
                  <td>{{$contact->company_name}}</td>
                  
                  
                  <td>
                    <a href="{{route('show-user-contact',$contact->id)}}" class="btn btn-success waves-effect waves-light me-1"><i class="fas fa-eye"></i></a>
                    <a href="{{route('edit-user-contact',$contact->id)}}" class="btn btn-primary waves-effect waves-light me-1"><i class="fas fa-pencil-alt"></i></a>
                    <a href="{{route('delete-user-contacts',$contact->id)}}" onclick="return confirm('Are you sure you want to delete this contact?');" class="btn btn-danger waves-effect waves-light me-1"><i class="fa fa-trash"></i></a>
                  </td>

                </tr>
                @endforeach
                
              </tbody>
            </table>
          </div>

        </div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-12">
    <div class="card" style="height: 765px;">
      <div class="card-body">

        <h4 class="card-title">Additonal Notes</h4>
        <p class="card-title-desc">You can add and save notes here.</p>

        <form method="post" action="{{route('save-additional-notes')}}">
          @csrf
          <textarea id="elm1" name="additional_notes" rows="10">{!! isset($notes->notes) ? $notes->notes : '' !!}</textarea>
          <button type="submit" class="btn btn-primary" style="float: right;margin-top: 17px;">Save</button>
        </form> 

      </div>
    </div>
  </div> <!-- end col -->
</div>

<div class="row">
  <div class="col-12">
    <div class="card">
      <div class="card-body">
        <input type="hidden" id="num" class="form-control" value="0">
        <input type="hidden" id="measure" value="s">
        <h4 class="card-title">Time Management</h4>
        <input type="hidden" name="save_time" id="save_time" value="{{route('save-time-track')}}">
        <form method="post" action="{{route('save-time-track')}}">
          @csrf
          <div class="row">
            <div class="col-md-6">
              <div class="row">
                <div class="col-md-6">
                  <input type="text" name="job_code" class="form-control" placeholder="Enter Job Code here" id="job_code" style="border: none;border-bottom: 1px solid #ced4da;">
                </div>
                <div class="col-md-6">
                  <br/>
                  <!-- <div class="form-check form-switch form-switch-lg mb-3" dir="ltr">
                    <input class="form-check-input custom-radio" type="checkbox" value="1" name="clock" id="SwitchCheckSizelg">
                  </div> -->
                  <input type="checkbox" class="custom-radio" name="clock" id="SwitchCheckSizelg" switch="none" value="1">
                  <label for="SwitchCheckSizelg" data-on-label="On" data-off-label="Off"></label>
                </div>

                <div class="col-md-12 timer-div">
                  <div id="timer" class="col-12">
                    <div class="clock-wrapper">
                      <span class="hours">00</span>
                      <span class="dots">:</span>
                      <span class="minutes">00</span>
                      <span class="dots">:</span>
                      <span class="seconds">00</span>
                    </div>
                  </div>
                </div>

              </div>
            </div>
            <div class="col-md-6">
              <div class="table-responsive">
                <table class="table align-middle table-nowrap table-hover">
                  <thead class="table-light">
                    <tr>
                      <th>Job Code</th>
                      <th>Status</th>
                      <th>Date Time</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($data['user_clock'] as $clock)
                    <tr>
                      <td>{{$clock->job_code}}</td>
                      <td>
                        {{$clock->clock_status == 1 ? 'Clock In' : 'Clock Out'}}
                      </td>
                      <td>{{date('d M Y H:i:s',strtotime($clock->created_at))}}</td>
                    <tr/>
                    @endforeach

                  </tbody>
                </table>
              </div>
            </div>
          </div>
           
          
        </form> 

      </div>
    </div>
  </div> <!-- end col -->
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-body" id="Calendar" name="Calendar">
        <h4 class="card-title pb-2">Calendar</h4>
        <div id="lnb">
          <div id="right">
            <div id="menu" class="mb-3">
              <span id="menu-navi" class="d-sm-flex flex-wrap text-center text-sm-start justify-content-sm-between">
                <div class="d-sm-flex flex-wrap gap-1">
                  <div class="btn-group mb-2" role="group" aria-label="Basic example">
                    <button type="button" class="btn btn-primary move-day" data-action="move-prev">
                      <i class="calendar-icon ic-arrow-line-left mdi mdi-chevron-left" data-action="move-prev"></i>
                    </button>
                    <button type="button" class="btn btn-primary move-day" data-action="move-next">
                      <i class="calendar-icon ic-arrow-line-right mdi mdi-chevron-right" data-action="move-next"></i>
                    </button>
                  </div>


                  <button type="button" class="btn btn-primary move-today mb-2" data-action="move-today">Today</button>
                </div>

                <h4 id="renderRange" class="render-range fw-bold pt-1 mx-3"></h4>

                <div class="dropdown align-self-start mt-3 mt-sm-0 mb-2">
                  <button id="dropdownMenu-calendarType" class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="true">
                  <i id="calendarTypeIcon" class="calendar-icon ic_view_month" style="margin-right: 4px;"></i>
                  <span id="calendarTypeName">Dropdown</span>&nbsp;
                  <i class="calendar-icon tui-full-calendar-dropdown-arrow"></i>
                </button>
                <ul class="dropdown-menu dropdown-menu-end" role="menu" aria-labelledby="dropdownMenu-calendarType">
                  <li role="presentation">
                    <a class="dropdown-item" role="menuitem" data-action="toggle-daily">
                      <i class="calendar-icon ic_view_day"></i>Daily
                    </a>
                  </li>
                  <li role="presentation">
                    <a class="dropdown-item" role="menuitem" data-action="toggle-weekly">
                      <i class="calendar-icon ic_view_week"></i>Weekly
                    </a>
                  </li>
                  <li role="presentation">
                    <a class="dropdown-item" role="menuitem" data-action="toggle-monthly">
                      <i class="calendar-icon ic_view_month"></i>Month
                    </a>
                  </li>
                  <li role="presentation">
                    <a class="dropdown-item" role="menuitem" data-action="toggle-weeks2">
                      <i class="calendar-icon ic_view_week"></i>2 weeks
                    </a>
                  </li>
                  <li role="presentation">
                    <a class="dropdown-item" role="menuitem" data-action="toggle-weeks3">
                      <i class="calendar-icon ic_view_week"></i>3 weeks
                    </a>
                  </li>
                  <li role="presentation" class="dropdown-divider"></li>
                  <li role="presentation">
                    <a class="dropdown-item" role="menuitem" data-action="toggle-workweek">
                      <input type="checkbox" class="tui-full-calendar-checkbox-square" value="toggle-workweek" checked>
                      <span class="checkbox-title"></span>Show weekends
                    </a>
                  </li>
                  <li role="presentation">
                    <a class="dropdown-item" role="menuitem" data-action="toggle-start-day-1">
                      <input type="checkbox" class="tui-full-calendar-checkbox-square" value="toggle-start-day-1">
                      <span class="checkbox-title"></span>Start Week on Monday
                    </a>
                  </li>
                  <li role="presentation">
                    <a class="dropdown-item" role="menuitem" data-action="toggle-narrow-weekend">
                      <input type="checkbox" class="tui-full-calendar-checkbox-square" value="toggle-narrow-weekend">
                      <span class="checkbox-title"></span>Narrower than weekdays
                    </a>
                  </li>
                </ul>
              </div>
            </span>

          </div>
        </div>

        <div class="lnb-new-schedule float-sm-end ms-sm-3 mt-4 mt-sm-0">
          <button id="btn-new-schedule" type="button" class="btn btn-primary lnb-new-schedule-btn" data-toggle="modal">
          New schedule</button>
        </div>
        <div id="calendarList" class="lnb-calendars-d1 mt-4 mt-sm-0 me-sm-0 mb-4"></div>


        <div id="calendar" style="height: 800px;"></div>

      </div>
    </div>
  </div>
</div>
</div>


<!-- Cloud -->
<div class="d-xl-flex" id="Cloud" name="Cloud">
  <div class="w-100">
    <div class="d-md-flex">
      <div class="card filemanager-sidebar me-md-2">
        <h4 class="card-title pt-3 px-3">Cloud</h4>
        <div class="card-body">

          <div class="d-flex flex-column h-100">
            <div class="mb-4">
              <div class="mb-3">
                <div class="dropdown">
                  <button class="btn btn-light dropdown-toggle w-100" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="mdi mdi-plus me-1"></i> Create New
                  </button>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="#"><i class="bx bx-folder me-1"></i> Folder</a>
                    <a class="dropdown-item" href="#"><i class="bx bx-file me-1"></i> File</a>
                  </div>
                </div>
              </div>
              <ul class="list-unstyled categories-list">
                <li>
                  <div class="custom-accordion">
                    <a class="text-body fw-medium py-1 d-flex align-items-center" data-bs-toggle="collapse" href="#categories-collapse" role="button" aria-expanded="false" aria-controls="categories-collapse">
                      <i class="mdi mdi-folder font-size-16 text-warning me-2"></i> Files <i class="mdi mdi-chevron-up accor-down-icon ms-auto"></i>
                    </a>
                    <div class="collapse show" id="categories-collapse">
                      <div class="card border-0 shadow-none ps-2 mb-0">
                        <ul class="list-unstyled mb-0">
                          <li><a href="#" class="d-flex align-items-center"><span class="me-auto">Design</span></a></li>
                          <li><a href="#" class="d-flex align-items-center"><span class="me-auto">Development</span> <i class="mdi mdi-pin ms-auto"></i></a></li>
                          <li><a href="#" class="d-flex align-items-center"><span class="me-auto">Project A</span></a></li>
                          <li><a href="#" class="d-flex align-items-center"><span class="me-auto">Admin</span> <i class="mdi mdi-pin ms-auto"></i></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <a href="javascript: void(0);" class="text-body d-flex align-items-center">
                    <i class="mdi mdi-google-drive font-size-16 text-muted me-2"></i> <span class="me-auto">Google Drive</span> 
                  </a>
                </li>
                <li>
                  <a href="javascript: void(0);" class="text-body d-flex align-items-center">
                    <i class="mdi mdi-dropbox font-size-16 me-2 text-primary"></i> <span class="me-auto">Dropbox</span>
                  </a>
                </li>
                <li>
                  <a href="javascript: void(0);" class="text-body d-flex align-items-center">
                    <i class="mdi mdi-share-variant font-size-16 me-2"></i> <span class="me-auto">Shared</span> <i class="mdi mdi-circle-medium text-danger ms-2"></i>
                  </a>
                </li>
                <li>
                  <a href="javascript: void(0);" class="text-body d-flex align-items-center">
                    <i class="mdi mdi-star-outline text-muted font-size-16 me-2"></i> <span class="me-auto">Starred</span>
                  </a>
                </li>
                <li>
                  <a href="javascript: void(0);" class="text-body d-flex align-items-center">
                    <i class="mdi mdi-trash-can text-danger font-size-16 me-2"></i> <span class="me-auto">Trash</span>
                  </a>
                </li>
                <li>
                  <a href="javascript: void(0);" class="text-body d-flex align-items-center">
                    <i class="mdi mdi-cog text-muted font-size-16 me-2"></i> <span class="me-auto">Setting</span><span class="badge bg-success rounded-pill ms-2">01</span>
                  </a>
                </li>
              </ul>
            </div>

            <div class="mt-auto">
              <div class="alert alert-success alert-dismissible fade show px-3 mb-0" role="alert">
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                <div class="mb-3">
                  <i class="bx bxs-folder-open h1 text-success"></i>
                </div>

                <div>
                  <h5 class="text-success">Upgrade Features</h5>
                  <p>Cum sociis natoque penatibus et</p>
                  <div class="text-center">
                    <button type="button" class="btn btn-link text-decoration-none text-success">Upgrade <i class="mdi mdi-arrow-right"></i></button>
                  </div>
                </div>
              </div>


            </div>
          </div>

        </div>
      </div>
      <!-- filemanager-leftsidebar -->

      <div class="w-100">
        <div class="card">
          <div class="card-body">
            <div>
              <div class="row mb-3">
                <div class="col-xl-3 col-sm-6">
                  <div class="mt-2">
                    <h5>My Files</h5>
                  </div>
                </div>
                <div class="col-xl-9 col-sm-6">
                  <form class="mt-4 mt-sm-0 float-sm-end d-flex align-items-center">
                    <div class="search-box mb-2 me-2">
                      <div class="position-relative">
                        <input type="text" class="form-control bg-light border-light rounded" placeholder="Search...">
                        <i class="bx bx-search-alt search-icon"></i>
                      </div>
                    </div>

                    <div class="dropdown mb-0">
                      <a class="btn btn-link text-muted dropdown-toggle mt-n2" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                        <i class="mdi mdi-dots-vertical font-size-20"></i>
                      </a>

                      <div class="dropdown-menu dropdown-menu-end">
                        <a class="dropdown-item" href="#">Share Files</a>
                        <a class="dropdown-item" href="#">Share with me</a>
                        <a class="dropdown-item" href="#">Other Actions</a>
                      </div>
                    </div>


                  </form>
                </div>
              </div>
            </div>

            <div>
              <div class="row">
                <div class="col-xl-4 col-sm-6">
                  <div class="card shadow-none border">
                    <div class="card-body p-3">
                      <div class="">
                        <div class="float-end ms-2">
                          <div class="dropdown mb-2">
                            <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                              <i class="mdi mdi-dots-horizontal"></i>
                            </a>

                            <div class="dropdown-menu dropdown-menu-end">
                              <a class="dropdown-item" href="#">Open</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Rename</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Remove</a>
                            </div>
                          </div>
                        </div>
                        <div class="avatar-xs me-3 mb-3">
                          <div class="avatar-title bg-transparent rounded">
                            <i class="bx bxs-folder font-size-24 text-warning"></i>
                          </div>
                        </div>
                        <div class="d-flex">
                          <div class="overflow-hidden me-auto">
                            <h5 class="font-size-14 text-truncate mb-1"><a href="javascript: void(0);" class="text-body">Design</a></h5>
                            <p class="text-muted text-truncate mb-0">12 Files</p>
                          </div>
                          <div class="align-self-end ms-2">
                            <p class="text-muted mb-0">6GB</p>
                          </div>
                        </div>

                      </div>
                    </div>

                  </div>
                </div>
                <!-- end col -->

                <div class="col-xl-4 col-sm-6">
                  <div class="card shadow-none border">
                    <div class="card-body p-3">
                      <div class="">
                        <div class="float-end ms-2">
                          <div class="dropdown mb-2">
                            <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                              <i class="mdi mdi-dots-horizontal"></i>
                            </a>

                            <div class="dropdown-menu dropdown-menu-end">
                              <a class="dropdown-item" href="#">Open</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Rename</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Remove</a>
                            </div>
                          </div>
                        </div>
                        <div class="avatar-xs me-3 mb-3">
                          <div class="avatar-title bg-transparent rounded">
                            <i class="bx bxs-folder font-size-24 text-warning"></i>
                          </div>
                        </div>
                        <div class="d-flex">
                          <div class="overflow-hidden me-auto">
                            <h5 class="font-size-14 text-truncate mb-1"><a href="javascript: void(0);" class="text-body">Development</a></h5>
                            <p class="text-muted text-truncate mb-0">20 Files</p>
                          </div>
                          <div class="align-self-end ms-2">
                            <p class="text-muted mb-0">8GB</p>
                          </div>
                        </div>

                      </div>
                    </div>

                  </div>
                </div>
                <!-- end col -->

                <div class="col-xl-4 col-sm-6">
                  <div class="card shadow-none border">
                    <div class="card-body p-3">
                      <div class="">
                        <div class="float-end ms-2">
                          <div class="dropdown mb-2">
                            <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                              <i class="mdi mdi-dots-horizontal"></i>
                            </a>

                            <div class="dropdown-menu dropdown-menu-end">
                              <a class="dropdown-item" href="#">Open</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Rename</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Remove</a>
                            </div>
                          </div>
                        </div>
                        <div class="avatar-xs me-3 mb-3">
                          <div class="avatar-title bg-transparent rounded">
                            <i class="bx bxs-folder font-size-24 text-warning"></i>
                          </div>
                        </div>
                        <div class="d-flex">
                          <div class="overflow-hidden me-auto">
                            <h5 class="font-size-14 text-truncate mb-1"><a href="javascript: void(0);" class="text-body">Project A</a></h5>
                            <p class="text-muted text-truncate mb-0">06 Files</p>
                          </div>
                          <div class="align-self-end ms-2">
                            <p class="text-muted mb-0">2GB</p>
                          </div>
                        </div>

                      </div>
                    </div>

                  </div>
                </div>
                <!-- end col -->

                <div class="col-xl-4 col-sm-6">
                  <div class="card shadow-none border">
                    <div class="card-body p-3">
                      <div class="">
                        <div class="float-end ms-2">
                          <div class="dropdown mb-2">
                            <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                              <i class="mdi mdi-dots-horizontal"></i>
                            </a>

                            <div class="dropdown-menu dropdown-menu-end">
                              <a class="dropdown-item" href="#">Open</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Rename</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Remove</a>
                            </div>
                          </div>
                        </div>
                        <div class="avatar-xs me-3 mb-3">
                          <div class="avatar-title bg-transparent rounded">
                            <i class="bx bxs-folder font-size-24 text-warning"></i>
                          </div>
                        </div>
                        <div class="d-flex">
                          <div class="overflow-hidden me-auto">
                            <h5 class="font-size-14 text-truncate mb-1"><a href="javascript: void(0);" class="text-body">Admin</a></h5>
                            <p class="text-muted text-truncate mb-0">08 Files</p>
                          </div>
                          <div class="align-self-end ms-2">
                            <p class="text-muted mb-0">4GB</p>
                          </div>
                        </div>
                      </div>
                    </div>

                  </div>
                </div>
                <!-- end col -->

                <div class="col-xl-4 col-sm-6">
                  <div class="card shadow-none border">
                    <div class="card-body p-3">
                      <div class="">
                        <div class="float-end ms-2">
                          <div class="dropdown mb-2">
                            <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                              <i class="mdi mdi-dots-horizontal"></i>
                            </a>

                            <div class="dropdown-menu dropdown-menu-end">
                              <a class="dropdown-item" href="#">Open</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Rename</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Remove</a>
                            </div>
                          </div>
                        </div>
                        <div class="avatar-xs me-3 mb-3">
                          <div class="avatar-title bg-transparent rounded">
                            <i class="bx bxs-folder font-size-24 text-warning"></i>
                          </div>
                        </div>
                        <div class="d-flex">
                          <div class="overflow-hidden me-auto">
                            <h5 class="font-size-14 text-truncate mb-1"><a href="javascript: void(0);" class="text-body">Sketch Design</a></h5>
                            <p class="text-muted text-truncate mb-0">12 Files</p>
                          </div>
                          <div class="align-self-end ms-2">
                            <p class="text-muted mb-0">6GB</p>
                          </div>
                        </div>

                      </div>
                    </div>

                  </div>
                </div>
                <!-- end col -->

                <div class="col-xl-4 col-sm-6">
                  <div class="card shadow-none border">
                    <div class="card-body p-3">
                      <div class="">
                        <div class="float-end ms-2">
                          <div class="dropdown mb-2">
                            <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                              <i class="mdi mdi-dots-horizontal"></i>
                            </a>

                            <div class="dropdown-menu dropdown-menu-end">
                              <a class="dropdown-item" href="#">Open</a>
                              <a class="dropdown-item" href="#">Edit</a>
                              <a class="dropdown-item" href="#">Rename</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Remove</a>
                            </div>
                          </div>
                        </div>
                        <div class="avatar-xs me-3 mb-3">
                          <div class="avatar-title bg-transparent rounded">
                            <i class="bx bxs-folder font-size-24 text-warning"></i>
                          </div>
                        </div>
                        <div class="d-flex">
                          <div class="overflow-hidden me-auto">
                            <h5 class="font-size-14 text-truncate mb-1"><a href="javascript: void(0);" class="text-body">Applications</a></h5>
                            <p class="text-muted text-truncate mb-0">20 Files</p>
                          </div>
                          <div class="align-self-end ms-2">
                            <p class="text-muted mb-0">8GB</p>
                          </div>
                        </div>

                      </div>
                    </div>

                  </div>
                </div>
                <!-- end col -->

              </div>
              <!-- end row -->
            </div>

            <div class="mt-4">
              <div class="d-flex flex-wrap">
                <h5 class="font-size-16 me-3">Recent Files</h5>

                <div class="ms-auto">
                  <a href="javascript: void(0);" class="fw-medium text-reset">View All</a>
                </div>
              </div>
              <hr class="mt-2">

              <div class="table-responsive">
                <table class="table align-middle table-nowrap table-hover mb-0">
                  <thead>
                    <tr>
                      <th scope="col">Name</th>
                      <th scope="col">Date modified</th>
                      <th scope="col" colspan="2">Size</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-file-document font-size-16 align-middle text-primary me-2"></i> index.html</a></td>
                      <td>12-10-2020, 09:45</td>
                      <td>09 KB</td>
                      <td>
                        <div class="dropdown">
                          <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                            <i class="mdi mdi-dots-horizontal"></i>
                          </a>

                          <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="#">Open</a>
                            <a class="dropdown-item" href="#">Edit</a>
                            <a class="dropdown-item" href="#">Rename</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Remove</a>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-folder-zip font-size-16 align-middle text-warning me-2"></i> Project-A.zip</a></td>
                      <td>11-10-2020, 17:05</td>
                      <td>115 KB</td>
                      <td>
                        <div class="dropdown">
                          <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                            <i class="mdi mdi-dots-horizontal"></i>
                          </a>

                          <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="#">Open</a>
                            <a class="dropdown-item" href="#">Edit</a>
                            <a class="dropdown-item" href="#">Rename</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Remove</a>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-image font-size-16 align-middle text-muted me-2"></i> Img-1.jpeg</a></td>
                      <td>11-10-2020, 13:26</td>
                      <td>86 KB</td>
                      <td>
                        <div class="dropdown">
                          <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                            <i class="mdi mdi-dots-horizontal"></i>
                          </a>

                          <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="#">Open</a>
                            <a class="dropdown-item" href="#">Edit</a>
                            <a class="dropdown-item" href="#">Rename</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Remove</a>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-text-box font-size-16 align-middle text-muted me-2"></i> update list.txt</a></td>
                      <td>10-10-2020, 11:32</td>
                      <td>08 KB</td>
                      <td>
                        <div class="dropdown">
                          <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                            <i class="mdi mdi-dots-horizontal"></i>
                          </a>

                          <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="#">Open</a>
                            <a class="dropdown-item" href="#">Edit</a>
                            <a class="dropdown-item" href="#">Rename</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Remove</a>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-folder font-size-16 align-middle text-warning me-2"></i> Project B</a></td>
                      <td>10-10-2020, 10:51</td>
                      <td>72 KB</td>
                      <td>
                        <div class="dropdown">
                          <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                            <i class="mdi mdi-dots-horizontal"></i>
                          </a>

                          <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="#">Open</a>
                            <a class="dropdown-item" href="#">Edit</a>
                            <a class="dropdown-item" href="#">Rename</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Remove</a>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-text-box font-size-16 align-middle text-muted me-2"></i> Changes list.txt</a></td>
                      <td>09-10-2020, 17:05</td>
                      <td>07 KB</td>
                      <td>
                        <div class="dropdown">
                          <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                            <i class="mdi mdi-dots-horizontal"></i>
                          </a>

                          <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="#">Open</a>
                            <a class="dropdown-item" href="#">Edit</a>
                            <a class="dropdown-item" href="#">Rename</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Remove</a>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-image font-size-16 align-middle text-success me-2"></i> Img-2.png</a></td>
                      <td>09-10-2020, 15:12</td>
                      <td>31 KB</td>
                      <td>
                        <div class="dropdown">
                          <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                            <i class="mdi mdi-dots-horizontal"></i>
                          </a>

                          <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="#">Open</a>
                            <a class="dropdown-item" href="#">Edit</a>
                            <a class="dropdown-item" href="#">Rename</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Remove</a>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="mdi mdi-folder font-size-16 align-middle text-warning me-2"></i> Project C</a></td>
                      <td>09-10-2020, 10:11</td>
                      <td>20 KB</td>
                      <td>
                        <div class="dropdown">
                          <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                            <i class="mdi mdi-dots-horizontal"></i>
                          </a>

                          <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="#">Open</a>
                            <a class="dropdown-item" href="#">Edit</a>
                            <a class="dropdown-item" href="#">Rename</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Remove</a>
                          </div>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="javascript: void(0);" class="text-dark fw-medium"><i class="bx bxs-file font-size-16 align-middle text-primary me-2"></i> starter-page.html</a></td>
                      <td>08-10-2020, 03:22</td>
                      <td>11 KB</td>
                      <td>
                        <div class="dropdown">
                          <a class="font-size-16 text-muted dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="true">
                            <i class="mdi mdi-dots-horizontal"></i>
                          </a>

                          <div class="dropdown-menu dropdown-menu-end">
                            <a class="dropdown-item" href="#">Open</a>
                            <a class="dropdown-item" href="#">Edit</a>
                            <a class="dropdown-item" href="#">Rename</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Remove</a>
                          </div>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <!-- end card -->
      </div>
      <!-- end w-100 -->
    </div>
  </div>

  <div class="card filemanager-sidebar ms-lg-2">
    <div class="card-body">
      <div class="text-center">
        <h5 class="font-size-15 mb-4">Storage</h5>
        <div class="apex-charts" id="radial-chart"></div>

        <p class="text-muted mt-4">48.02 GB (76%) of 64 GB used</p>
      </div>

      <div class="mt-4">
        <div class="card border shadow-none mb-2">
          <a href="javascript: void(0);" class="text-body">
            <div class="p-2">
              <div class="d-flex">
                <div class="avatar-xs align-self-center me-2">
                  <div class="avatar-title rounded bg-transparent text-success font-size-20">
                    <i class="mdi mdi-image"></i>
                  </div>
                </div>

                <div class="overflow-hidden me-auto">
                  <h5 class="font-size-13 text-truncate mb-1">Images</h5>
                  <p class="text-muted text-truncate mb-0">176 Files</p>
                </div>

                <div class="ms-2">
                  <p class="text-muted">6 GB</p>
                </div>
              </div>
            </div>
          </a>
        </div>

        <div class="card border shadow-none mb-2">
          <a href="javascript: void(0);" class="text-body">
            <div class="p-2">
              <div class="d-flex">
                <div class="avatar-xs align-self-center me-2">
                  <div class="avatar-title rounded bg-transparent text-danger font-size-20">
                    <i class="mdi mdi-play-circle-outline"></i>
                  </div>
                </div>

                <div class="overflow-hidden me-auto">
                  <h5 class="font-size-13 text-truncate mb-1">Video</h5>
                  <p class="text-muted text-truncate mb-0">45 Files</p>
                </div>

                <div class="ms-2">
                  <p class="text-muted">4.1 GB</p>
                </div>
              </div>
            </div>
          </a>
        </div>

        <div class="card border shadow-none mb-2">
          <a href="javascript: void(0);" class="text-body">
            <div class="p-2">
              <div class="d-flex">
                <div class="avatar-xs align-self-center me-2">
                  <div class="avatar-title rounded bg-transparent text-info font-size-20">
                    <i class="mdi mdi-music"></i>
                  </div>
                </div>

                <div class="overflow-hidden me-auto">
                  <h5 class="font-size-13 text-truncate mb-1">Music</h5>
                  <p class="text-muted text-truncate mb-0">21 Files</p>
                </div>

                <div class="ms-2">
                  <p class="text-muted">3.2 GB</p>
                </div>
              </div>
            </div>
          </a>
        </div>

        <div class="card border shadow-none mb-2">
          <a href="javascript: void(0);" class="text-body">
            <div class="p-2">
              <div class="d-flex">
                <div class="avatar-xs align-self-center me-2">
                  <div class="avatar-title rounded bg-transparent text-primary font-size-20">
                    <i class="mdi mdi-file-document"></i>
                  </div>
                </div>

                <div class="overflow-hidden me-auto">
                  <h5 class="font-size-13 text-truncate mb-1">Document</h5>
                  <p class="text-muted text-truncate mb-0">21 Files</p>
                </div>

                <div class="ms-2">
                  <p class="text-muted">2 GB</p>
                </div>
              </div>
            </div>
          </a>
        </div>

        <div class="card border shadow-none">
          <a href="javascript: void(0);" class="text-body">
            <div class="p-2">
              <div class="d-flex">
                <div class="avatar-xs align-self-center me-2">
                  <div class="avatar-title rounded bg-transparent text-warning font-size-20">
                    <i class="mdi mdi-folder"></i>
                  </div>
                </div>

                <div class="overflow-hidden me-auto">
                  <h5 class="font-size-13 text-truncate mb-1">Others</h5>
                  <p class="text-muted text-truncate mb-0">20 Files</p>
                </div>

                <div class="ms-2">
                  <p class="text-muted">1.4 GB</p>
                </div>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End cloud -->



<!-- Create task -->
<div class="row" id="CreateTask" name="CreateTask">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title mb-4">Job Management</h4>
        <form class="outer-repeater" action="{{route('save-job-management')}}" method="post" enctype="multipart/form-data">
          @csrf
          <div   class="outer">
            <div   class="outer">
              <div class="form-group row mb-4">
                <label for="taskname" class="col-form-label col-lg-2">Task Name</label>
                <div class="col-lg-10">
                  <input id="taskname" name="taskname" required type="text" class="form-control" placeholder="Enter Task Name...">
                </div>
              </div>
              <div class="form-group row mb-4">
                <label class="col-form-label col-lg-2">Task Description</label>
                <div class="col-lg-10">
                  <textarea id="taskdesc-editor" name="task_description"></textarea>
                </div>
              </div>

              <div class="form-group row mb-4">
                <label class="col-form-label col-lg-2">Task Date</label>
                <div class="col-lg-10">
                  <div class="input-daterange input-group" data-provide="datepicker">
                    <input type="text" class="form-control" placeholder="Start Date" required name="start_date" />
                    <input type="text" class="form-control" placeholder="End Date" required name="end_date" />
                  </div>
                </div>
              </div>

              <div class="mb-4">
                <div class="inner-repeater form-group mb-0 row">
                  <label class="col-form-label col-lg-2">Add Team Member</label>
                  <div class=" col-lg-10 ms-md-auto">
                    <div class="mb-3 row align-items-center add-member-div">
                      <div class="col-md-6">
                        <input type="text" class=" form-control"  name="team_member_name[]" placeholder="Enter Name..."/>
                      </div>
                      <div class="col-md-4">
                        <div class="mt-4 mt-md-0">
                          <input class="form-control" type="file"  name="team_member_avatar[]">
                        </div>
                      </div>
                      <div class="col-md-2">
                        <div class="mt-2 mt-md-0 d-grid">
                          <input type="button" class="btn btn-primary dltBtn" value="Delete" onclick="dltDiv(this)" />
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
                <div class="row justify-content-end">
                  <div class="col-lg-10">
                    <input  type="button" class="btn btn-success addBtn" value="Add Member"/>
                  </div>
                </div>
              </div>
              <div class="form-group row mb-4">
                <label for="taskbudget" class="col-form-label col-lg-2">Budget</label>
                <div class="col-lg-10">
                  <input id="taskbudget" name="taskbudget" required type="text" placeholder="Enter Task Budget..." class="form-control">
                </div>
              </div>
            </div>
          </div>
          
          <div class="row justify-content-end">
            <div class="col-lg-10">
              <button type="submit" class="btn btn-primary">Create Task</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- End create task -->

<div class="row">
  <div class="col-md-12">
    <div class="card">
      <div class="card-body">
        <div class="accordion accordion-flush" id="accordionFlushExample">
          @foreach($data['task_management'] as $task_management)

          <div class="accordion-item">
            <h2 class="accordion-header" id="flush-headingTwo">
              <button class="accordion-button fw-medium collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-{{$task_management->id}}" aria-expanded="false" aria-controls="flush-{{$task_management->id}}">
                {{$task_management->task_name}}
              </button>
            </h2>
            <div id="flush-{{$task_management->id}}" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
              <div class="accordion-body text-muted">
                <div class="row">
                  <div class="col-md-4">
                    <p><b>Start Date: </b> {{$task_management->start_date}} </p>
                  </div>
                  <div class="col-md-4">
                    <p><b>End Date: </b> {{$task_management->end_date}} </p>
                  </div>
                  <div class="col-md-4">
                    <p><b>Budget: </b> {{$task_management->budget}} </p>
                  </div>
                  <div class="col-md-12">
                    <h5>Description</h5>
                    <p>
                      {!!$task_management->task_description!!}
                    </p>
                  </div>
                  <div class="col-md-12">
                    <h5>Team Members</h5>

                    <div class="row">
                      @foreach($task_management->team_members as $team)
                      <div class="col-md-4">
                        <p> <img src="{{asset('public/assets/images/users/'.$team->team_member_avatar)}}" alt="" class="rounded-circle avatar-xs"> <b class="mx-2">{{$team->team_member_name}}</b></p>
                      </div>
                      @endforeach
                    </div>


                  </div>
                </div>
              </div>
            </div>
          </div>

          @endforeach

        </div>
      </div>
    </div>
  </div>
</div>

<!-- Task list -->

<!-- End task list -->

<!-- Table -->

<div class="row" id="Tables" name="Tables">
  <div class="col-12">
    <div class="card">
      <div class="col-12" style="text-align: right;padding: 10px;">
        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="addColumn('demoA')">
          Add Column
        </button>
        
        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="deleteColumn('demoA')">
          Delete Column
        </button>
      </div>
      <div class="card-body">

        <h4 class="card-title">Logic Table</h4>
        <p class="card-title-desc"></p>
        <form method="POST" action="{{ route('saveData') }}">
          @csrf
          
          <div class="table-responsive" >
            <table class="table table-editable table-nowrap align-middle table-edits" id="demoA">
              <tbody>
                <tr id="headingz">
                  @if ($column_count > 0)
                  
                  @for($i = 0; $i < $column_count; $i++)
                  <td><input class="form-control custom-input t-heading" type="text" name="heading[]" value="{{ $data['table_data']['heading'][$i] }}"></td>
                  @endfor
                  @else
                  <td><input class="form-control custom-input t-heading" type="text" name="heading[]" value="ID"></td>
                  <td><input class="form-control custom-input t-heading" type="text" name="heading[]" value="Name"></td>
                  <td><input class="form-control custom-input t-heading" type="text" name="heading[]" value="Age"></td>
                  <td><input class="form-control custom-input t-heading" type="text" name="heading[]" value="Gender"></td>
                  <td><input class="form-control custom-input t-heading" type="text" name="heading[]" value="Notes"></td>
                  @endif
                  
                  <td>
                    

                  </td>
                </tr>
              <!-- </thead>
                <tbody> -->
                  @if ($row_count > 0)


                  @for($i = 0; $i < $row_count; $i++)


                  <tr id="row">
                    @for($j = 1; $j<= $column_count; $j++)

                    <td>
                      <input type="text" name="field{{ $j }}[]" class="form-control custom-input" value="{{ $data['table_data']['field'.$j][$i] }}">
                    </td>
                    @endfor

                    <!-- <td>
                      <button type="button" class="btn btn-outline-secondary btn-sm" onclick="addRow(this)">
                        <i class="fas fa-plus"></i>
                      </button>
                      <button type="button" class="btn btn-outline-secondary btn-sm" onclick="deleteRow(this)">
                        <i class="fas fa-trash"></i>
                      </button>
                    </td> -->

                  </tr>
                  @endfor
                  @else
                  <tr id="row">
                    <td>
                      <input type="text" name="field1[]" class="form-control custom-input" value="1">
                    </td>
                    <td>
                      <input type="text" name="field2[]" class="form-control custom-input" value="David McHenry">
                    </td>
                    <td>
                      <input type="text" name="field3[]" class="form-control custom-input" value="24">
                    </td>
                    <td>
                      <input type="text" name="field4[]" class="form-control custom-input" value="Male">
                    </td>
                    <td>
                      <textarea class="form-control custom-input" name="field5[]"></textarea>
                    </td>
                    <!-- <td>
                      <button type="button" class="btn btn-outline-secondary btn-sm" onclick="addRow(this)">
                        <i class="fas fa-plus"></i>
                      </button>
                      <button type="button" class="btn btn-outline-secondary btn-sm" onclick="deleteRow(this)">
                        <i class="fas fa-trash"></i>
                      </button>
                    </td> -->
                  </tr>
                  @endif


                </tbody>
              </table>
              <button type="button" class="btn btn-outline-secondary btn-sm" onclick="addRow(this)">
                Add Row
              </button>
              <button type="button" class="btn btn-outline-secondary btn-sm" onclick="addRow(this)">
                Delete Row
              </button>
              <button type="submit" class="btn btn-primary" style="float:right;">Save</button>
            </div>
          </form>
        </div>
      </div>
    </div> 
  </div> 

  <!-- End table -->


</div> 
@endsection

@section('scripts')
<script src="{{asset('assets/js/timer.js')}}"></script>
<!--tinymce js-->
<script src="{{asset('assets/libs/tinymce/tinymce.min.js')}}"></script>
<!-- init js -->
<script src="{{asset('assets/js/pages/form-editor.init.js')}}"></script>

<script src="{{asset('assets/libs/datatables.net/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js')}}"></script>
<!-- <script src="{{asset('assets/js/pages/datatables.init.js')}}"></script>  -->

<!-- Calnder js -->
<script src="https://uicdn.toast.com/tui.code-snippet/latest/tui-code-snippet.min.js"></script>
<script src="{{asset('assets/libs/tui-dom/tui-dom.min.js')}}"></script>
<script src="{{asset('assets/libs/tui-time-picker/tui-time-picker.min.js')}}"></script>
<script src="{{asset('assets/libs/tui-date-picker/tui-date-picker.min.js')}}"></script>
<script src="{{asset('assets/libs//moment/min/moment.min.js')}}"></script>
<script src="{{asset('assets/libs/chance/chance.min.js')}}"></script>
<script src="{{asset('assets/libs/tui-calendar/tui-calendar.min.js')}}"></script>
<script src="{{asset('assets/js/pages/calendars.js')}}"></script>
<script src="{{asset('assets/js/pages/schedules.js')}}"></script>
<script src="{{asset('assets/js/pages/calendar.init.js')}}"></script>

<!-- file-manager js -->
<script src="{{asset('assets/libs/apexcharts/apexcharts.min.js')}}"></script>
<script src="{{asset('assets/js/pages/file-manager.init.js')}}"></script>

<!-- Create project js -->
<script src="{{asset('assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js')}}"></script>
<script src="{{asset('assets/libs/dropzone/min/dropzone.min.js')}}"></script>

<!-- Create task -->
<script src="{{asset('assets/libs/tinymce/tinymce.min.js')}}"></script>
<script src="{{asset('assets/libs/jquery.repeater/jquery.repeater.min.js')}}"></script>
<script src="{{asset('assets/js/pages/task-create.init.js')}}"></script>

<!-- Task List -->
<script src="{{asset('assets/js/pages/tasklist.init.js')}}"></script>

<!-- Editable table -->
<script src="{{asset('assets/libs/table-edits/build/table-edits.min.js')}}"></script>
<script src="{{asset('assets/js/pages/table-editable.int.js')}}"></script> 

<script type="text/javascript">
  $(document).ready(function(){
    $('.show-user').click(function(){
      $('#d_first_name').html($(this).data(''));
      $('#d_last_name').html($(this).data(''));
      $('#d_email').html($(this).data(''));
      $('#d_username').html($(this).data(''));
      $('#d_total_payment').html($(this).data(''));
      $('#d_company_name').html($(this).data(''));

      $('#d_first_name').html($(this).data('first_name'));
      $('#d_last_name').html($(this).data('last_name'));
      $('#d_email').html($(this).data('email'));
      $('#d_username').html($(this).data('username'));
      $('#d_total_payment').html($(this).data('payment_paid'));
      $('#d_company_name').html($(this).data('company_name'));

      $('.bs-example-modal-lg2').modal('show');

      // alert(first_name);
    });
  });
  var fieldHTML = '<div class=" col-lg-10 ms-md-auto"><div class="mb-3 row align-items-center add-member-div"><div class="col-md-6"><input type="text" class=" form-control"  name="team_member_name[]" placeholder="Enter Name..."/></div><div class="col-md-4"><div class="mt-4 mt-md-0"><input class="form-control" type="file"  name="team_member_avatar[]"></div></div><div class="col-md-2"><div class="mt-2 mt-md-0 d-grid"><input type="button" class="btn btn-primary" value="Delete" onclick="dltDiv(this)" /></div></div></div></div>';

  var addButton = $('.addBtn');
  var wrapper = $('.inner-repeater');

  $(addButton).click(function(){
    $(wrapper).append(fieldHTML);

  });
  
  function dltDiv(div) {
    $(div).closest('.add-member-div').remove();
  }



  $('.add_btn').click(function(){
    // var tr = this.closest('tr');
    // var tr_position = tr.rowIndex;
    
    // var html = '<tr><td><input type="text" name="" class="form-control custom-input"></td><td><input type="text" name="" class="form-control custom-input"></td><td><input type="text" name="" class="form-control custom-input"></td><td><input type="text" name="" class="form-control custom-input"></td><td><input type="button" value="Add Bottom" class="add_btn" onclick=addRow() /></td></tr>';
    // $("#demoA tbody tr").eq(tr_position - 1).after(html);
  });
  function addRow (this1) {

    var tr = this1.closest('tr');
    var tr_position = tr.rowIndex;
    var row = document.getElementById('demoA').tBodies[0];
    
    var col_number = document.getElementById('demoA').rows[0].cells.length;

  
    var html = '<tr>';
    for(var i = 0; i < col_number-1; i++){

      html += '<td><input type="text" name="field'+i+'[]" class="form-control custom-input"></td>';
    }
    html += '<td><button type="button" class="btn btn-outline-secondary btn-sm" onclick="addRow(this)"><i class="fas fa-plus"></i></button><button type="button" class="btn btn-outline-secondary btn-sm" onclick="deleteRow(this)"><i class="fas fa-trash"></i></button></td>';
    html += '</tr>';
    $("#demoA tbody tr").eq(tr_position - 1).after(html);
  }

  function deleteRow(this1) {
    var confirm = window.confirm('You want to delete this?');
    if(confirm)
      this1.closest('tr').remove();
  }



  function addColumn(tblId)
  {

 // var tblHeadObj = document.getElementById(tblId).tHead;
  // alert(document.getElementById(tblId).rows[0].cells.length);
  var col_number = document.getElementById(tblId).rows[0].cells.length;
  


 var tblBodyObj = document.getElementById(tblId).tBodies[0];

 var newCell = tblBodyObj.rows[0].insertCell(col_number-1);
 newCell.innerHTML = '<textarea class="form-control custom-input t-heading" name="field'+col_number +'[]"></textarea>';

 for (var i=1; i<tblBodyObj.rows.length; i++) {
   var newCell = tblBodyObj.rows[i].insertCell(col_number-1);
   newCell.innerHTML = '<textarea class="form-control custom-input" name="field'+col_number +'[]"></textarea>';
 }
 
}

function deleteColumn(tblId)
{
  var col_number = document.getElementById(tblId).rows[0].cells.length;
  var allRows = document.getElementById(tblId).rows;
  for (var i=0; i<allRows.length; i++) {
    if (allRows[i].cells.length > 2) {
     allRows[i].deleteCell(col_number-2);
   }
 }
}

</script>
@endsection

