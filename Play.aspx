<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Play.aspx.cs" Inherits="VersusFinal3.Play" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style> 
            #leftbox {
                float:left; 
                
                width:40%;
                
            }
            #middlebox{
                float:left; 
                
                width:20%;
                
            }
            #rightbox{
                float:right;
               
                width:40%;
                
            }
            
        </style> 
</head>
<body>
    <form id="form1" runat="server">
        <div  id= "leftbox"; style="height: 600px; width: 300px; overflow: auto;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="Player" HeaderText="Player" SortExpression="Player" />
                    <asp:BoundField DataField="Tm" HeaderText="Tm" SortExpression="Tm" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Pos" HeaderText="Pos" SortExpression="Pos" />
                    <asp:BoundField DataField="G" HeaderText="G" SortExpression="G" />
                    <asp:BoundField DataField="GS" HeaderText="GS" SortExpression="GS" />
                    <asp:BoundField DataField="Cmp" HeaderText="Cmp" SortExpression="Cmp" />
                    <asp:BoundField DataField="Att" HeaderText="Att" SortExpression="Att" />
                    <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
                    <asp:BoundField DataField="Yds" HeaderText="Yds" SortExpression="Yds" />
                    <asp:BoundField DataField="TD" HeaderText="TD" SortExpression="TD" />
                    <asp:BoundField DataField="column2" HeaderText="column2" SortExpression="column2" />
                    <asp:BoundField DataField="Int" HeaderText="Int" SortExpression="Int" />
                    <asp:BoundField DataField="column3" HeaderText="column3" SortExpression="column3" />
                    <asp:BoundField DataField="column4" HeaderText="column4" SortExpression="column4" />
                    <asp:BoundField DataField="Lng" HeaderText="Lng" SortExpression="Lng" />
                    <asp:BoundField DataField="column5" HeaderText="column5" SortExpression="column5" />
                    <asp:BoundField DataField="column6" HeaderText="column6" SortExpression="column6" />
                    <asp:BoundField DataField="column7" HeaderText="column7" SortExpression="column7" />
                    <asp:BoundField DataField="column8" HeaderText="column8" SortExpression="column8" />
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                    <asp:BoundField DataField="QBR" HeaderText="QBR" SortExpression="QBR" />
                    <asp:BoundField DataField="Sk" HeaderText="Sk" SortExpression="Sk" />
                </Columns>

                <selectedrowstyle backcolor="LightCyan"
         forecolor="DarkBlue"
         font-bold="true"/> 

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTF2156ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:PROJECTF2156ConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [Player], [Tm], [Age], [Pos], [G], [GS], [Cmp], [Att], [Cmp%] AS column1, [Yds], [TD], [TD%] AS column2, [Int], [Int%] AS column3, [1D] AS column4, [Lng], [Y/A] AS column5, [AY/A] AS column6, [Y/C] AS column7, [Y/G] AS column8, [Rate], [QBR], [Sk] FROM [Passing]"></asp:SqlDataSource>
        </div>
        <div id ="middlebox";>

            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Completions</asp:ListItem>
                <asp:ListItem>Attempts</asp:ListItem>
                <asp:ListItem>Yards</asp:ListItem>
                <asp:ListItem>Touchdowns</asp:ListItem>
                <asp:ListItem>Interceptions</asp:ListItem>
                <asp:ListItem>QBR</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>

         <div  id= "rightbox"; style="height: 600px; width: 300px; overflow: auto;">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="Player" HeaderText="Player" SortExpression="Player" />
                    <asp:BoundField DataField="Tm" HeaderText="Tm" SortExpression="Tm" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Pos" HeaderText="Pos" SortExpression="Pos" />
                    <asp:BoundField DataField="G" HeaderText="G" SortExpression="G" />
                    <asp:BoundField DataField="GS" HeaderText="GS" SortExpression="GS" />
                    <asp:BoundField DataField="Cmp" HeaderText="Cmp" SortExpression="Cmp" />
                    <asp:BoundField DataField="Att" HeaderText="Att" SortExpression="Att" />
                    <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
                    <asp:BoundField DataField="Yds" HeaderText="Yds" SortExpression="Yds" />
                    <asp:BoundField DataField="TD" HeaderText="TD" SortExpression="TD" />
                    <asp:BoundField DataField="column2" HeaderText="column2" SortExpression="column2" />
                    <asp:BoundField DataField="Int" HeaderText="Int" SortExpression="Int" />
                    <asp:BoundField DataField="column3" HeaderText="column3" SortExpression="column3" />
                    <asp:BoundField DataField="column4" HeaderText="column4" SortExpression="column4" />
                    <asp:BoundField DataField="Lng" HeaderText="Lng" SortExpression="Lng" />
                    <asp:BoundField DataField="column5" HeaderText="column5" SortExpression="column5" />
                    <asp:BoundField DataField="column6" HeaderText="column6" SortExpression="column6" />
                    <asp:BoundField DataField="column7" HeaderText="column7" SortExpression="column7" />
                    <asp:BoundField DataField="column8" HeaderText="column8" SortExpression="column8" />
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                    <asp:BoundField DataField="QBR" HeaderText="QBR" SortExpression="QBR" />
                    <asp:BoundField DataField="Sk" HeaderText="Sk" SortExpression="Sk" />
                </Columns>

                <selectedrowstyle backcolor="LightCyan"
         forecolor="DarkBlue"
         font-bold="true"/> 

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTF2156ConnectionString1 %>" ProviderName="<%$ ConnectionStrings:PROJECTF2156ConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [Player], [Tm], [Age], [Pos], [G], [GS], [Cmp], [Att], [Cmp%] AS column1, [Yds], [TD], [TD%] AS column2, [Int], [Int%] AS column3, [1D] AS column4, [Lng], [Y/A] AS column5, [AY/A] AS column6, [Y/C] AS column7, [Y/G] AS column8, [Rate], [QBR], [Sk] FROM [Passing]"></asp:SqlDataSource>
        </div>


        

    </form>
</body>
</html>
