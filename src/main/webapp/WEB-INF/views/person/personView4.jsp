<%@page import="com.spring.ex.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
person \ personView4.jsp <br><br>

ID : ${ p.id }<br>
ID2 : ${ person.id }<br>
ID3 : ${ person.getId() }<br>
ID4 : ${ requestScope.person.id }<br><br>
<!-- 별칭을 설정한 이상 위의 4개 경우는 출력이 안됨!!!  -->
ID5 : ${ abcd.id }<br>
ID6 : ${ requestScope.abcd.id }<br>
ID7 : ${ abcd.getId() }<br>
ID8 : <%=((Person)request.getAttribute("abcd")).getId() %><br><br>


PW : ${ person.pw } <br>
PW2 : ${ person.getPw() } <br>
PW3: ${ requestScope.person.pw } <br><br>

PW4 : ${ abcd.pw } <br>
PW5 : ${ requestScope.abcd.pw } <br>
PW6 : ${ abcd.getPw() } <br>
PW7 : <%=((Person)request.getAttribute("abcd")).getPw() %><br><br>


NAME : ${ person.name } <br>
NAME2 : ${ person.getName() } <br>
NAME3 : ${ requestScope.person.name } <br><br>

NAME4 : ${ abcd.name } <br>
NAME5 : ${ requestScope.abcd.name } <br>
NAME6 : ${ abcd.getName() } <br>
NAME7 : <%=((Person)request.getAttribute("abcd")).getName() %><br><br>

ADDR  : ${ person.addr } <br>
ADDR2 : ${ person.getAddr() } <br>
ADDR3 : ${ requestScope.person.addr } <br><br>

ADDR4  : ${ abcd.addr } <br>
ADDR5  : ${ requestScope.abcd.addr } <br>
ADDR6  : ${ abcd.getAddr() } <br>
ADDR7  : <%=((Person)request.getAttribute("abcd")).getAddr() %><br><br>


