<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareForm.aspx.cs" Inherits="CSharpAssignment.CompareForm" %>

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
             <img src="images/onepushlogo.png" style="height: 150px" class="img-fluid .rounded-circle img-thumbnail" alt="Responsive image"/> 
           </div>


       </div>

     
      </div>

      <div class="col-md-6  offset-md-3  " style="margin-top: 40px">
              <div class="card text-center">
                <div class="card-header">
                   Compare
                </div>
                <div class="card-body">
                     
                     <div class="form-group">
                        <label for="exampleInputEmail1">Enter Id</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Id" runat="server"/>
                    </div>

                     <div class="form-group">
                        <asp:FileUpload class="form-control" runat="server" ID="fileupload1"/>
                    </div>


                   
                
                </div>
                <div class="card-footer text-muted">
                    <button id="Button1" type="button" class="compareBtn btn  btn-primary btn-block" runat="server" onserverclick="compareBtnClick">Compare<i style="margin-left: 20px" class="fas fa-arrow-alt-circle-right"></i></button>
                </div>
              </div>
             <!-- Aflet elheader -->

            </div>


      <div class="row" style="margin-top: 40px">
           <div class="col-md-6 offset-md-3">

                  <div class="jumbotron jumbotron-fluid">
                    <div class="container">
                      <asp:Label class="lead" ID="result" runat="server" ></asp:Label>
                    </div>
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
