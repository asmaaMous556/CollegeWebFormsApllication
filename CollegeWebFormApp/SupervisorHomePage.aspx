<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorHomePage.aspx.cs" Inherits="CollegeWebFormApp.SupervisorHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 458px;
        }
        .auto-style2 {
            width: 312px;
            font-size: large;
        }
        .auto-style3 {
            width: 162px;
            font-size: large;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
            width: 576px;
            height: 83px;
        }
        .auto-style6 {
            width: 576px;
        }
        .auto-style7 {
            width: 254px;
            height: 153px;
        }
        .auto-style8 {
            width: 312px;
            font-size: large;
            height: 83px;
        }
        .auto-style9 {
            width: 162px;
            font-size: large;
            height: 83px;
        }
        .auto-style10 {
            height: 83px;
        }
        .auto-style11 {
            width: 312px;
            font-size: large;
            height: 77px;
        }
        .auto-style12 {
            width: 162px;
            font-size: large;
            height: 77px;
        }
        .auto-style13 {
            width: 576px;
            height: 77px;
        }
        .auto-style14 {
            height: 77px;
        }
        .auto-style15 {
            width: 312px;
            font-size: large;
            height: 64px;
        }
        .auto-style16 {
            width: 162px;
            font-size: large;
            height: 64px;
        }
        .auto-style17 {
            width: 576px;
            height: 64px;
        }
        .auto-style18 {
            height: 64px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <img alt="" class="auto-style7" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style9">
                        Supervisor Name:</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style13">
                        <asp:Button ID="btn_manage_transaction" runat="server" OnClick="Button1_Click" BackColor="AliceBlue" Text="Manage Transactions" Width="189px" CssClass="auto-style4" Height="36px" />
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style17">
                        <asp:Button ID="btn_assign_work" runat="server" BackColor="AliceBlue" OnClick="Button2_Click" Text="Assign Work" Width="187px" CssClass="auto-style4" Height="35px" />
                    </td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="btn_Contact" runat="server" BackColor="AliceBlue" Text="Contacts" Width="187px" OnClick="btn_Contact_Click" CssClass="auto-style4" Height="36px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="btn_viw_event" runat="server" BackColor="AliceBlue" Text="View Event" Width="186px" OnClick="btn_viw_event_Click" CssClass="auto-style4" Height="36px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
