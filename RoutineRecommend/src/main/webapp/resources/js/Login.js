var loginBtn = document.getElementById("submitBtn");
var registerBtn = document.getElementById("registerBtn");

function loginfnc(){
    var id = document.getElementById("userId").value;
    var pw = document.getElementById("userPw").value;
    //���� db���� �޾ƿ� ����� ������ ��ġ�ϴ��� confirmId, confirmPw ���� �� ���ϴ� �ڵ�� ����

    if(id === "hufs" && pw === "1234"){
        alert("�α��� ����");
        console.log("�α��� ����");
    }
    else{
        alert("���̵�� ��й�ȣ�� �ٽ� Ȯ�����ּ���");
        console.log("�α��� ����");
    }
};

loginBtn.addEventListener('click',loginfnc);

