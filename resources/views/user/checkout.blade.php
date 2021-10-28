@extends('layouts.user')

@section('custom-css')

@endsection

@section('page-content')

<div class="container-fluid">

	<!-- start page title -->
    <div class="checkout-tabs">
	    <div class="row">
		<div class="col-12">
			<div class="page-title-box d-sm-flex align-items-center justify-content-between">
				<h4 class="mb-sm-0 font-size-18">Checkout</h4>

				<div class="page-title-right">

				</div>

			</div>
		</div>
	    </div>
	<!-- end page title -->



	 <div class="row">
        
        <div class="col-xl-2 col-sm-3">
            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                {{-- <a class="nav-link active" id="v-pills-shipping-tab" data-bs-toggle="pill" href="#v-pills-shipping" role="tab" aria-controls="v-pills-shipping" aria-selected="true">
                    <i class= "bx bxs-truck d-block check-nav-icon mt-4 mb-2"></i>
                    <p class="fw-bold mb-4">Shipping Info</p>
                </a> --}}
                
                <a class="nav-link active " id="v-pills-payment-tab" data-bs-toggle="pill" href="#v-pills-payment" role="tab" aria-controls="v-pills-payment" aria-selected="false"> 
                    <i class= "bx bx-money d-block check-nav-icon mt-4 mb-2"></i>
                    <p class="fw-bold mb-4">Payment Info</p>
                </a>
                <a class="nav-link " id="v-pills-confir-tab" data-bs-toggle="pill" href="#v-pills-confir" role="tab" aria-controls="v-pills-confir" aria-selected="false">
                    <i class= "bx bx-badge-check d-block check-nav-icon mt-4 mb-2"></i>
                    <p class="fw-bold mb-4">Confirmation</p>
                </a>
            </div>
        </div>
        <div class="col-xl-10 col-sm-9">
            <div class="alert alert-danger error-alert" role="alert" style="display: none;">

            </div>
         <form action="{{route('subscribe-package')}}" method="post" class="require-validation" data-cc-on-file="false" data-stripe-publishable-key="{{ env('STRIPE_KEY') }}">
                 @csrf
            <div class="card">
                <div class="card-body">
                    <div class="tab-content" id="v-pills-tabContent">
                        {{-- <div class="tab-pane fade show active" id="v-pills-shipping" role="tabpanel" aria-labelledby="v-pills-shipping-tab">
                            <div>
                                <h4 class="card-title">Shipping information</h4>
                                <p class="card-title-desc">Fill all information below</p>
                                <form>
                                    <div class="form-group row mb-4">
                                        <label for="billing-name" class="col-md-2 col-form-label">Name</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control" id="billing-name" placeholder="Enter your name">
                                        </div>
                                    </div>
                                    <div class="form-group row mb-4">
                                        <label for="billing-email-address" class="col-md-2 col-form-label">Email Address</label>
                                        <div class="col-md-10">
                                            <input type="email" class="form-control" id="billing-email-address" placeholder="Enter your email">
                                        </div>
                                    </div>
                                    <div class="form-group row mb-4">
                                        <label for="billing-phone" class="col-md-2 col-form-label">Phone</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control" id="billing-phone" placeholder="Enter your Phone no.">
                                        </div>
                                    </div>
                                    <div class="form-group row mb-4">
                                        <label for="billing-address" class="col-md-2 col-form-label">Address</label>
                                        <div class="col-md-10">
                                            <textarea class="form-control" id="billing-address" rows="3" placeholder="Enter full address"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row mb-4">
                                        <label class="col-md-2 col-form-label">Country</label>
                                        <div class="col-md-10">
                                            <select class="form-control select2" title="Country">
                                                <option value="0">Select Country</option>
                                                <option value="AF">Afghanistan</option>
                                                <option value="AL">Albania</option>
                                                <option value="DZ">Algeria</option>
                                                <option value="AS">American Samoa</option>
                                                <option value="AD">Andorra</option>
                                                <option value="AO">Angola</option>
                                                <option value="AI">Anguilla</option>
                                                <option value="AQ">Antarctica</option>
                                                <option value="AR">Argentina</option>
                                                <option value="AM">Armenia</option>
                                                <option value="AW">Aruba</option>
                                                <option value="AU">Australia</option>
                                                <option value="AT">Austria</option>
                                                <option value="AZ">Azerbaijan</option>
                                                <option value="BS">Bahamas</option>
                                                <option value="BH">Bahrain</option>
                                                <option value="BD">Bangladesh</option>
                                                <option value="BB">Barbados</option>
                                                <option value="BY">Belarus</option>
                                                <option value="BE">Belgium</option>
                                                <option value="BZ">Belize</option>
                                                <option value="BJ">Benin</option>
                                                <option value="BM">Bermuda</option>
                                                <option value="BT">Bhutan</option>
                                                <option value="BO">Bolivia</option>
                                                <option value="BW">Botswana</option>
                                                <option value="BV">Bouvet Island</option>
                                                <option value="BR">Brazil</option>
                                                <option value="BN">Brunei Darussalam</option>
                                                <option value="BG">Bulgaria</option>
                                                <option value="BF">Burkina Faso</option>
                                                <option value="BI">Burundi</option>
                                                <option value="KH">Cambodia</option>
                                                <option value="CM">Cameroon</option>
                                                <option value="CA">Canada</option>
                                                <option value="CV">Cape Verde</option>
                                                <option value="KY">Cayman Islands</option>
                                                <option value="CF">Central African Republic</option>
                                                <option value="TD">Chad</option>
                                                <option value="CL">Chile</option>
                                                <option value="CN">China</option>
                                                <option value="CX">Christmas Island</option>
                                                <option value="CC">Cocos (Keeling) Islands</option>
                                                <option value="CO">Colombia</option>
                                                <option value="KM">Comoros</option>
                                                <option value="CG">Congo</option>
                                                <option value="CK">Cook Islands</option>
                                                <option value="CR">Costa Rica</option>
                                                <option value="CI">Cote d'Ivoire</option>
                                                <option value="HR">Croatia (Hrvatska)</option>
                                                <option value="CU">Cuba</option>
                                                <option value="CY">Cyprus</option>
                                                <option value="CZ">Czech Republic</option>
                                                <option value="DK">Denmark</option>
                                                <option value="DJ">Djibouti</option>
                                                <option value="DM">Dominica</option>
                                                <option value="DO">Dominican Republic</option>
                                                <option value="EC">Ecuador</option>
                                                <option value="EG">Egypt</option>
                                                <option value="SV">El Salvador</option>
                                                <option value="GQ">Equatorial Guinea</option>
                                                <option value="ER">Eritrea</option>
                                                <option value="EE">Estonia</option>
                                                <option value="ET">Ethiopia</option>
                                                <option value="FK">Falkland Islands (Malvinas)</option>
                                                <option value="FO">Faroe Islands</option>
                                                <option value="FJ">Fiji</option>
                                                <option value="FI">Finland</option>
                                                <option value="FR">France</option>
                                                <option value="GF">French Guiana</option>
                                                <option value="PF">French Polynesia</option>
                                                <option value="GA">Gabon</option>
                                                <option value="GM">Gambia</option>
                                                <option value="GE">Georgia</option>
                                                <option value="DE">Germany</option>
                                                <option value="GH">Ghana</option>
                                                <option value="GI">Gibraltar</option>
                                                <option value="GR">Greece</option>
                                                <option value="GL">Greenland</option>
                                                <option value="GD">Grenada</option>
                                                <option value="GP">Guadeloupe</option>
                                                <option value="GU">Guam</option>
                                                <option value="GT">Guatemala</option>
                                                <option value="GN">Guinea</option>
                                                <option value="GW">Guinea-Bissau</option>
                                                <option value="GY">Guyana</option>
                                                <option value="HT">Haiti</option>
                                                <option value="HN">Honduras</option>
                                                <option value="HK">Hong Kong</option>
                                                <option value="HU">Hungary</option>
                                                <option value="IS">Iceland</option>
                                                <option value="IN">India</option>
                                                <option value="ID">Indonesia</option>
                                                <option value="IQ">Iraq</option>
                                                <option value="IE">Ireland</option>
                                                <option value="IL">Israel</option>
                                                <option value="IT">Italy</option>
                                                <option value="JM">Jamaica</option>
                                                <option value="JP">Japan</option>
                                                <option value="JO">Jordan</option>
                                                <option value="KZ">Kazakhstan</option>
                                                <option value="KE">Kenya</option>
                                                <option value="KI">Kiribati</option>
                                                <option value="KR">Korea, Republic of</option>
                                                <option value="KW">Kuwait</option>
                                                <option value="KG">Kyrgyzstan</option>
                                                <option value="LV">Latvia</option>
                                                <option value="LB">Lebanon</option>
                                                <option value="LS">Lesotho</option>
                                                <option value="LR">Liberia</option>
                                                <option value="LY">Libyan Arab Jamahiriya</option>
                                                <option value="LI">Liechtenstein</option>
                                                <option value="LT">Lithuania</option>
                                                <option value="LU">Luxembourg</option>
                                                <option value="MO">Macau</option>
                                                <option value="MG">Madagascar</option>
                                                <option value="MW">Malawi</option>
                                                <option value="MY">Malaysia</option>
                                                <option value="MV">Maldives</option>
                                                <option value="ML">Mali</option>
                                                <option value="MT">Malta</option>
                                                <option value="MH">Marshall Islands</option>
                                                <option value="MQ">Martinique</option>
                                                <option value="MR">Mauritania</option>
                                                <option value="MU">Mauritius</option>
                                                <option value="YT">Mayotte</option>
                                                <option value="MX">Mexico</option>
                                                <option value="MD">Moldova, Republic of</option>
                                                <option value="MC">Monaco</option>
                                                <option value="MN">Mongolia</option>
                                                <option value="MS">Montserrat</option>
                                                <option value="MA">Morocco</option>
                                                <option value="MZ">Mozambique</option>
                                                <option value="MM">Myanmar</option>
                                                <option value="NA">Namibia</option>
                                                <option value="NR">Nauru</option>
                                                <option value="NP">Nepal</option>
                                                <option value="NL">Netherlands</option>
                                                <option value="AN">Netherlands Antilles</option>
                                                <option value="NC">New Caledonia</option>
                                                <option value="NZ">New Zealand</option>
                                                <option value="NI">Nicaragua</option>
                                                <option value="NE">Niger</option>
                                                <option value="NG">Nigeria</option>
                                                <option value="NU">Niue</option>
                                                <option value="NF">Norfolk Island</option>
                                                <option value="MP">Northern Mariana Islands</option>
                                                <option value="NO">Norway</option>
                                                <option value="OM">Oman</option>
                                                <option value="PW">Palau</option>
                                                <option value="PA">Panama</option>
                                                <option value="PG">Papua New Guinea</option>
                                                <option value="PY">Paraguay</option>
                                                <option value="PE">Peru</option>
                                                <option value="PH">Philippines</option>
                                                <option value="PN">Pitcairn</option>
                                                <option value="PL">Poland</option>
                                                <option value="PT">Portugal</option>
                                                <option value="PR">Puerto Rico</option>
                                                <option value="QA">Qatar</option>
                                                <option value="RE">Reunion</option>
                                                <option value="RO">Romania</option>
                                                <option value="RU">Russian Federation</option>
                                                <option value="RW">Rwanda</option>
                                                <option value="KN">Saint Kitts and Nevis</option>
                                                <option value="LC">Saint LUCIA</option>
                                                <option value="WS">Samoa</option>
                                                <option value="SM">San Marino</option>
                                                <option value="ST">Sao Tome and Principe</option>
                                                <option value="SA">Saudi Arabia</option>
                                                <option value="SN">Senegal</option>
                                                <option value="SC">Seychelles</option>
                                                <option value="SL">Sierra Leone</option>
                                                <option value="SG">Singapore</option>
                                                <option value="SK">Slovakia (Slovak Republic)</option>
                                                <option value="SI">Slovenia</option>
                                                <option value="SB">Solomon Islands</option>
                                                <option value="SO">Somalia</option>
                                                <option value="ZA">South Africa</option>
                                                <option value="ES">Spain</option>
                                                <option value="LK">Sri Lanka</option>
                                                <option value="SH">St. Helena</option>
                                                <option value="PM">St. Pierre and Miquelon</option>
                                                <option value="SD">Sudan</option>
                                                <option value="SR">Suriname</option>
                                                <option value="SZ">Swaziland</option>
                                                <option value="SE">Sweden</option>
                                                <option value="CH">Switzerland</option>
                                                <option value="SY">Syrian Arab Republic</option>
                                                <option value="TW">Taiwan, Province of China</option>
                                                <option value="TJ">Tajikistan</option>
                                                <option value="TZ">Tanzania, United Republic of</option>
                                                <option value="TH">Thailand</option>
                                                <option value="TG">Togo</option>
                                                <option value="TK">Tokelau</option>
                                                <option value="TO">Tonga</option>
                                                <option value="TT">Trinidad and Tobago</option>
                                                <option value="TN">Tunisia</option>
                                                <option value="TR">Turkey</option>
                                                <option value="TM">Turkmenistan</option>
                                                <option value="TC">Turks and Caicos Islands</option>
                                                <option value="TV">Tuvalu</option>
                                                <option value="UG">Uganda</option>
                                                <option value="UA">Ukraine</option>
                                                <option value="AE">United Arab Emirates</option>
                                                <option value="GB">United Kingdom</option>
                                                <option value="US">United States</option>
                                                <option value="UY">Uruguay</option>
                                                <option value="UZ">Uzbekistan</option>
                                                <option value="VU">Vanuatu</option>
                                                <option value="VE">Venezuela</option>
                                                <option value="VN">Viet Nam</option>
                                                <option value="VG">Virgin Islands (British)</option>
                                                <option value="VI">Virgin Islands (U.S.)</option>
                                                <option value="WF">Wallis and Futuna Islands</option>
                                                <option value="EH">Western Sahara</option>
                                                <option value="YE">Yemen</option>
                                                <option value="ZM">Zambia</option>
                                                <option value="ZW">Zimbabwe</option>                                    
                                            </select>
                                        </div>
                                    </div>
                            
                                    <div class="form-group row mb-4">
                                        <label class="col-md-2 col-form-label">States</label>
                                        <div class="col-md-10">
                                            <select class="form-control select2" title="Country">
                                                <option value="0">Select States</option>
                                                <option value="AL">Alabama</option>
                                                <option value="AK">Alaska</option>
                                                <option value="AZ">Arizona</option>
                                                <option value="AR">Arkansas</option>
                                                <option value="CA">California</option>
                                                <option value="CO">Colorado</option>
                                                <option value="DE">Delaware</option>
                                                <option value="Fl"> Florida</option>
                                                <option value="GA">Georgia</option>
                                                <option value="HI">Hawaii</option>
                                                <option value="MT">Montana</option>
                                                <option value="NV">Nevada</option>
                                                <option value="NM">New Mexico</option>
                                                <option value="NY">New York</option>
                                                <option value="NC">North Dakota</option>
                                                <option value="TX">Texas</option>
                                                <option value="VA">Virginia</option>
                                                <option value="WI">Wisconsin</option>
                                                <option value="WY">Wyoming</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row mb-0">
                                        <label for="example-textarea" class="col-md-2 col-form-label">Order Notes:</label>
                                        <div class="col-md-10">
                                            <textarea class="form-control" id="example-textarea" rows="3" placeholder="Write some note.."></textarea>
                                        </div>
                                    </div>
                                    
                                </form>
                            </div>
                        </div> --}}
                        <div class="tab-pane fade  show active" id="v-pills-payment" role="tabpanel" aria-labelledby="v-pills-payment-tab">
                            <div>
                                    {{-- <h4 class="card-title">Payment information</h4>
                                    <p class="card-title-desc">Fill all information below</p>

                                    <div>
                                        <div class="form-check form-check-inline font-size-16">
                                            <input class="form-check-input" type="radio" name="paymentoptionsRadio" id="paymentoptionsRadio1" checked>
                                            <label class="form-check-label font-size-13" for="paymentoptionsRadio1"><i class="fab fa-cc-mastercard me-1 font-size-20 align-top"></i> Credit / Debit Card</label>
                                        </div>
                                        <div class="form-check form-check-inline font-size-16">
                                            <input class="form-check-input" type="radio" name="paymentoptionsRadio" id="paymentoptionsRadio2">
                                            <label class="form-check-label font-size-13" for="paymentoptionsRadio2"><i class="fab fa-cc-paypal me-1 font-size-20 align-top"></i> Paypal</label>
                                        </div>
                                        <div class="form-check form-check-inline font-size-16">
                                            <input class="form-check-input" type="radio" name="paymentoptionsRadio" id="paymentoptionsRadio3">
                                            <label class="form-check-label font-size-13" for="paymentoptionsRadio3"><i class="far fa-money-bill-alt me-1 font-size-20 align-top"></i> Cash on Delivery</label>
                                        </div>
                                    </div> --}}

                                <h5 class="mt-5 mb-3 font-size-15">For card Payment</h5>
                                <div class="p-4 border">
                                    
                                        <div class="form-group mb-0">
                                            <label for="cardnumberInput">Card Number</label>
                                            <input type="text" class="form-control  @error('card_number') is-invalid @enderror card-number" name="card_number" value="{{ old('card_number') }}" required autocomplete="card_number" autofocus placeholder="1234 1234 1234 1234" name="card_number" placeholder="0000 0000 0000 0000">
                                            @error('card_number')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                            <div class="invalid-feedback">
                                                Please Enter {{ __('Card Number') }}
                                            </div>  
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group mt-4 mb-0">
                                                    <label for="cardnameInput">Expiry Month</label>
                                                    <input type="text" class="form-control  @error('expiration_month') is-invalid @enderror card-expiry-month" name="expiration_month" value="{{ old('expiration_month') }}" required autocomplete="expiration_month" autofocus placeholder="MM" size="2" name="expiration_month" placeholder="MM">
                                                    @error('expiration_month')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                    @enderror
                                                    <div class="invalid-feedback">
                                                        Please Enter {{ __('Expiration Month') }}
                                                    </div> 
                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="form-group mt-4 mb-0">
                                                    <label for="expiration_month">Expiry Year</label>
                                                    <input type="text" class="form-control @error('expiration_year') is-invalid @enderror card-expiry-year" name="expiration_year" value="{{ old('expiration_year') }}" required autocomplete="expiration_year" autofocus placeholder="YYYY" size="4" name="expiration_year" placeholder="yyYY">
                                                    @error('expiration_year')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                    @enderror
                                                    <div class="invalid-feedback">
                                                        Please Enter {{ __('Expiration Year') }}
                                                    </div> 
                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="form-group mt-4 mb-0">
                                                    <label for="cvvcodeInput">CVV Code</label>
                                                    <input type="text" name="cvc" class="form-control @error('cvc') is-invalid @enderror card-cvc" name="cvc" value="{{ old('cvc') }}" required autocomplete="cvc" autofocus placeholder="Enter CVV Code">
                                                    @error('cvc')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                    @enderror
                                                    <div class="invalid-feedback">
                                                        Please Enter {{ __('CVC') }}
                                                    </div>  
                                                </div>
                                            </div>
                                        </div>
                                       
                                </div>
                             </div>
                        </div>
                        <div class="tab-pane fade" id="v-pills-confir" role="tabpanel" aria-labelledby="v-pills-confir-tab">
                            <div class="card shadow-none border mb-0">
                                <div class="card-body">
                                    <h4 class="card-title mb-4">Order Summary</h4>

                                    <div class="table-responsive">
                                        <table class="table align-middle mb-0 table-nowrap">
                                            <thead class="table-light">
                                            <tr>
                                                <th scope="col">Name</th>
                                                <th scope="col">Product Desc</th>
                                                <th scope="col">Price</th>
                                            </tr>
                                            </thead>
                                            <tbody> 
                                                @foreach (Cart::content() as $item)
                                                    
                                                <tr>
                                                <th scope="row">{{$item->name}}</th>
                                                <td>
                                                    <p class="text-muted mb-0">$ {{$item->price}}x {{$item->qty}}</p>
                                                </td>
                                                <td>$ {{$item->price*$item->qty}}</td>
                                            </tr>
                                            @endforeach
                        
                                            {{-- <tr>
                                                <td colspan="2">
                                                    <h6 class="m-0 text-end">Sub Total:</h6>
                                                </td>
                                                <td>
                                                    $ {{Cart::subtotal()}}
                                                </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3">
                                                        <div class="bg-primary bg-soft p-3 rounded">
                                                            <h5 class="font-size-14 text-primary mb-0"><i class="fas fa-shipping-fast me-2"></i> Shipping <span class="float-end">Free</span></h5>
                                                        </div>
                                                    </td>
                                                </tr> --}}
                                                <tr>
                                                    <td colspan="2">
                                                        <h6 class="m-0 text-end">Total:</h6>
                                                    </td>
                                                    <td>
                                                        $ {{Cart::subtotal()}}
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        
                                    </div>
                                </div>
                            </div>
                           
                        
                    </div>
                    <div class="row mt-4">
                        <div class="col-sm-6">
                            <a href="ecommerce-cart.html" class="btn text-muted d-none d-sm-inline-block btn-link">
                                <i class="mdi mdi-arrow-left me-1"></i> Back to Shopping Cart </a>
                        </div> <!-- end col -->
                        <div class="col-sm-6">
                            <div class="text-end">
                                <button type="submit" class="btn btn-success">
                                    <i class="mdi mdi-truck-fast me-1"></i> Pay </button>
                            </div>
                        </div> <!-- end col -->
                    </div>
                </div>
            </div>
               
         </form>
             <!-- end row -->
        </div>
    
	 </div>
		<!-- end row -->

	</div> <!-- container-fluid -->
	</div> <!-- container-fluid -->

