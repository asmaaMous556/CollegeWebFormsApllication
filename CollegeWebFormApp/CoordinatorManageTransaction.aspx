<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoordinatorManageTransaction.aspx.cs" Inherits="CollegeWebFormApp.CoordinatorManageTransaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 114px;
        }
        .auto-style3 {
            height: 150px;
        }
        .auto-style4 {
            height: 114px;
            width: 470px;
        }
        .auto-style5 {
            height: 150px;
            width: 470px;
        }
        .auto-style6 {
            margin-left: 41px;
            font-size: large;
        }
        .auto-style7 {
            font-size: large;
            margin-top: 28px;
        }
        .auto-style8 {
            width: 254px;
            height: 153px;
            margin-left: 4px;
        }
        .auto-style18 {
            height: 107px;
            width: 544px;
            font-size: large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <img alt="" class="auto-style8" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style18" Height="40px" Text="Home Page" Width="117px" OnClick="Button3_Click" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" BackColor="AliceBlue" runat="server" Height="46px" OnClick="Button1_Click" Text="Manage Incoming Transaction" Width="368px" CssClass="auto-style7" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" BackColor="AliceBlue" runat="server" CssClass="auto-style6" Height="46px" OnClick="Button2_Click" Text="Manage Out-coming Transaction" Width="341px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style3"></td>
            </tr>
        </table>
    </form>
</body>
</html>
