<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.removeAttribute("idx");
session.removeAttribute("id");
session.removeAttribute("name");
session.removeAttribute("email");
session.removeAttribute("type");

session.invalidate();

System.out.println("로그아웃");
response.sendRedirect("./");
%>