@endsection


@section('scripts')
	<script type="text/javascript" src="{{asset('assets/js/tooltip.js')}}"></script>
	<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
	<script type="text/javascript">
		

		$(function() {
			var $form         = $(".require-validation");
			$('form.require-validation').bind('submit', function(e) {
				var $form         = $(".require-validation"),
				inputSelector = ['input[type=email]', 'input[type=password]',
				'input[type=text]', 'input[type=file]',
				'textarea'].join(', '),
				$inputs       = $form.find('.required').find(inputSelector),

				valid         = true;
				$('.error-alert').hide();

				$('.has-error').removeClass('has-error');
				$inputs.each(function(i, el) {
					var $input = $(el);
					if ($input.val() === '') {
						$input.parent().addClass('has-error');
						$('.error-alert').show();
						e.preventDefault();
					}
				});

				if (!$form.data('cc-on-file')) {
					e.preventDefault();
					Stripe.setPublishableKey($form.data('stripe-publishable-key'));
					Stripe.createToken({
						number: $('.card-number').val(),
						cvc: $('.card-cvc').val(),
						exp_month: $('.card-expiry-month').val(),
						exp_year: $('.card-expiry-year').val()
					}, stripeResponseHandler);
				}

			});

			function stripeResponseHandler(status, response) {
				if (response.error) {
					$('.error-alert')
					.show()
					.text(response.error.message);
					$(window).scrollTop(0);
				} else {
					var token = response['id'];
					$form.find('input[type=text]').empty();
					$form.append("<input type='hidden' name='stripeToken' value='" + token + "'/>");
					$form.get(0).submit();
				}
			}

		});
	</script>
@endsection