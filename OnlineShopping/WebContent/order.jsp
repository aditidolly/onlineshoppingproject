<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style><%@include file="/WEB-INF/css/project.css"%></style>
<title>Order Item</title>
</head>
<body>
 <c:choose>
 <c:when test="${citem!=null}">
  
  <h1>Purchase Order Form</h1>
  <form:form action="buyItem.obj" modelAttribute="citem">
  <table id="ordertable" bgcolor="#E4F5F6">
  <tr><td>Card No</td><td><form:input path="cardNo" type="text" value=""/></td></tr>
  <tr><td>Name</td>
  <td><form:input path="name" type="text" value=""/></td></tr>
  <tr><td>Expiry</td>
  <td><form:input path="expiry" type="date" value=""/></td></tr>
  <tr><td>CVV</td>
  <td><form:input path="cvv" type="text" value=""/></td></tr>
  <tr><td>Item ID</td>
  <td><form:input path="itemId" type="text" value=""/></td></tr>
  <tr><td>Mobile</td><td><form:input path="mobile" type="text" value=""/></td></tr>
 <tr><td>Quantity</td><td><form:input path="quantity" type="text" value=""/></td></tr>
   </table>
   <br><br>
   <input class="butt" type="submit" value="Buy Item"/>
  </form:form>
 </c:when>
 <c:otherwise>
 <h2 class="inf">Item not Found</h2>
 </c:otherwise>
 </c:choose>
</body>
</html>