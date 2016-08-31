<!---
===============================================================
FILE NAME : contactus.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO SHOW CONTACT INFORMATION
DATE CREATED : 28/08/2016
TIME CREATED : 5:06PM
CREATED BY : Abhijit Mohanty
================================================================
 --->

<!DOCTYPE html>
<html>
	<head>
		<title>
			Contact Us
		</title>
			<meta charset="utf-8">
	  		<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
			<link rel="stylesheet" href = "/mindkart/assets/css/bootstrap.min.css">
			<link rel="stylesheet" href = "/mindkart/assets/css/page-stylesheet.css">
			<link rel="shortcut icon" href="/mindkart/assets/images/favicon.ico" type="image/x-icon">

	</head>
		<body>
				<cfinclude template = "/mindkart/views/layout/header.cfm">
				<cfinclude template = "/mindkart/views/layout/navbar.cfm">
				<br />
				<div class="container" id = "placeCenter">
					  <div class="row">
					    <div class="col-sm-4">
					      <div class="panel panel-success">
					        <div class="panel-heading">Our Correspondence Address</div>
					        <div class="panel-body">
							<u><strong>BHUBANESWAR (EAST INDIA)</strong></u><br />
							MindKart Online Store <br />
							10th Floor, DLF Cybercity,
							Infocity Area,
							Bhubaneswar - 751024, Odisha, India. <br />
							<u><strong>NOIDA (NORTH INDIA)</strong></u><br />
							MindKart Online Store <br />
							6th & 7th Floors, Assotech One
							C-20/1/1A, Sector 62
							Noida - 201309, India<br />
							<u><strong>USA SALES OFFICE</strong></u><br />
							MindKart Online Store LLC <br />
							1890 Crooks, Suite 340
							Troy, MI - 48084
							(phone) +1 248.740.0611
							(fax)       +1 248.498.5957

							<br /><br />
							</div>
					        <div class="panel-footer">Contact for more details!!</div>
					      </div>
					    </div>
					   </div>
					   </div>
				<cfinclude template = "/mindkart/views/layout/footer.cfm">
		</body>
</html>













