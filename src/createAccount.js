import React, {Component} from 'react';

class createAccount extends Component{
    render(){
        return(
            <div className="createAccount">
            
            <h1 className="intro">운동 습관을 길러주는</h1>
            <h1 id="hilight">Beginner Gain</h1>

                <div className="newUserInfo">
                    <form name="user" action="" method="get" autocompile="on">
                        <input type="text" name="userName" placeholder="이름" ></input><p></p>
                        <input type="text" name="id" placeholder="아이디" ></input><p></p>
                        <input type="text" name="pw" placeholder="비밀번호"></input>
                        <p><input type="submit" value="가입 후 기본정보 입력하기" id="newUserRegister"></input>
                        </p>
                    </form>
                </div>
            </div>
        );
    }
}

export default createAccount;