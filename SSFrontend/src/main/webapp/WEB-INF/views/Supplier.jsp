<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file ="Header.jsp"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${flag}">
<form action="<c:url value='/UpdateSupplier'/>" method="post">
<table>
     <tr>
         <td>Supplier Id</td>
       <td><input type="text" name="supid" value="${supplierData.supplierId}" readonly></td>
</tr>
     <tr>
         <td>Supplier Name</td>
       <td><input type="text" name="supName" value="${supplierData.suppliername}" ></td>
</tr>
     <tr>
         <td>Supplier Description</td>
       <td><input type="text" name="supAddr" value="${supplierData.supplierDesc}" ></td>
</tr>
<tr>
<td colspan=”2”>
        <center>
<input type=”submit”  value=”SUBMIT”>
       </center>
</td>
</tr>
</table>
</form>
</c:if>

<form action="<c:url value='/InsertSupplier'/>" method="post">
<table>
     <tr>
         <td>Supplier Name</td>
       <td><input type="text" name="supName"></td>
</tr>

     <tr>
         <td>Supplier Description</td>
       <td><input type="text" name="supAddr">
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
          <td>Supplier Id</td>
           <td>Supplier Name</td>
             <td>Supplier Addr</td>
              <td>Operations</td>

</tr>
<c:forEach items="${supplierlist}" var="supplier">
<tr>
    <td>${supplier.supplierId}</td>
    <td>${supplier.supplierName}</td>
    <td>${supplier.supplierDesc}</td>
   </tr>
<tr>
<td>
         <a href ="<c:url value='/deleteSupplier/${supplier.supplierId}'/>">Delete</a>
          <a href ="<c:url value='/editSupplier/${supplier.supplierId}'/>">Edit</a>
</td>
</tr>
</c:forEach>
</table>
