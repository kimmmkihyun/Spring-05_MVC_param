<%@page import="com.spring.ex.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
person \ personView3.jsp <br><br>

<!-- Person 클래스의 소문자 참조변수가 자동으로 생겨서 아래와 같이 출력가능하다 -->

ID : ${ p.id }<br>
ID2 : ${ person.id }<br>
ID3 : ${ person.getId() }<br>
ID4 : ${ requestScope.person.id }<br><br>

PW : ${ person.pw } <br>
PW2 : ${ person.getPw() } <br>
PW3: ${ requestScope.person.pw } <br><br>

NAME : ${ person.name } <br>
NAME2 : ${ person.getName() } <br>
NAME3 : ${ requestScope.person.name } <br><br>

ADDR  : ${ person.addr } <br>
ADDR2 : ${ person.getAddr() } <br>
ADDR3 : ${ requestScope.person.addr } <br><br>

<!-- 
ID : qweqw
PW : 123
NAME : 김기현
ADDR : 파주
 -->


