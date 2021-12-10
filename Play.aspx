<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Play.aspx.cs" Inherits="VersusFinal3.Play" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Versus Play Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> 
</head>
<body style="background-color:#eaeaea;">
    <form id="form1" runat="server">
        <div class="container-fluid">
        <div class="row" style="padding-bottom:30px; padding-top:30px;">
            <div class="col-sm-4 text-center">
                <h4>Player 1 Stats</h4>
            </div>
            <div class="col-sm-4 text-center">
            </div>
            <div class="col-sm-4 text-center">
                <h4>Player 2 Stats</h4>
            </div>
        </div>
        <div class="row">
        <div class="col-sm-4">
        <div  id="leftbox" style="height: 600px; overflow: auto; background-color:#FFF;">
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
        </div>
        <div class="col-sm-4 text-center">
            <div class="row" >
                <div class="col-sm-12">
                    <h3>Match Info</h3>
                </div>
            </div>
            <div class="row" style="padding-top:50px;">
            <div id ="middlebox" class="card" style="border-radius: 5px; background-color:#FFFFFF; -webkit-box-shadow: 0px 1px 8px 0px rgba(153,153,153,1); -moz-box-shadow: 0px 1px 8px 0px rgba(153,153,153,1); box-shadow: 0px 1px 8px 0px rgba(153,153,153,1);"">
                <div class="card-body">
                <div class="row" style="padding-top:10px;">
                    <div class="col-sm-6 text-center">
                        <div class="form-group">
                            <label>Bet On</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                                <asp:ListItem>Completions</asp:ListItem>
                                <asp:ListItem>Attempts</asp:ListItem>
                                <asp:ListItem>Yards</asp:ListItem>
                                <asp:ListItem>Touchdowns</asp:ListItem>
                                <asp:ListItem>Interceptions</asp:ListItem>
                                <asp:ListItem>QBR</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-sm-6">
                            <div class="form-group">
                                <label>Betting Week</label>
                                <select class="form-select">
                                    <option>Week 1</option>
                                    <option>Week 2</option>
                                    <option>Week 3</option>
                                    <option>Week 4</option>
                                    <option>Week 5</option>
                                    <option>Week 6</option>
                                    <option>Week 7</option>
                                    <option>Week 8</option>
                                    <option>Week 9</option>
                                    <option>Week 10</option>
                                    <option>Week 11</option>
                                    <option>Week 12</option>
                                    <option>Week 13</option>
                                    <option>Week 14</option>
                                    <option>Week 15</option>
                                    <option>Week 16</option>
                                    <option>Week 17</option>
                                    <option>Week 18</option>
                                </select> 
                            </div>
                    </div>
                </div>
                <div class="row" style="padding-top:50px;">
                    <div class="col-sm-4 text-start">
                    
                        <div class="form-group">
                            <label>Player 1</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Player 1 ID</label>
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <br />
                        <h5>Versus</h5>
                    </div>
                    <div class="col-sm-4 text-end">
                        <div class="form-group">
                            <label>Player 2</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Player 2 ID</label>
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row" style="padding-top:50px;">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4 text-center">
                        <div class="form-group">
                            <label>Bet Amount</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Place Bet" CssClass="btn btn-primary" />
                    </div>
                </div>
                </div>
                
            </div>
            </div>
            <div class="row" style="padding-top:20px;">
                <div class="col-sm-12 text-center">
                    <a href="/Homepage.aspx" class="btn btn-danger">Home Page</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4 text-end">
         <div  id="rightbox" style="height: 600px; overflow:auto; background-color:#FFF;">
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
        </div>
        </div>
        </div>

        

    </form>
</body>
</html>
