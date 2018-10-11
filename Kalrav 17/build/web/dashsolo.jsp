<%-- 
    Document   : dashsolo
    Created on : Feb 1, 2017, 11:03:39 AM
    Author     : Adish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    

    <title>KALRAV'17</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

  
    <!-- Custom styles for this template -->
    <link href="dash.css" rel="stylesheet">
    
      <style>
* {
  box-sizing: border-box;
}

#myInput {
/*  background-image: url('search_icon.png');*/
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}


</style>

      
      <script>
          
function myFunction() {
  var input, filter, table, tr, td,td2,td3, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[6];
      td2 = tr[i].getElementsByTagName("td")[0];
      td3 = tr[i].getElementsByTagName("td")[1];
      td4 = tr[i].getElementsByTagName("td")[7];
    if (td||td2||td3||td4) {
      if ((td.innerHTML.toUpperCase().indexOf(filter) > -1)||(td2.innerHTML.toUpperCase().indexOf(filter) > -1)||(td3.innerHTML.toUpperCase().indexOf(filter) > -1)||(td4.innerHTML.toUpperCase().indexOf(filter) > -1)) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
      
  }
    
}
          
          
          
</script>

 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="holder.min.js"></script>
      
      <script src="js/jquery-1.11.1.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>
        
  
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">KALRAV'17 ADMIN PORTAL</a>
        </div>

      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">

<!--        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">-->
          <div class="col-md-8 col-lg-12 col-sm-3 main">
          <h1 class="page-header">Dashboard</h1>



<!--          <h2 class="sub-header">Section title</h2>-->
             
               
                  <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search For Names , Roll Numbers , Events or Councils" title="Type in a name" class="glyphicon glyphicon-search">
          
              
              <div class="table-responsive">
            <table border="2" class="table table-striped" id="myTable">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Roll No.</th>
                  <th>Mobile No.</th>
                  <th>Gender</th>
                  <th>Year</th>
                    <th>Branch</th>
                    <th>Event</th>
                    <th>Council</th>
                </tr>
              </thead>
              <tbody>
               <s:iterator  value="list">
        <tr>
          <td><s:property value="name"/></td>
          <td><s:property value="rollnumber"/></td>
          <td><s:property value="mobilenumber"/></td>
          <td><s:property value="gender"/></td>
          <td><s:property value="year"/></td>
          <td><s:property value="branch"/></td>
          <td><s:property value="event"/></td>
          <td><s:property value="council"/></td>
        </tr>
       </s:iterator> 
               
              </tbody>
            </table>
                      <button class="btn btn-primary">Print</button>

          </div>
        </div>
      </div>
    </div>
      
      
        

      <script>function printData()
{
   var divToPrint=document.getElementById("myTable");
   newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();
}

$('button').on('click',function(){
printData();
});</script>
        
   
  </body>
</html>
