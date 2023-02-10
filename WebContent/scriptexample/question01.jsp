<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<body>

<table border="1px">
	<tr>
		<td id = "id">번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>
	<tr>
		<td>10</td>
		<td>네이버웍스 일부 기능의 사양 변경 및 종료 안내</td>
		<td>관리자</td>
		<td>2022-11-15</td>
		<td>234</td>
	</tr>
	<tr>
		<td>9</td>
		<td>워크플레이스 결합 서비스 신규 가입 이십프로</td>
		<td>관리자</td>
		<td>2022-11-14</td>
		<td>24</td>
	</tr>
	<tr>
		<td>8</td>
		<td>[프로모션 공지] 네이버웍스X워크플레이스 결합 서비스 신규 가입 이십프로 추가 할인(~12/31)</td>
		<td>관리자</td>
		<td>2022-11-14</td>
		<td>23444</td>
	</tr>
	<tr>
		<td>7</td>
		<td>[중요] 네이버웍스 V3.5  정기 업데이트 소식</td>
		<td>관리자</td>
		<td>2022-11-13</td>
		<td>12345</td>
	</tr>
	<tr>
		<td>6</td>
		<td>[프로모션 사전 공지] 네이버웍스X워크플레이스 결합 서비스 20프로 추가 할인</td>
		<td>관리자</td>
		<td>2022-11-12</td>
		<td>123</td>
	</tr>
	<tr>
		<td>5</td>
		<td>드라이브 서비스 디비 업그레이드 작업 사전 안내</td>
		<td>관리자</td>
		<td>2022-11-11</td>
		<td>2223</td>
	</tr>

</table>
<hr/><br/>
<h3>선택한 td안에 있는 글자를 아래  p 태그에 출력해주세요!</h3>
<p id = "output">출력란</p>
</body>

<script type="text/javascript">
$(function(){
	$("td").on("click",function(){
		$("#output").html($(this).text());
	});
});  



</script>
</html>