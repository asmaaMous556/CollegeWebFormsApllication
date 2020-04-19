<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuperEvaluationInCoor.aspx.cs" Inherits="CollegeWebFormApp.SuperEvaluationInCoor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 600px;
        }
        .auto-style2 {
            width: 100%;
            height: 331px;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            width: 612px;
        }
        .auto-style4 {
            width: 192px;
        }
        .auto-style5 {
            width: 254px;
            height: 153px;
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            width: 192px;
            font-size: large;
        }
        .auto-style8 {
            width: 612px;
            font-size: large;
        }
        .auto-style19 {
            width: 254px;
            height: 153px;
            font-size: large;
            margin-left: 2px;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style17 {
            width: 157px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style7">Supervisor Evaluation &nbsp;</td>
                    <td class="auto-style8">
                        
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style19" Height="40px" Text="Home Page" Width="117px" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style17" Height="40px" Text="Previous Page" Width="189px" OnClick="Button5_Click" />
                    </td>
                    <td>
                        <img alt="" class="auto-style5" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="443px" CssClass="auto-style6">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="SupervisorId" HeaderText="ID" />
                                <asp:BoundField DataField="SupervisorName" HeaderText="Name" />
                                <asp:BoundField DataField="dateOfTransaction" HeaderText="Date" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" OnClick="Details" runat="server" CommandArgument='<%# Eval("SupervisorId") %>'>Details</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
