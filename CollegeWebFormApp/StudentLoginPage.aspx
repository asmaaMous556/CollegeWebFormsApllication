<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLoginPage.aspx.cs" Inherits="CollegeWebFormApp.StudentLoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 522px;
        }
        .auto-style2 {
            width: 100%;
            height: 153px;
        }
        .auto-style3 {
            margin-left: 146px;
            font-size: large;
        }
        .auto-style4 {
            width: 100%;
            height: 158px;
            border: 1px solid #ffffff;
        }
        .auto-style5 {
            height: 37px;
        }
        .auto-style6 {
            width: 636px;
        }
        .auto-style7 {
            width: 636px;
            height: 98px;
        }
        .auto-style8 {
            height: 98px;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            height: 37px;
            background-color: #F0F8FF;
        }
        .auto-style12 {
            background-color: #F0F8FF;
            width: 113px;
        }
        .auto-style13 {
            font-size: large;
            background-color: #F0F8FF;
        }
        .auto-style25 {
            width: 254px;
            height: 153px;
        }
        .auto-style26 {
            height: 37px;
            background-color: #F0F8FF;
            width: 113px;
        }
        .auto-style27 {
            width: 171px;
        }
        .auto-style28 {
            height: 37px;
            width: 171px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style7">
                        <img alt="logo" class="auto-style25" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"><br />
                        <br />
                        <br />
                    </td>
                    <td>
                        <br />
                        <br />
                        <br />
                        <br />
&nbsp;</td>
                </tr>
            </table>
            <br />
            <table class="auto-style4">
                <tr>
                    <td class="auto-style27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style13">Name</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox_name" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style13">ID</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox_Id" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style28"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style26">
                        <asp:Button BackColor="AliceBlue" ID="Button1" runat="server" CssClass="auto-style3" Height="39px" OnClick="Button1_Click" Text="Log In" Width="94px" />
                        </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" Visible="False" CssClass="auto-style10"></asp:Label>
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
