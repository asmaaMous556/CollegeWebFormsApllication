<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHomePage.aspx.cs" Inherits="CollegeWebFormApp.StudentHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            margin-left: 3px;
            font-size: large;
        }
        .auto-style4 {
            width: 100%;
            height: 172px;
        }
        .auto-style11 {
            width: 360px;
            height: 77px;
        }
        .auto-style12 {
            height: 77px;
        }
        .auto-style14 {
            height: 67px;
        }
        .auto-style16 {
            height: 79px;
        }
        .auto-style19 {
            height: 67px;
            width: 342px;
        }
        .auto-style20 {
            height: 79px;
            width: 342px;
        }
        .auto-style21 {
            width: 342px;
        }
        .auto-style23 {
            height: 113px;
            width: 342px;
        }
        .auto-style24 {
            height: 113px;
        }
        .auto-style25 {
            width: 254px;
            height: 153px;
        }
        .auto-style26 {
            height: 113px;
            width: 362px;
            font-size: large;
        }
        .auto-style27 {
            height: 67px;
            width: 362px;
        }
        .auto-style28 {
            height: 79px;
            width: 362px;
        }
        .auto-style29 {
            width: 362px;
        }
        .auto-style30 {
            font-size: large;
        }
        .auto-style32 {
            width: 325px;
            height: 77px;
        }
        .auto-style33 {
            width: 325px;
        }
        .auto-style34 {
            width: 360px;
        }
    </style>
</head>
<body style="height: 631px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style26">
                    <img alt="logo" class="auto-style25" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27"><span class="auto-style30">Name:&nbsp;&nbsp; </span><asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style30"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:Button ID="btn_view_event" BackColor="AliceBlue" runat="server" Text="View Event" Width="185px" OnClick="btn_view_event_Click" CssClass="auto-style30" />
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style20">
                    <asp:Button ID="btn_available_files" BackColor="AliceBlue" runat="server" CssClass="auto-style3" OnClick="Button2_Click" Text="Available Files" Width="180px" />
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style21">
                    <asp:Button ID="btn_submit" runat="server" BackColor="AliceBlue"  Text="Submit Assignment" Width="185px" OnClick="btn_submit_Click" CssClass="auto-style30" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style4">
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style32">
                    <asp:Button ID="btn_manage_transaction" BackColor="AliceBlue" runat="server" Text="Manage Transactions " Width="185px" OnClick="btn_manage_transaction_Click" CssClass="auto-style30" />
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style33">
                    <asp:Button ID="btn_log_out" runat="server" BackColor="AliceBlue" Text="Log Out" Width="184px" OnClick="btn_log_out_Click" CssClass="auto-style30" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
