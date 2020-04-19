<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPageSupervisor.aspx.cs" Inherits="CollegeWebFormApp.RegisterPageSupervisor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style8 {
            height: 192px;
            width: 319px;
        }
        .auto-style15 {
            height: 192px;
            width: 425px;
            font-size: large;
        }
        .auto-style14 {
            margin-left: 221px;
            margin-top: 0px;
            font-size: large;
        }
        .auto-style21 {
            height: 77px;
            width: 319px;
            font-size: large;
            background-color: #F0F8FF;
        }
        .auto-style22 {
            height: 77px;
            width: 425px;
            background-color: #F0F8FF;
        }
        .auto-style23 {
            height: 77px;
        }
        .auto-style24 {
            height: 70px;
            width: 319px;
            font-size: large;
            background-color: #F0F8FF;
        }
        .auto-style25 {
            height: 70px;
            width: 425px;
            background-color: #F0F8FF;
        }
        .auto-style26 {
            height: 70px;
        }
        .auto-style27 {
            height: 88px;
            width: 319px;
            font-size: large;
            background-color: #F0F8FF;
        }
        .auto-style28 {
            height: 88px;
            width: 425px;
            background-color: #F0F8FF;
        }
        .auto-style29 {
            height: 88px;
        }
        .auto-style30 {
            height: 84px;
            width: 319px;
            background-color: #F0F8FF;
        }
        .auto-style31 {
            height: 84px;
            width: 425px;
            background-color: #F0F8FF;
        }
        .auto-style32 {
            height: 84px;
        }
        .auto-style33 {
            font-size: large;
        }
        .auto-style34 {
            height: 192px;
        }
        .auto-style35 {
            width: 254px;
            height: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
                    <img alt="" class="auto-style35" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style15">Supervisor&#39;s Registeration Page</td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name</td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox_name" runat="server" CssClass="auto-style33"></asp:TextBox>
                </td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox_pass" runat="server" TextMode="Password" CssClass="auto-style33"></asp:TextBox>
                </td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email</td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox_email" runat="server" CssClass="auto-style33"></asp:TextBox>
                </td>
                <td class="auto-style29"></td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style31"><span class="auto-style33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:Button ID="But_register" runat="server" CssClass="auto-style14" BackColor="AliceBlue" Height="37px" OnClick="But_register_Click" Text="Register" Width="110px" />
                    <span class="auto-style33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span></td>
                <td class="auto-style32">
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style33" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
