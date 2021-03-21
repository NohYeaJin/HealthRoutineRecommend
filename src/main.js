import React, {Component} from 'react';

class Navbar extends Component{
    render(){
        return(
            <nav>
              <div className="Home">
                <span id="title">Beginner Gain</span>
                <span>오늘의 운동 시작하기</span>
                <span>운동 기록 확인하기</span>
                <span>사용자 정보 변경하기</span>
              </div>
            </nav>
        );
    }
}

export default Navbar;