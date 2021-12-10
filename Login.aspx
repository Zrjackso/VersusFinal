<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VersusFinal3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Versus Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <asp:Label ID="Label2" runat="server" Text="Log In!"></asp:Label>
                <tr>
                <td>
                    <asp:Label ID="Username" runat="server" Text="Username"></asp:Label>

                </td>

                <td colspan="2">
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>

                </td>

                <td colspan="2">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td> </td>
                <td colspan="2"> 
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
            </tr>
                

            </table>
            


        </div>
        <asp:Label ID="Label3" runat="server" Text="Log In!"></asp:Label>
    </form>
</body>
</html>
