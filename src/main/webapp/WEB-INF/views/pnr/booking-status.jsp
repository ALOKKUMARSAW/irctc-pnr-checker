<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Status</title>

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
    text-align:center;
    padding:18px;
    font-size:30px;
    font-weight:bold;
    box-shadow:0 2px 8px rgba(0,0,0,.2);
}

.sub-header{
    background:#ff6b00;
    color:white;
    text-align:center;
    padding:8px;
    font-size:16px;
}

.container{
    width:550px;
    margin:50px auto;
    background:white;
    border-radius:10px;
    box-shadow:0 5px 20px rgba(0,0,0,.2);
    overflow:hidden;
}

.title{
    background:#0059b3;
    color:white;
    text-align:center;
    padding:15px;
    font-size:24px;
    font-weight:bold;
}

.content{
    padding:30px;
}

table{
    width:100%;
    border-collapse:collapse;
}

td{
    padding:15px;
    border-bottom:1px solid #ddd;
    font-size:17px;
}

td:first-child{
    width:40%;
    font-weight:bold;
    color:#003b73;
}

.status{
    color:green;
    font-size:22px;
    font-weight:bold;
}

.button-area{
    text-align:center;
    margin-top:30px;
}

.button-area a{
    display:inline-block;
    text-decoration:none;
    background:#ff6b00;
    color:white;
    padding:12px 35px;
    border-radius:5px;
    font-size:17px;
    font-weight:bold;
    transition:.3s;
}

.button-area a:hover{
    background:#e55d00;
}

.footer{
    text-align:center;
    background:#f4f4f4;
    padding:12px;
    color:#555;
    font-size:13px;
}

</style>

</head>

<body>

<div class="header">
🚆 Indian Railways
</div>

<div class="sub-header">
IRCTC Booking Status
</div>

<div class="container">

<div class="title">
Booking Details
</div>

<div class="content">

<table>

<tr>
    <td>PNR Number</td>
    <td><%= request.getAttribute("pnrNumber") %></td>
</tr>

<tr>
    <td>Booking Status</td>
    <td class="status">WL-75</td>
</tr>

<tr>
    <td>Coach</td>
    <td>S3</td>
</tr>

<tr>
    <td>Berth</td>
    <td>45</td>
</tr>

<tr>
    <td>Quota</td>
    <td>General</td>
</tr>

</table>

<div class="button-area">
    <a href="/irctc-pnr-checker/">
        ⬅ Check Another PNR
    </a>
</div>

</div>

<div class="footer">
© Indian Railways Passenger Reservation System
</div>

</div>

</body>
</html>