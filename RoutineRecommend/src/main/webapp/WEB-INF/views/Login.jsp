<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="vendor/react.js"></script>
    <script type="text/javascript" src="vendor/showdown.min.js"></script>
<script type="text/babel">
const Login = ( {history} ) => {
  return(
    <div>
      <h1 className="intro">� ������ �淯�ִ�</h1>
      <h1 id="hilight">Beginner Gain</h1>

       <p className="sub">��� ó�� �����Ͻô� �Թ����̽Ű���?
        <br></br>AI�� ����� ������ ��ƾ �������� � ����� �ذ��� �帳�ϴ�.
      </p>

      <form name="profile" action="" method="get" autocompile="on">
        <input type="text" name="id" placeholder="���̵�" ></input>
        <p><input type="text" name="pw" placeholder="��й�ȣ"></input></p>
        <p><input type="submit" value="�α���" id="submitBtn"></input></p>
        
        <button onClick={ () => {history.push('/createAccount')}} id="registerBtn">ȸ������</button>
      </form>

            
    </div>
  );
}
</script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


</body>
</html>