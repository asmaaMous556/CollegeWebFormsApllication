<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTransactionPageCoordinator.aspx.cs" Inherits="CollegeWebFormApp.ManageTransactionPageCoordinator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 15px;
            width: 804px;
        }
        .auto-style5 {
            height: 49px;
            width: 804px;
        }
        .auto-style6 {
            height: 42px;
            width: 804px;
        }
        .auto-style7 {
            height: 41px;
            width: 804px;
        }
        .auto-style8 {
            height: 38px;
        }
        .auto-style9 {
            height: 39px;
            width: 804px;
        }
        .auto-style10 {
            height: 62px;
            width: 804px;
        }
        .auto-style15 {
            height: 38px;
            width: 804px;
        }
        .auto-style16 {
            width: 804px;
        }
        .auto-style17 {
            margin-left: 105px;
            font-size: large;
        }
        .auto-style18 {
            font-size: large;
        }
        .auto-style19 {
            height: 114px;
            width: 804px;
        }
        .auto-style20 {
            width: 254px;
            height: 153px;
        }
        .auto-style21 {
            height: 114px;
            width: 780px;
        }
        .auto-style22 {
            height: 39px;
            width: 780px;
        }
        .auto-style23 {
            height: 62px;
            width: 780px;
        }
        .auto-style24 {
            height: 15px;
            width: 780px;
        }
        .auto-style25 {
            height: 49px;
            width: 780px;
        }
        .auto-style26 {
            height: 42px;
            width: 780px;
        }
        .auto-style27 {
            height: 41px;
            width: 780px;
        }
        .auto-style28 {
            height: 38px;
            width: 780px;
        }
        .auto-style29 {
            width: 780px;
        }
        .auto-style30 {
            font-size: large;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1"   runat="server"  >
        <table class="auto-style1">
            <tr>
                <td class="auto-style21">
                    <img alt="" class="auto-style20" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style18">
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style18" Height="40px" Text="Home Page" Width="117px" OnClick="Button4_Click" />
                    &nbsp;<asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style30" Height="40px" Text="Out Coming Transaction" Width="211px" OnClick="Button3_Click" />
                    </span>
                    </td>
                <td class="auto-style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"><span class="auto-style18">
                    <br />
                    <br />
                    Registeration Senior Project 1 (COIT498)</span><br class="auto-style18" />
                    <br class="auto-style18" />
                    <span class="auto-style18">Fill Registeration Transactions</span></td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23"><span class="auto-style18">Student Name :</span><asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style18">
                    </asp:DropDownList>
                    <asp:Button ID="btn_view" runat="server" BackColor="AliceBlue" CssClass="auto-style17" Text="View Transaction" OnClick="btn_view_Click" />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="594px" CssClass="auto-style18">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25"><span class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:Button ID="Button1" runat="server" BackColor="AliceBlue" OnClick="Button1_Click" Text="accept" CssClass="auto-style18" />
                    <span class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style18" Visible="False"></asp:Label>
                    <span class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:Button ID="Button2" runat="server" BackColor="AliceBlue" OnClick="Button2_Click" Text="Refuse" CssClass="auto-style18" />
                    <span class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
