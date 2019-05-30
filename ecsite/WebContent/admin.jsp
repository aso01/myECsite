<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolber" content="no"/>
<meta name ="description" content=""/>
<meta name="keywords" content=""/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<title>管理者画面</title>
<style type="text/css">
/*=======TAG LAYOUT=======*/
body{
	margin:0;
	padding:0;
	line-height:1.6;
	letter-spacing:1px;
	font-family:Verdane,Helvetica,sans-serif;
	font-size:12px;
	color:#333;
	background:#fff;
}

/*=======ID LAYOUT======*/
#top{
	width:780px;
	margin:30px auto;
	border:1px solid #333;
}
#header{
	width:100%;
	height:80px;
	background-color:black;
}
#main{
	width:100%;
	height:500px;
	text-align:center;
}
.main_container{
	width:780px;
	margin:30px auto;
}
.content_left{
	width:45%;
	margin:0 auto;
	margin-left:20px;
	padding-bottom:20px;
	float:left;
	border:1px solid #333;
}
.content_right{
	width:45%;
	margin:0 auto;
	margin-left:30px;
	padding-bottom:20px;
	float:left;
	border:1px solid #333;
}
.menu{
	margin-right:100px;
}

.main_container li{
	list-style:none;
	margin:10px;
}
#footer{
	width:100%;
	height:80px;
	background-color:black;
	clear:both;
}
</style>
<script type="text/javascript">
	function submitAction(url){
		$('form').attr('action',url);
		$('form').submit();
	}
	</script>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>管理者画面</p>
		</div>
		<div class = main_container>
		<s:form>
			<div class = content_left>
				<p>商品</p>
				<ul class="menu">
					<li><input type="button" value="商品新規登録" onclick="submitAction('ItemCreateAction')"/></li>
					<li><input type="button" value="商品一覧" onclick="submitAction('ItemListAction')"/></li>
				</ul>
			</div>
			<div class =content_right>
				<p>ユーザー</p>
				<ul class="menu">
					<li><input type="button" value="ユーザー新規登録" onclick="submitAction('UserCreateAction')"/></li>
					<li><input type="button" value="ユーザー一覧" onclick="submitAction('UserListAction')"/></li>
				</ul>
			</div>
			</s:form>
		</div>
	</div>
	<div id="text-right">
		<p>ログアウトする場合は<a href='<s:url action="LogoutAction" />'>こちら</a></p>
	</div>
	<div id="footer">
	</div>
</body>
</html>