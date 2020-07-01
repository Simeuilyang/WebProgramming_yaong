<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <title>Contact</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->   
   <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="css/util.css">
   <link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
<form action = "MAILTO:lsj622@naver.com?subject= 펫시터에게 보냅니다" method = "post" enctype = "text/plain">
   <div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
            <form class="login100-form validate-form flex-sb flex-w">
               <span class="login100-form-title p-b-32">
                  Contact Form
               </span>

               <span class="txt1 p-b-11">
                  User Name
               </span>
               <div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                  <input class="input100" type="text" name="username" >
                  <span class="focus-input100"></span>
               </div>
               
               <span class="txt1 p-b-11">
                  Age
               </span>
               <div class="wrap-input100 m-b-36">
                     <select class = "input100" name = "age" style = "border-style : none;">
                        <option value = "none">나이 선택</option>
                        <option value = "20's">20대</option>
                        <option value = "30's">30대</option>
                        <option value = "40's">40대</option>
                        <option value = "50's">50대</option>
                        <option value = "60's">60대</option>
                     </select>
                     <span class="focus-input100"></span>
               </div>
               
               <span class="txt1 p-b-11">
                  Sex
               </span>
               <div class="wrap-input100 m-b-36">
                     <select class = "input100" name = "gender" style = "border-style : none;">
                        <option value = "none">성별 선택</option>
                        <option value = "Male">남</option>
                        <option value = "Female">여</option>
                     </select>
                     <span class="focus-input100"></span>
               </div>

               <span class="txt1 p-b-11">
                  Phone Number
               </span>
               <div class="wrap-input100 validate-input m-b-36" data-validate = "Phone Number is required">
                  <input class="input100" type="text" name="phonenum" placeholder="ex) 010-XXXX-XXXX">
                  <span class="focus-input100"></span>
               </div>

               
               <span class="txt1 p-b-11">
                  Email
               </span>
               <div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
                  <input class="input100" type="email" name="mail" >
                  <span class="focus-input100"></span>
               </div>
               
               <span class="txt1 p-b-11">
                  Care Period
               </span>
               <div class="wrap-input100 m-b-36">               
                     <input name = "start date" type = "date" value = "" size = "15">~
                     <input name = "end date" type = "date" value = "" size = "15">
               </div>
         
               <div class="container-login100-form-btn">
               
                  <button class="login100-form-btn">
                     SEND E-MAIL
                  </button>
               
               </div>
            </form>
         </div>
      </div>
   </div>
   
</form>
   <div id="dropDownSelect1"></div>
   
<!--===============================================================================================-->
   <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/bootstrap/js/popper.js"></script>
   <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/daterangepicker/moment.min.js"></script>
   <script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
   <script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
   <script src="js/main.js"></script>

</body>
</html>