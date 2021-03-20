import React from 'react';


const Login = ( {history} ) => {
  return(
    <div>
      <h1 className="intro">운동 습관을 길러주는</h1>
      <h1 id="hilight">Beginner Gain</h1>

       <p className="sub">운동을 처음 시작하시는 입문자이신가요?
        <br></br>AI에 기반한 맞춤형 루틴 제공으로 운동 고민을 해결해 드립니다.
      </p>

      <form name="profile" action="" method="get" autocompile="on">
        <input type="text" name="id" placeholder="아이디" ></input>
        <p><input type="text" name="pw" placeholder="비밀번호"></input></p>
        <p><input type="submit" value="로그인" id="submitBtn"></input></p>
        
        <button onClick={ () => {history.push('/createAccount')}} id="registerBtn">회원가입</button>
      </form>

            
    </div>
  );
}

  

export default Login;