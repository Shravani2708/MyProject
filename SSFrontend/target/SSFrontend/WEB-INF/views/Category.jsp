<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file ="Header.jsp"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${flag}">
<form action="<c:url value='/UpdateCategory'/>" method="post">
<table>
     <tr>
         <td>Category Id</td>
       <td><input type="text" name="catid" value="${categoryData.categoryId}" readonly></td>
</tr>
     <tr>
         <td>Category Name</td>
       <td><input type="text" name="catname" value="${categoryData.categoryname}" ></td>
</tr>
     <tr>
         <td>Category Description</td>
       <td><input type="text" name="catDesc" value="${categoryData.categoryDesc}" ></td>
</tr>
<tr>
<td colspan="2">
        <center>
<input type="submit"  value="SUBMIT">
       </center>
</td>
</tr>
</table>
</form>
</c:if>

<form action="<c:url value='/InsertCategory'/>" method="post">
<table>
     <tr>
         <td>Category Name</td>
       <td><input type="text" name="catname"></td>
</tr>

     <tr>
         <td>Category Description</td>
       <td><input type="text" name="catDesc">
</tr>
<tr>
<td colspan="2">
        <center>
<input type="submit"  value="SUBMIT">
       </center>
</td>
</tr>

<table align="center">
     <tr bgcolor="blue">
          <td>Category Id</td>
           <td>Category Name</td>
             <td>Category Desc</td>
              <td>Operations</td>

</tr>
<c:forEach items="${categorylist}" var="category">
<tr>
    <td>${category.categoryId}</td>
    <td>${category.categoryName}</td>
    <td>${category.categoryDesc}</td>
   </tr>
<tr>
<td>
         <a href ="<c:url value=’/deleteCategory/${category.categoryId}’/>">Delete</a>
          <a href ="<c:url value=’/editCategory/${category.categoryId}’/>">Edit</a>
</td>
</tr>
</c:forEach>
</table>
