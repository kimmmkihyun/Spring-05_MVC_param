<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
person \ result.jsp 입니다.<br>


name1 : ${ name } <br>
name2 : ${ requestScope.name } <br>
name3 : <%=request.getAttribute("name") %> <br>

name4 : ${ param.name } <br>
name5 : <%=request.getParameter("name") %><br>

---------------------------------------------<br>

age1 : ${ age } <br>
age2 : ${ requestScope.age } <br>
age3 : <%=request.getAttribute("age") %> <br>

age4 : ${ param.age } <br>
age5 : <%=request.getParameter("age") %> <br>

<!--
 
http://localhost:8080/ex/person/input 으로 요청 했을 때
name1 :
name2 :
name3 : null
name4 :
name5 : null
---------------------------------------------
age1 :
age2 :
age3 : null
age4 :
age5 : null

http://localhost:8080/ex/person/input?name=kim&age=23 으로 요청했을 때 
name1 : kim
name2 : kim
name3 : kim
name4 : kim
name5 : kim
---------------------------------------------
age1 : 23
age2 : 23
age3 : 23
age4 : 23
age5 : 23

요청을 할 때  model속성으로 설정한 값을 완전하게 가저올 때는 위에 3가지만 가능하고 get방식으로 넘긴 값은 전부다 출력가능하다(!!!넘어오는 것은 request에 담겨서 넘어온다!!!)
name1 : kim씨~
name2 : kim씨~
name3 : kim씨~
name4 : kim
name5 : kim
---------------------------------------------
age1 : 23세
age2 : 23세
age3 : 23세
age4 : 23
age5 : 23

 -->

 
 
 