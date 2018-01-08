<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="CSharpAssignment.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

	<link href="https://use.fontawesome.com/releases/v5.0.2/css/all.css" rel="stylesheet"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <title>One Push</title>

</head>
<body>
    <form id="form1" runat="server">
   <div class="container-fluid">

      <div class="row">
       <div class="col-md-6 offset-md-3">

       	<div class="text-center">
          <img src="images/onepushlogo.png" class="img-fluid .rounded-circle img-thumbnail" alt="Responsive image"> 
		</div>


       </div>
      </div>

      <div class="row" style="margin-top: 50px"> 
       <div class="col-md-4 offset-md-4">

       		<button id="Button1" type="button" class="mainBtn btn btn-outline-primary btn-block" runat="server" onserverclick="toAddPage">Add Camera or WatchList</button>
		
       </div>
      </div>

       <div class="row" style="margin-top: 50px"> 
      	 <div class="col-md-4 offset-md-4">

       		<button id="Button2" type="button" class="compareBtn btn  btn-primary btn-block" runat="server" onserverclick="toComperPage">Compare<i style="margin-left: 20px" class="fas fa-arrow-alt-circle-right"></i></button>

		
       </div>
      </div>
    </div>
   

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js" crossorigin="anonymous"></script>

    </form>
</body>
</html>
