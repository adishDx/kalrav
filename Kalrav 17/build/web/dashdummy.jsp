<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
 <link rel="stylesheet" type="text/css" href="dashboard.css">
</head>
<body>
	<section>
  <!--for demo wrap-->
  <h1>Councilwise Dashboard</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Roll No.</th>
          <th>Name</th>
          <th>E-mail</th>
          <th>Phone No.</th>
          <th>event</th>
          <th>gender</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
       <s:iterator  value="list">
        <tr>
          <td><s:property value="rollnumber"/></td>
          <td><s:property value="name"/></td>
          <td><s:property value="email"/></td>
          <td><s:property value="mobilenumber"/></td>
          <td><s:property value="event"/></td>
          <td><s:property value="gender"/></td>
        </tr>
       </s:iterator>  

   </tbody>
    </table>
  </div>
</section>
</body>
</html>