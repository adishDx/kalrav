<%-- 
    Document   : displayrecords
    Created on : Jan 16, 2017, 11:16:21 PM
    Author     : Adish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><%@ taglib uri="/struts-tags" prefix="s" %>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
  
<h3>All Records:</h3>  
<s:iterator  value="list">  
<fieldset>  
<s:property value="rollnumber"/><br/>  
<s:property value="name"/><br/>  
<s:property value="mobilenumber"/><br/>  
<s:property value="email"/><br/>
<s:property value="gender"/><br/>
<s:property value="event"/><br/>
</fieldset>  
</s:iterator> 
    </body>
</html>
