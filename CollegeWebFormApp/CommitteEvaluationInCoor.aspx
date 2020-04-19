<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommitteEvaluationInCoor.aspx.cs" Inherits="CollegeWebFormApp.CommitteEvaluationInCoor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 525px;
        }
        .auto-style2 {
            width: 100%;
            height: 268px;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            width: 726px;
        }
        .auto-style4 {
            height: 54px;
        }
        .auto-style5 {
            width: 726px;
            height: 54px;
        }
        .auto-style6 {
            height: 80px;
        }
        .auto-style7 {
            width: 726px;
            height: 80px;
        }
        .auto-style8 {
            width: 254px;
            height: 153px;
        }
        .auto-style9 {
            height: 80px;
            width: 154px;
        }
        .auto-style10 {
            width: 154px;
        }
        .auto-style11 {
            height: 54px;
            width: 154px;
        }
        .auto-style14 {
            height: 45px;
        }
        .auto-style25 {
            font-size: large;
        }
        .auto-style28 {
            height: 67px;
            width: 172px;
            font-size: large;
        }
        .auto-style27 {
            height: 61px;
            width: 218px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style9">Committee Evaluation</td>
                    <td class="auto-style7">
                        
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style28" Height="40px" Text="Home Page" Width="117px" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style27" Height="40px" Text="Previous Page" Width="189px" OnClick="Button5_Click" />
                    </td>
                    <td class="auto-style6">
                        <img alt="" class="auto-style8" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="380px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="SupervisorId" HeaderText="ID" />
                                <asp:BoundField DataField="SupervisorName" HeaderText="Name" />
                                <asp:BoundField DataField="dateOfTransaction" HeaderText="Date" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton  OnClick="Details" ID="LinkButton1" runat="server" CommandArgument='<%# Eval("SupervisorId") %>'>Details</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style4"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
