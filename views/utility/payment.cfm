<!---
===============================================================
FILE NAME : payment.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO ADD PAYMENT OPTIONS
DATE CREATED : 06/09/2016
TIME CREATED : 11:35AM
CREATED BY : Abhijit Mohanty
================================================================
 --->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BvYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href = "/mindkart/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href = "/mindkart/assets/css/page-stylesheet.css">
		<link rel="stylesheet" href = "/mindkart/assets/css/payment-stylesheet.css">
		<link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.payment/1.2.3/jquery.payment.min.js"></script>
		<script type="text/javascript" src="/mindkart/assets/js/payment.js"></script>
		<script type="text/javascript" src="/mindkart/assets/js/order.js"></script>
		<title>Pay</title>

<script type="text/javascript" src="https://js.stripe.com/v2/"></script>

	</head>
		<body>
		<cfinclude template = "/mindkart/views/layout/header.cfm">
		<cfinclude template = "/mindkart/views/layout/navbar.cfm">
		<cfset session.userOrderId = request.dbOperation.getUserOrderId()>

			<div class="container">
			    <div class="row">

			        <div class="col-xs-12 col-md-4 col-lg-offset-4">


			            <!-- CREDIT CARD FORM STARTS HERE -->
			            <div class="panel panel-default credit-card-box">
			                <div class="panel-heading display-table" >
			                    <div class="row display-tr" >
			                        <h3 class="panel-title display-td" >Payment Details</h3>
			                        <div class="display-td" >
			                            <img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
			                        </div>
			                    </div>
			                </div>
			                <div class="panel-body">
			                    <form role="form" id="payment-form" method="post" action="/mindkart/views/order.cfm">
			                        <div class="row">
			                            <div class="col-xs-12">
			                                <div class="form-group">
			                                    <label for="cardNumber">CARD NUMBER</label>
			                                    <div class="input-group">
			                                        <input
			                                            type="tel"
			                                            class="form-control"
			                                            name="cardNumber"
			                                            placeholder="Valid Card Number"
			                                            autocomplete="cc-number"
														maxlength="16"
			                                            required autofocus
			                                        />
			                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-xs-7 col-md-7">
			                                <div class="form-group">
			                                    <label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
			                                    <input
			                                        type="tel"
			                                        class="form-control"
			                                        name="cardExpiry"
			                                        placeholder="MM / YY"
			                                        autocomplete="cc-exp"
													maxlength="4"
			                                        required
			                                    />
			                                </div>
			                            </div>
			                            <div class="col-xs-5 col-md-5 pull-right">
			                                <div class="form-group">
			                                    <label for="cardCVC">CV CODE</label>
			                                    <input
			                                        type="tel"
			                                        class="form-control"
			                                        name="cardCVC"
			                                        placeholder="CVC"
			                                        autocomplete="cc-csc"
													maxlength="3"
			                                        required
			                                    />
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-xs-12">
			                                <div class="form-group">
			                                    <label for="couponCode">COUPON CODE</label>
			                                    <input type="text" class="form-control" name="couponCode" />
			                                </div>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-xs-12">
			                                <button class="btn btn-success btn-lg btn-block" onclick = "pushCartToDb(<cfoutput>#session.userOrderId#</cfoutput>)" type="submit" method = "post">Complete Payment</button>
			                            </div>
			                        </div>
			                        <div class="row" style="display:none;">
			                            <div class="col-xs-12">
			                                <p class="payment-errors"></p>
			                            </div>
			                        </div>
			                    </form>
			                </div>
			            </div>
			            <!-- CREDIT CARD FORM ENDS HERE -->


			        </div>


			    </div>
			</div>




				<br><br><br><br><br><br><br><br><br>
		<cfinclude template = "/mindkart/views/layout/footer.cfm">


		</body>
</html>