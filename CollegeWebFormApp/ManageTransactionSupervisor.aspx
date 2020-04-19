<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTransactionSupervisor.aspx.cs" Inherits="CollegeWebFormApp.ManageTransactionSupervisor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 83px;
        }
        .auto-style4 {
            height: 96px;
        }
        .auto-style5 {
            height: 100px;
        }
        .auto-style6 {
            height: 83px;
            width: 352px;
        }
        .auto-style7 {
            height: 100px;
            width: 352px;
        }
        .auto-style8 {
            height: 96px;
            width: 352px;
        }
        .auto-style9 {
            height: 83px;
            width: 386px;
        }
        .auto-style10 {
            height: 100px;
            width: 386px;
        }
        .auto-style11 {
            height: 96px;
            width: 386px;
        }
        .auto-style12 {
            width: 254px;
            height: 153px;
        }
        .auto-style13 {
            font-size: large;
        }
    </style>
</head>
<body style="height: 399px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <img alt="" class="auto-style12" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style6">
                                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" BackColor="AliceBlue" Text="In-coming Transactions" Width="212px" Height="49px" CssClass="auto-style13" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" BackColor="AliceBlue" Text="Craete Transaction" Width="232px" Height="51px" CssClass="auto-style13" />
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style8"></td>
                <td class="auto-style4"></td>
            </tr>
        </table>
    </form>
</body>
</html>
