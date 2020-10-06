<%@page import="com.spring.ex.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
person \ personView2.jsp <br><br>

ID : <%=request.getParameter("id") %> <br>
PW : ${ param.pw } <br>
NAME : ${ param.name } <br>
ADDR : ${ param.addr } <br><br>


<!-- 
ID : qweqw
PW : 123
NAME : 김기현
ADDR : 파주
 -->

---------------------------------------<br><br>

per.id : ${ requestScope.per.getId() } <br>
per.id2 : ${ requestScope.per.id } <br>
per.id3 : ${ per.getId() } <br>
per.id4 : ${ per.id } <br>

per.id5 : <%=request.getAttribute("per") %> <br> 
per.id6 : <%=((Person)request.getAttribute("per")).getId() %> <br>

---------------------------------------<br><br>
per.pw :  ${ per.pw }<br>
per.pw2 :  ${ per.getPw() }<br>
per.pw3 :  ${ requestScope.per.pw }<br>
per.pw4 :  ${ requestScope.per.getPw() }<br>
per.pw5 :  <%= ((Person)request.getAttribute("per")).getPw() %><br>
---------------------------------------<br><br>

per.name : ${ per.name }<br>
per.name2 : ${ per.getName() }<br>
per.name3 : ${ requestScope.per.name }<br>
per.name4 : ${ requestScope.per.getName() }<br>
per.name5 : <%= ((Person)request.getAttribute("per")).getName() %> <br>

---------------------------------------<br><br>
per.addr : ${ per.addr }<br>
per.addr2 : ${ per.addr }<br>
per.addr3 : ${ requestScope.per.addr }<br>
per.addr4 : ${ requestScope.per.getAddr() }<br>
per.addr5 : <%= ((Person)request.getAttribute("per")).getAddr() %> <br>

