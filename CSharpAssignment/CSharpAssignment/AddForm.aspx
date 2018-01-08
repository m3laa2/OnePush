<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddForm.aspx.cs" Inherits="CSharpAssignment.AddForm" %>

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
             <img src="images/onepushlogo.png" style="height: 250px" class="img-fluid .rounded-circle img-thumbnail" alt="Responsive image"/> 
           </div>


       </div>

     
      </div>

      <div class="row" style="margin-top: 80px">
          <div class="col-md-10 offset-md-1">
            <div class="col-md-6 float-left">
              <div class="card text-center">
                <div class="card-header">
                   Add Camera
                </div>
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Enter Id</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Id" runat="server"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Enter Location-Ar</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="مصطفى النحاس" runat="server"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Enter Location-En</label>
                    <input type="text" class="form-control" id="Password1" placeholder="Mostafa El Na7as" runat="server"/>
                </div>
                
              </div>
              <div class="card-footer text-muted">
                <button id="Button1" type="button" class="btn btn-success btn-block" runat="server" onserverclick="addCamera">Add Camera</button>
              </div>
          </div>
             <!-- Aflet elheader -->

         </div>
        <!-- Aflet el mid el shmlas -->


            <div class="col-md-6 float-left">
              <div class="card text-center">
                <div class="card-header">
                   Add Criminal
                </div>
                <div class="card-body">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Enter Id</label>
                        <input type="text" class="form-control" id="Email1" aria-describedby="emailHelp" placeholder="Enter Id" runat="server"/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Enter Name-Ar</label>
                        <input type="text" class="form-control" id="Password2" placeholder="مصطفى" runat="server"/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Enter Name-En</label>
                        <input type="text" class="form-control" id="Password3" placeholder="Mostafa" runat="server"/>
                    </div>

                     <div class="form-group">
                         <asp:FileUpload class="form-control" runat="server" ID="fileupload1"/>
                        
                    </div>


                   
                
                </div>
                <div class="card-footer text-muted">
                  <button id="Button2" type="button" class="btn btn-success btn-block" runat="server" onserverclick="addCriminal">Add Criminal</button>
                </div>
              </div>
             <!-- Aflet elheader -->

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
