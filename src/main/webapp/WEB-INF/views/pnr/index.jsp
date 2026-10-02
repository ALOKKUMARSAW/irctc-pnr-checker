<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IRCTC PNR Status Check</title>

<style>
*{
	margin:0;
	padding:0;
	box-sizing:border-box;
	font-family:Arial, Helvetica, sans-serif;
}

body{
	background:#eef3f8;
}

.header{
	background:#003b73;
	color:white;
	padding:18px;
	text-align:center;
	font-size:28px;
	font-weight:bold;
	box-shadow:0 2px 8px rgba(0,0,0,0.2);
}

.sub-header{
	background:#ff6b00;
	color:white;
	text-align:center;
	padding:8px;
	font-size:15px;
}

.container{
	width:420px;
	margin:60px auto;
	background:white;
	border-radius:10px;
	box-shadow:0 5px 20px rgba(0,0,0,0.2);
	overflow:hidden;
}

.title{
	background:#0059b3;
	color:white;
	padding:15px;
	text-align:center;
	font-size:22px;
	font-weight:bold;
}

.form-area{
	padding:30px;
}

label{
	font-size:16px;
	font-weight:bold;
	color:#333;
	display:block;
	margin-bottom:8px;
}

input[type=text]{
	width:100%;
	padding:12px;
	font-size:16px;
	border:2px solid #d0d0d0;
	border-radius:5px;
	margin-bottom:20px;
}

input[type=text]:focus{
	border-color:#0059b3;
	outline:none;
}

.btn{
	width:100%;
	background:#ff6b00;
	color:white;
	padding:13px;
	border:none;
	border-radius:5px;
	font-size:18px;
	font-weight:bold;
	cursor:pointer;
	margin-top:10px;
}

.btn:hover{
	background:#e55d00;
}

.footer{
	text-align:center;
	padding:12px;
	background:#f4f4f4;
	color:#555;
	font-size:13px;
	border-top:1px solid #ddd;
}

.note{
	text-align:center;
	color:#666;
	font-size:13px;
	margin-top:15px;
}
</style>

<script>
function setAction(action){
	document.getElementById("pnrForm").action = action;
}
</script>

</head>

<body>

<div class="header">
🚆 Indian Railways
</div>

<div class="sub-header">
IRCTC PNR Status Enquiry
</div>

<div class="container">

<div class="title">
PNR Status Check
</div>

<div class="form-area">

<form id="pnrForm" method="get">

<label>Enter 10-Digit PNR Number</label>

<input
	type="text"
	name="pnrNumber"
	placeholder="e.g. 1234567890"
	maxlength="10"
	required>

<button class="btn" type="submit" onclick="setAction('pnrCheck')">
	Check PNR Status
</button>

<button class="btn" type="submit" onclick="setAction('bookingStatus')">
	Check Booking Status
</button>

</form>

<div class="note">
Please enter a valid 10-digit PNR number.
</div>

</div>

<div class="footer">
© Indian Railways Passenger Reservation System
</div>

</div>

</body>
</html>