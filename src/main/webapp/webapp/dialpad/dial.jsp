<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dial Pad</title>
<%
String url = request.getRequestURL().toString();
String baseURL = url.substring(0, url.length() - request.getRequestURI().length())
+ request.getContextPath() + "/";
%>
<link rel="stylesheet"
href="<%=baseURL%>webapp/assets/css/bootstrap.min.css">
<link rel="stylesheet"
href="<%=baseURL%>webapp/assets/css/font-awesome.min.css">
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=baseURL%>webapp/assets/css/dial.css">

</head>
<body>
<button type="button" id="element" class="btn btn-secondary mt-5" data-container="body" data-toggle="popover" data-placement="top" data-html="true" >
  Popover on top
</button>
<div class="container d-flex justify-content-center align-items-center" id="dialer_view"
style="">
<div class="row box_row" >
<div class="col-md-12 col-12" id="output"></div>
<div class="col-md-4 col-4 digit cursor_pointer">
<div class="outer  d-flex align-items-start justify-content-center ">
<span class="inner">1</span>
</div> </div>
<div class="col-md-4 col-4 digit cursor_pointer">
<div class="outer  d-flex flex-column align-items-center justify-content-center ">
<span class="inner">2</span>
<div class="sub inner">ABC</div>
</div>
</div>
<div class=" col-md-4 col-4 digit cursor_pointer">
<span class="inner">3</span>
<div class="sub inner">DEF</div>
</div>
<div class=" col-md-4 col-4 digit cursor_pointer">
<span class="inner">4</span>
<div class="sub inner">GHI</div>
</div>
<div class=" col-md-4 col-4 digit cursor_pointer">
<span class="inner">5</span>
<div class="sub inner">JKL</div>
</div>
<div class=" col-md-4 col-4 digit cursor_pointer">
<span class="inner">6</span>
<div class="sub inner">MNO</div>
</div>
<div class=" col-md-4 col-4 digit cursor_pointer">
<span class="inner">7</span>
<div class="sub inner">PQRS</div>
</div>
<div class=" col-md-4 col-4 digit cursor_pointer">
<span class="inner">8</span>
<div class="sub inner">TUV</div>
</div>
<div class=" col-md-4 col-4 digit cursor_pointer">
<span class="inner">9</span>
<div class="sub inner">WXYZ</div>
</div>
<div class="col-md-4 col-4 digit cursor_pointer">
<span class="inner">*</span>
</div>
<div class="col-md-4 col-4 digit cursor_pointer">
<span class="inner">0</span>
<div class="sub inner">+</div>
</div>
<div class="col-md-4 col-4 digit cursor_pointer">
<span class="inner">#</span>
</div>
<div class="col-md-12  col-12 digit cursor_pointer">
<div class="button rounded-circle inner">
<i class="fa fa-phone" style="color: white;"></i>
</div>
</div>


</div>
</div>


<script src="<%=baseURL%>webapp/assets/js/jquery-3.4.1.min.js"></script>
<script src="<%=baseURL%>webapp/assets/js/popper.min.js"></script>
<script src="<%=baseURL%>webapp/assets/js/bootstrap.min.js"></script>
<script>  $("[data-toggle=popover]").popover({
        html : true,
        trigger: 'focus',
        content: function() {
            return  $('#dialer_view').html();
          }
       
    });
</script>
<!--
$('#element').popover('show');

 -->
</body>
</html>
