<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="VersusFinal3.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
             <asp:HiddenField ID="hfUserID" runat="server" />
        <table>
            <tr>
                <td>
                    <asp:Label ID="FirstName" runat="server" Text="First Name"></asp:Label>

                </td>

                <td colspan="2">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>

                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="LastName" runat="server" Text="Last Name"></asp:Label>

                </td>

                <td colspan="2">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>

                </td>

                <td colspan="2">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="DateofBirth" runat="server" Text="Date of Birth"></asp:Label>

                </td>

                <td colspan="2">
                    <asp:TextBox ID="txtDob" runat="server"></asp:TextBox>

                </td>
            </tr>
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
            <tr>
                <td colspan="2">
                   <asp:Label ID="lblConfirmMessage" runat="server" Text="Label" ForeColor="Green"></asp:Label>
                </td>
            </tr><tr>                
                <td colspan="2">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="Label" ForeColor="Red"></asp:Label>

                </td>
            </tr>

        </table>



    </div>
    </form>
</body>
</html>
