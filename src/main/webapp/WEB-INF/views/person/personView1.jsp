<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
person \ personView1.jsp <br><br>

ID : <%=request.getParameter("id") %> <br>
PW : ${ param.pw } <br>
NAME : ${ param.name } <br>
ADDR : ${ param.addr } <br><br>

NAME2 : ${ param.Mname } <br>
NAME3 : ${ Mname } <br>
NAME4 : ${ requestScope.Mname } <br>
NAME5 : <%=request.getAttribute("Mname") %> <br>
