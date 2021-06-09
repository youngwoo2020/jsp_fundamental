<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajax jsonp</title>
    <script src="../js/jquery-3.6.0.js"></script>
    
    <script>
        //jsonp 방식을 사용하기 위해서는 반드시 2가지 조건이 성립해야 한다. 
        //1.jsonp 방식으로 제공해야 한다.
        //2. json 데이터만 사용 가능.
       


        $(function (){
           $("#btn").click(function(){
            $.ajax({
                url :'proxy.jsp?url=http://www.acornacademy.co.kr/blockchain/naver_json.jsp',
                type : 'get',
                datatype : 'json',
                error : function(){},
                success : fuction(json){
                $("#sel").append(JSON.stringify(json));
            }
           
        });
      });
     });
    </script>
</head>
<body>
    <button id="btn"> 가져오기</button>
    <div id="sel">

    </div>
    
</body>

</html>