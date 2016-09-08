<!---
===============================================================
FILE NAME : test.cfm
FILE TYPE : COLD FUSION MARKUP LANGUAGE PAGE
PURPOSE : CONTAINS CFHTML CODE TO TEST DIFFERENT FUNCTION
DATE CREATED : 22/08/2016
TIME CREATED : 8:11PM
CREATED BY : Abhijit Mohanty
================================================================

 --->

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href = "../assets/css/bootstrap.min.css">
		<link rel="stylesheet" href = "../assets/css/page-stylesheet.css">
		<script type = "text/javascript"  src = "../assets/js/jquery-3.1.0.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script type = "text/javascript"  src = "../assets/js/side-menu.js"></script>
		<script>
			function show(array)
			{
				for (var i = 1; i < array.length; i++)
					{
						alert(array[i])	;
					}
			}
		</script>
	</head>
		<body>
			<cfscript>
				myArray = ArrayNew(1);
				ArrayAppend (myArray, "1");
				ArrayAppend (myArray, "1");
				ArrayAppend (myArray, "1");
				ArrayAppend (myArray, "1");
				<button class="btn btn-success" type="submit" onclick="show (myArray)">Click Me </button>
			</cfscript>

		</body>
</html>