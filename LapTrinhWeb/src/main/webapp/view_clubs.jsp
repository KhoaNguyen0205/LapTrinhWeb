<%@page import="com.entity.ClubDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ClubDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="css1/style.css">
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
<%@include file="all_component/navbar2.jsp"%>
   
<%
int id =Integer.parseInt(request.getParameter("id"));
ClubDAOImpl dao = new ClubDAOImpl(DBConnect.getConn());
ClubDtls b = dao.getClubById(id);
%>
  <div class="container p-3"> 
     <div class="row">
         <div class="col-md-6 text-center p-5 border bg-white">
           <img src="AllClubs/<%=b.getLogo()%>" style="height: 100px; width: 100px"><br>
           <h4 class="mt-3">
               Club Name: <span class="test-success"><%=b.getName()%></span>
           </h4>
         </div>
     </div>
  </div>
</body>
</html>