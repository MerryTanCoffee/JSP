<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	문제)
	304호 전원의 이름을 리스트에 저장하고 또는 배열에 저장하고
	각 성씨의 명수를 출력해주세요.\
	
	'홍'씨 성을 가진 사람 몇 명: 2명
	'유'씨 성을 가진 사람 몇 명: 6명
	'정'씨 성을 가진 사람 몇 명: 4명
	..
	<!--                                                          
   문제 풀어봅시다!                                                  
                                                              
   1) 리스트에 304호 반 학생 이름을 모두 넣고 Core태그 set에 저장한 후, 전체를         
   출력해주세요.                                                    
                                                              
   2) 전체출력을 4명씩 끊어서 출력해주세요                                    
   이름 이름 이름 이름                                                
   이름 이름 이름 이름                                                
    :         :                                               
                                                              
   3) 4명씩 끊어서 출력할 때, 본인의 이름은 '본인임'으로 출력해주세요.                  
   '본인임' 글자를 출력 시, 굵은 글씨/파란색으로 출력해주세요.                        
 -->                                                          
<%                                                            
   List<String> list = new ArrayList<String>();              
                                                              
   list.add("양유림");                          
   list.add("김주은");                            
   list.add("박나래");                            
   list.add("임주완");                            
   list.add("한유진");                            
   list.add("김혜림");                            
   list.add("박경훈");                            
   list.add("이치영");                            
   list.add("심효정");                            
   list.add("송지나");                            
   list.add("신민수");                           
   list.add("허자연");                            
   list.add("김정찬");                            
   list.add("임치택");                            
   list.add("김성준");                            
   list.add("권나영");                            
   list.add("김지선");                            
   list.add("이소라");                            
   list.add("윤선희");                            
   list.add("정시원");                          
   list.add("서동혁");                            
   list.add("이국주");                            
   list.add("김용익");                            
                                                              
%>                      

	<c:set var="0" value="yangCnt"/>
    <c:set var="0" value="kimCnt"/>
    <c:set var="0" value="parkCnt"/>
    <c:set var="0" value="imCnt"/>
    <c:set var="0" value="hanCnt"/>
    <c:set var="0" value="leeCnt"/>
    <c:set var="0" value="simCnt"/>
    <c:set var="0" value="songCnt"/>
    <c:set var="0" value="sinCnt"/>
    <c:set var="0" value="heoCnt"/>  
    <c:set var="0" value="kwonCnt"/>
    <c:set var="0" value="yunCnt"/>
    <c:set var="0" value="jungCnt"/>
    <c:set var="0" value="seoCnt"/>
    
<c:set value = "김용익,이국주,서동혁,정시원,윤선희,이소라,김지선,권나영,김성준,임치택,김정찬,허자연,신민수,송지나,심효정,이치영,박경훈,김혜림,한유진,임주완,박나래,김주은,양유림" var = "names"/>
<c:set value = "${fn:split(names,',')}"  var="name"/>

<c:forEach items="${name }" var="nm" varStatus="stat">
<c:choose>
          <c:when test="${fn:substring(name[stat.index],0,1) == '양' }">
             <c:set value="${yangCnt + 1 }" var="yangCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '김' }">
             <c:set value="${kimCnt + 1 }" var="kimCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '박' }">
             <c:set value="${parkCnt + 1 }" var="parkCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '임' }">
             <c:set value="${imCnt + 1 }" var="imCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '한' }">
             <c:set value="${hanCntgCnt + 1 }" var="hanCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '이' }">
             <c:set value="${leeCnt + 1 }" var="leeCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '심' }">
             <c:set value="${simCnt + 1 }" var="simCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '송' }">
             <c:set value="${songCnt + 1 }" var="songCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '신' }">
             <c:set value="${sinCnt + 1 }" var="sinCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '허' }">
             <c:set value="${heoCnt + 1 }" var="heoCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '권' }">
             <c:set value="${kwonCnt + 1 }" var="kwonCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '윤' }">
             <c:set value="${yunCnt + 1 }" var="yunCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '정' }">
             <c:set value="${jungCnt + 1 }" var="jungCnt"/>
          </c:when>
          <c:when test="${fn:substring(name[stat.index],0,1) == '서' }">
             <c:set value="${seoCnt + 1 }" var="seoCnt"/>
          </c:when>
       </c:choose>
	<hr/>
	<p>[${stat.count }]당신의 이름은? ${nm}</p>
	<font color = "red" style = "font-size:10px;">
		'${fn:substring(name[stat.index],0,1) }'씨 Count 증가!
	</font>
	<table>
		<tr>
			<td>양</td><td>김</td><td>박</td><td>임</td><td>한</td><td>이</td><td>심</td>
             <td>송</td><td>신</td><td>허</td><td>권</td><td>윤</td><td>정</td><td>서</td>
		</tr>
		<tr>
			<td>${yangCnt }</td><td>${kimCnt }</td><td>${parkCnt }</td><td>${imCnt }</td>
             <td>${hanCnt }</td><td>${leeCnt }</td><td>${simCnt }</td><td>${songCnt }</td>
             <td>${sinCnt }</td><td>${heoCnt }</td><td>${kwonCnt }</td><td>${yunCnt }</td>
             <td>${jungCnt }</td><td>${seoCnt }</td>
		</tr>

	</table>
	<hr/>
</c:forEach>

<h3></h3>
<table border="1"  width="100%">
		<tr align="center">
			<td>양</td><td>김</td><td>박</td><td>임</td><td>한</td><td>이</td><td>심</td>
             <td>송</td><td>신</td><td>허</td><td>권</td><td>윤</td><td>정</td><td>서</td>
		</tr>
		<tr align="center">
			<td>${yangCnt }</td><td>${kimCnt }</td><td>${parkCnt }</td><td>${imCnt }</td>
             <td>${hanCnt }</td><td>${leeCnt }</td><td>${simCnt }</td><td>${songCnt }</td>
             <td>${sinCnt }</td><td>${heoCnt }</td><td>${kwonCnt }</td><td>${yunCnt }</td>
             <td>${jungCnt }</td><td>${seoCnt }</td>
		</tr>


</table>
<!-- <c:set var="list" value="<%=list%>"/> 
        My list is ${list}<br/>
        
사이즈 : ${fn:length(list) }<br> 
<c:forEach var ="i" begin = "0" end ="${fn:length(list) -1 }">
${i+1}번 :${fn:substring(list[i],0,1) }<br> 
${fn:contains ("hello JAVA server page!", "java") }
</c:forEach>                                    
-->
</body>
</html>