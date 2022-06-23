<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>아이디찾기</title>
  <meta charset="utf-8">
<script>
$(function(){
	$("#findid-btn").click(function(){
		let mname = document.getElementById('mname').value;
		let email = document.getElementById('email').value;
		
		let url = "http://localhost:8000/member/idF?mname=" + mname + "&email=" + email;
		
		fetch(url)
			.then((response) => response.json())
			.then((data) => alert("고객님의 아이디는 " + data.id))
			.catch(console.log)
	})	
});
</script>
</head>
<body>
<div class="container">

<h1 class="col-sm-offset-2 col-sm-10">아이디 찾기</h1>
  <form class="form-horizontal" 
        action="/member/findid"
        method="post">
    <input type="hidden" name="rurl" value="${param.rurl}">    
    <input type="hidden" name="bbsno" value="${param.bbsno}">    
    <input type="hidden" name="nowPage" value="${param.nowPage}">    
    <input type="hidden" name="nPage" value="${param.nPage}">    
    <input type="hidden" name="col" value="${param.col}">    
    <input type="hidden" name="word" value="${param.word}">
        
    <div class="form-group">
      <label class="control-label col-sm-2" for="mname">이름</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="mname" 
        placeholder="Enter id" name="mname" required="required" 
        value='${c_mname_val}'>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">email</label>
      <div class="col-sm-4">          
        <input type="text" class="form-control" id="email" 
        placeholder="Enter password" name="email" required="required">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-8">
        <button type="button" class="btn btn-default" id="findid-btn">아이디 찾기</button>
      </div>
    </div>
  </form>

</div>
</body>
</html>