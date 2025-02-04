<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common.jsp"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<style type="text/css">
body {
   font-family: 'Montserrat', sans-serif;
   text-rendering : optimizeLegibility;
   -webkit-font-smoothing : antialiased;
}


#login-bg.container-fluid {
   padding: 0;
   height: 100%;
   position: absolute;
}

/* Background image an color divs*/

.bg-img , .bg-color {
   min-width: 50%;
   vertical-align: top;
   padding: 0;
   margin-left: 0;
   height: 100%;
   background-color: #CAF0D3;
   display: inline-block;
   overflow: hidden;
}

.bg-color {
   margin-left: -5px;
}

.bg-img {
   background-image: url(<%=request.getContextPath() %>/resources/img/bg-image.jpeg);
   background-size: cover;
}

#login{
   padding-top: 10%;
   text-align: center;
   text-transform: uppercase;
}


.login {
   width: 100%;
   height: 600px; 
   background-color: #fff;
   padding: 15px;
   padding-top: 30px;
}

.login h1 {
   margin-top: 30px;
   font-weight: bold;
   font-size: 60px;
   letter-spacing: 3px;
}

.login form {
   max-width: 420px;
   margin: 30px auto;
}

.login .btn {
   border-radius: 50px;
   text-transform: uppercase;
   font-weight: bold;
   letter-spacing: 2px;
   font-size: 20px;
   padding: 14px;
   background-color: #00B72E;
}

.form-group input {
   font-size: 20px;
   font-weight: lighter;
   border: none;
   background-color: #F0F0F0;
   color: #465347!important;
   padding: 26px 30px;
   border-radius: 50px;
   transition : 0.2s;
}




/* Form check styles*/

.form-check {
   padding: 0;
   text-align: left;
}

.form-check label {
   vertical-align: top;
   padding-top: 5px;
   padding-left: 5px;
   font-size: 15px;
   color: #606060;
   font-size: 14px;
}

.forgot-password {
   text-align: right;
   float: right;
   font-weight: bold;
}

.forgot-password a {
   color: #00B72E;
   opacity: 0.6;
}

.forgot-password a:hover {
   opacity: 1;
}


/* Switch styles */

.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 30px;
}

/* Hide default HTML checkbox */
.switch input {display:none;}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #F0F0F0;
  -webkit-transition: .4s;
  transition: .4s;
  border-radius: 30px;
}

.slider:before {
  position: absolute;
  content: "";
  height: 22px;
  width: 22px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
  border-radius: 50%;
}

input:checked + .slider {
  background-color: #00B72E;
}

input:focus + .slider {
  box-shadow: 0 0 1px ##00B72E;
}

input:checked + .slider:before {
  -webkit-transform: translateX(30px);
  -ms-transform: translateX(30px);
  transform: translateX(30px);
}



/* Media queries */

@media(max-width: 500px) {
   .bg-img , .bg-color {
   min-width: 100%;
   height: 50%;
   margin: 0;
   }

   .forgot-password {
   text-align: right;
   float: left;
   padding: 20px 0;
   }


   #login {
      padding-top: 50px;
   }

}


.left-box { 
  float: left; 
  width: 50%; 
} 
.right-box { 
  float: right; 
  width: 50%; 
} 

</style>
   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Loding font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,700" rel="stylesheet">

    <!-- Custom Styles -->

    <title>Login</title>
    
    
   
   
</head>

<body>
   <!-- <!-- Backgrounds -->
   <div id="login-bg" class="container-fluid">
      <div class="bg-img"></div>
      <div class="bg-color"></div>
   </div>

   <div class="container" id="login">
      <div class="row justify-content-center">
         <div class="col-lg-8">
            <div class="login">
               <h1>Login</h1>
               <form role="form" action="<%=contextPath%>/login.me" method="post">
                  <div class="form-group">
                     <input type="text" class="form-control" id="id" name="id"
                         placeholder="Enter id">
                  </div>
                  <div class="form-group">
                     <input type="password" class="form-control" id="password"  name="password"
                        placeholder="Password">
                  </div>
                  
                  <br>
                  <button type="submit" class="btn btn-lg btn-block btn-success">
                     로그인
                  </button>
                  <br>
                  <a href="<%=contextPath%>/insert.me" class="btn btn-lg btn-block btn-success">
                     회원가입
                  </a>
                  <br> 
                  <a href="#" class="btn btn-lg btn-block btn-success" 
                  	onclick="window.open('<%=contextPath%>/findinfo.me?','window팝업','width=580, height=460');"> 
                     아이디/비밀번호 찾기 
                  </a> 
               </form> 
               
            </div>
         </div>
      </div>
   </div> 
	
</body>
</html>
