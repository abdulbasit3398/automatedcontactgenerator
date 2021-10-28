@extends('layouts.user')

@section('custom-css')

@endsection

@section('page-content')
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
      	<h5 class="modal-title" id="myModalLabel">Email Body</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body upload-modal-body">
         <div id="message-show">
         	
         </div>
        
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>


<div class="container-fluid">

	
	<div class="row justify-content-center">
		<div class="col-lg-12">
			<div class="text-center mb-5">
				@if(\Session::has('success'))
				<div class="alert alert-success alert-dismissible fade show" role="alert">
					{!! \Session::get('success') !!}
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
				@endif

				@if ($errors->any())
			     @foreach ($errors->all() as $error)
			     <div class="alert alert-danger alert-dismissible fade show" role="alert">
							{{$error}}
							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
			     @endforeach
			 @endif

				@if(\Session::has('error'))
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
					{!! \Session::get('error') !!}
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
				@endif
			</div>
		</div>
	</div>
	


	<div class="row">
		<div class="col-12">
			<div class="page-title-box d-sm-flex align-items-center justify-content-between">
				<h4 class="mb-sm-0 font-size-18">Send Email</h4>

				<div class="page-title-right">
					 
				</div>

			</div>
		</div>
	</div>
	<div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-body">
        	<form method="post" action="{{route('send-communication-email')}}" enctype="multipart/form-data">
						@csrf        	
	          <div class="mb-3 row">
					    <label for="example-text-input" class="col-md-2 col-form-label">Recipient*</label>
					    <div class="col-md-10">
					      <select class="form-control" name="sms_recipient_contact" id="sms_recipient_contact" required>
					      	<option value="">Select Recipient</option>
					      	@foreach($data['contacts'] as $contact)
					      	@if($contact->contact_email != '')
					      		<option value="{{$contact->id}}">{{$contact->contact_name.'  '.$contact->contact_email}}</option>
					      	@endif
					      	@endforeach
					      	<option value="other">To other mail address</option>
					      </select>
					    </div>
					  </div>

					  <div class="mb-3 row new_number" style="display:none;">
					    <label for="example-text-input" class="col-md-2 col-form-label">Type Email</label>
					    <div class="col-md-10">
	              <input type="email" class="form-control" name="sms_recipient_email" id="sms_recipient_email">
					    </div>
					  </div>

					  <div class="mb-3 row">
					    <label for="example-text-input" class="col-md-2 col-form-label">Subject</label>
					    <div class="col-md-10">
					    	<input type="text" name="mail_subject" class="form-control" required>
					    </div>
					  </div>

					  <div class="mb-3 row">
					    <label for="example-text-input" class="col-md-2 col-form-label">Message</label>
					    <div class="col-md-10">
					    	<textarea id="elm1" name="message" rows="10">{!! isset($notes->notes) ? $notes->notes : '' !!}</textarea>
					    </div>
					  </div>

					  

					  <div class="mb-3 row">
					    <div class="col-md-10">
					    	<button type="submit" class="btn btn-primary w-md">Send</button>
					    </div>
					  </div>
				  </form>
        </div>
      </div>
    </div>
  </div>                           

  <div class="row">
    <div class="col-lg-12" style="padding: 0;">
      <div class="card">
        <div class="card-body">
          
          <div class="table-responsive">
            <table class="table align-middle table-nowrap table-hover" id="datatable">
              <thead class="table-light">
                <tr>
                  <th scope="col">Date</th>
                  <th scope="col">Email</th>
                  <th scope="col">Subject</th>
                  <th scope="col">Message</th>
                  <th scope="col"></th>
                </tr>
              </thead>
              <tbody>
               @foreach($data['history'] as $history)
               <tr>
                <td>
                  {{date('d-m-Y H:i',strtotime($history->created_at))}}
                </td>
                <td>
                  {{$history->contact->contact_email}}
                </td>
                <td>{{$history->subject}}</td>
                <td>
                	<a href="#" class="btn btn-primary view-message" data-bs-toggle="modal" data-message="{!!$history->message!!}" data-bs-target=".bs-example-modal-lg"><i class="fas fa-eye"></i></a>
                	
                </td>
                 
                <td>
                	@if($history->send_receive == 'send')
                   <span class="badge badge-pill badge-soft-success font-size-11">{{ucfirst($history->send_receive)}}</span>
                  @else
                  	<span class="badge badge-pill badge-soft-warning font-size-11">{{ucfirst($history->send_receive)}}</span>
                  @endif
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
@endsection

@section('scripts')
<script src="{{asset('assets/libs/tinymce/tinymce.min.js')}}"></script>
<script src="{{asset('assets/js/pages/form-editor.init.js')}}"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$('#sms_recipient_contact').change(function(){
			var number = $(this).val();
			if(number == 'other'){
				$('.new_number').attr('required','true');
				$('.new_number').show();
			}
			else{
				$('#sms_recipient_contact').attr('required','false');
				$('.new_number').hide();
			}
		});

		$('.view-message').click(function(){

			var message = $(this).data('message');
     	$(".modal-body #message-show").html(message);

		});

	});
</script>

@endsection