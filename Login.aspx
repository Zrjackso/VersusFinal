<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VersusFinal3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Versus Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body style="background-color:#eaeaea;">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row" style="padding-top:50px;">
                <div class="col-sm-12 text-center">
                    <img src="versus_logo.jpeg" style="max-width:200px;"/>
                </div>
            </div>
            <div class="row" style="padding-top:50px;" >
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="card" style="border-radius: 5px; background-color:#FFFFFF; -webkit-box-shadow: 0px 1px 8px 0px rgba(153,153,153,1); -moz-box-shadow: 0px 1px 8px 0px rgba(153,153,153,1); box-shadow: 0px 1px 8px 0px rgba(153,153,153,1);"">
                        <div class="card-body">
                            <div class="form-group">
                                <asp:Label ID="Username" runat="server" Text="Username"></asp:Label><br />
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Password" runat="server" Text="Password"></asp:Label><br />
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="row" style="padding-top:20px;">
                                <div class="col-sm-6 text-start"><a href="/Index.aspx" class="btn btn-success">Sign Up</a></div>
                                <div class="col-sm-6 text-end"><asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="btnSubmit_Click" CssClass="btn btn-primary" /></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4"></div>
            </div>
            <div class="row" style="padding-top:20px;">
                <div class="col-sm-12 text-center">
                    <asp:Label ID="Label3" runat="server" ></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
