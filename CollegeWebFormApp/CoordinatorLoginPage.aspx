<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoordinatorLoginPage.aspx.cs" Inherits="CollegeWebFormApp.CoordinatorLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 154px;
        }
        .auto-style7 {
            width: 145px;
            height: 72px;
            background-color: white;
        }
        .auto-style8 {
            height: 72px;
            background-color:#F0F8FF;
        }
        .auto-style9 {
            width: 145px;
            height: 76px;
            font-size: large;
            background-color: white;
        }
        .auto-style10 {
            height: 76px;
            background-color: #F0F8FF;
        }
        .auto-style11 {
            width: 145px;
            height: 62px;
            font-size: large;
            background-color: white;
        }
        .auto-style12 {
            height: 62px;
            background-color: #F0F8FF;
        }
        .auto-style15 {
            width: 145px;
            height: 69px;
            font-size: large;
            background-color: white;
        }
        .auto-style16 {
            height: 69px;
            background-color: #F0F8FF;
        }
        .auto-style22 {
            width: 145px;
            height: 23px;
        }
        .auto-style23 {
            height: 23px;
        }
        .auto-style24 {
            width: 145px;
            height: 86px;
            font-size: large;
        }
        .auto-style25 {
            height: 86px;
        }
        .auto-style26 {
            font-size: large;
        }
        .auto-style27 {
            height: 86px;
            width: 481px;
            font-size: large;
        }
        .auto-style28 {
            height: 23px;
            width: 481px;
        }
        .auto-style29 {
            height: 69px;
            width: 481px;
            background-color: #F0F8FF;
        }
        .auto-style30 {
            height: 62px;
            width: 481px;
            background-color: #F0F8FF;
        }
        .auto-style31 {
            height: 76px;
            width: 481px;
            font-size: large;
            background-color: #F0F8FF;
        }
        .auto-style32 {
            height: 72px;
            width: 481px;
            background-color: #F0F8FF;
        }
        .auto-style33 {
            width: 254px;
            height: 153px;
        }
    </style>
</head>
<body style="height: 311px">
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style24">
                <img alt="" class="auto-style33" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
            <td class="auto-style27">Coordinator Log In Page</td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style28"></td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style29">
                ID</td>
            <td class="auto-style16">
                <asp:TextBox ID="txt_id" runat="server" CssClass="auto-style26"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style30">
                Name</td>
            <td class="auto-style12">
                <asp:TextBox ID="txt_name" runat="server" CssClass="auto-style26"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style31">
            &nbsp;&nbsp;Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtId_pass" runat="server" TextMode="Password" Width="164px" CssClass="auto-style26"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style32">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" Visible="False" CssClass="auto-style26"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" BackColor="AliceBlue" OnClick="Button1_Click" Text="Log In" CssClass="auto-style26" Height="38px" Width="77px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
