<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="VersusFinal3.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Versus Sign Up Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body style="background-color:#eaeaea;">
    <form id="form1" runat="server">
        <asp:HiddenField ID="hfUserID" runat="server" />
         <div class="container">
             <div class="row" style="padding-top:50px;">
                <div class="col-sm-12 text-center">
                    <h2>Versus Signup</h2>
                </div>
            </div>
             <div class="row" style="padding-top:50px;">
                 <div class="col-sm-4"></div>
                 <div class="col-sm-4">
                     <div class="card" style="border-radius: 5px; background-color:#FFFFFF; -webkit-box-shadow: 0px 1px 8px 0px rgba(153,153,153,1); -moz-box-shadow: 0px 1px 8px 0px rgba(153,153,153,1); box-shadow: 0px 1px 8px 0px rgba(153,153,153,1);"">
                        <div class="card-body">
                            <div class="form-group">
                                <asp:Label ID="FirstName" runat="server" Text="First Name"></asp:Label><br />
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="LastName" runat="server" Text="Last Name"></asp:Label><br />
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Email" runat="server" Text="Email"></asp:Label><br />
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="DateofBirth" runat="server" Text="Date of Birth"></asp:Label><br />
                                <asp:TextBox ID="txtDob" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Username" runat="server" Text="Username"></asp:Label><br />
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Password" runat="server" Text="Password"></asp:Label><br />
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group" style="padding-top:20px;">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary"/><br /><br />
                                <a href="/Login.aspx" class="btn btn-danger">Login</a>
                            </div>
                        </div>
                    </div>
                 </div>
                 <div class="col-sm-4"></div>
             </div>
             <div class="row">
                 <div class="col-sm-12 text-center">
                    <asp:Label ID="lblConfirmMessage" runat="server" ForeColor="Green"></asp:Label><br />
                    <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
                 </div>
             </div>
        </div>
    </form>
</body>
</html>
