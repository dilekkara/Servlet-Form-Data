<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
  body{
          margin:0;
          background: aquamargine;
          display:flex;
          justify-content: center;
          align-items: center;
          min-height: 100vh;
          
          
          
        }
        .login-box {
          width: 400px;
          height:500px;
          background:transparent;
          border:2px solid rgba(255,255,255,.5);
          position:absolute;
          border-radius:20px;
          display: flex;
          justify-content: center;
          align-items: center;
          backdrop-filter:blur(15px);
        }
        
        .input-box{
          position:relative;
          width: 310px;
          margin: 30px 0;
          border-bottom: 2px solid #fff;
          
        }
        .input-box label {
          position: absolute;
          top: 50%;
          left:5px;
          transform: translateY(-50%);
          font-size: 1em;
          color: #fff;
          pointer-events:none;
  
        }
        
        .input-box input:focus~label,
        .input-box input:valid~label {
          top: -5px;
        }
        
        
        
        .input-box input{
          width:100%;
          height:50px;
          background:transparent;
          border:none;
          outline:none;
          font-size: 1em;
          color: #fff;
          padding:0 8px 0 5px;
        
        }
        
        button{
          width:100%;
          height:40px;
          background:#fff;
          border:none;
          outline:none;
          border-radius:40px;
          cursor:pointer;
          font-size: 1em;
          color:#000;
          font-weight: 500;
        }
        h2{
        font-size:2em;
        color:#fff;
        text-align:center;
        }
        

  </style>

</head>
<body>
      <div  class="login-box">
        <form action="UserRegister" >
        
          <h2>Servlet Form Data</h2>
          
          <div class="input-box">
            <input type="text" name="fnameInput" required>
            <label>Name</label>
          </div>
          
          <div class="input-box">
            <input type="text" name="lnameInput" required>
            <label>Surname</label>
          </div>
      
          <div class="input-box">
            <input type="email" name="emailInput" required>
            <label>Email</label>
          </div>
        
        
          <div class="input-box">
            <input type="password" name="passwordInput" required>
            <label>Password</label>
          </div>
        
          
          <button  type="submit">Gönder</button>
          
        </form>  
      </div>
      
      
      <img src="best.png" id="img" width="1400" height="750"/>
      
</body>
</html>