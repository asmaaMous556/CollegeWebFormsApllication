<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPageSupervisor.aspx.cs" Inherits="CollegeWebFormApp.LoginPageSupervisor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 291px;
        }
        .auto-style2 {
            height: 76px;
        }
        .auto-style3 {
            height: 85px;
        }
        .auto-style4 {
            height: 94px;
            background-color: #F0F8FF;
        }
        .auto-style5 {
            height: 76px;
            width: 346px;
        }
        .auto-style6 {
            height: 85px;
            width: 346px;
            background-color: #F0F8FF;
        }
        .auto-style8 {
            height: 76px;
            width: 290px;
            font-size: large;
        }
        .auto-style3{
            background-color:aliceblue;
        }
        .auto-style9 {
            height: 85px;
            width: 290px;
            font-size: large;
            background-color: #F0F8FF;
        }
        .auto-style10 {
            height: 94px;
            width: 290px;
            background-color: #F0F8FF;
        }
        .auto-style11 {
            margin-left: 33px;
            font-size: large;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            width: 254px;
            height: 153px;
        }
        .auto-style14 {
            height: 94px;
            width: 346px;
            background-color: #F0F8FF;
        }
    </style>
</head>
<body style="height: 448px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
                    <img alt="" class="auto-style13" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style5"><span class="auto-style12">Supervisor Log in Page</span><br />
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox_name" runat="server" CssClass="auto-style12"></asp:TextBox>
                </td>
                <td class="auto-style3" ></td>
            </tr>
            <tr>
                <td class="auto-style10"><span class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID</span><br class="auto-style12" />
                    <br class="auto-style12" />
                    <br class="auto-style12" />
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox_Id" runat="server" TextMode="Password" OnTextChanged="TextBox_Id_TextChanged" CssClass="auto-style12"></asp:TextBox>
                    <br class="auto-style12" />
                    <br class="auto-style12" />
                    <br class="auto-style12" />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" Visible="False" CssClass="auto-style12"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="37px" OnClick="Button1_Click" Text="Log in" Width="87px" />
                    <br class="auto-style12" />
                    <br class="auto-style12" />
                    <br class="auto-style12" />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegisterPageSupervisor.aspx" CssClass="auto-style12">Register here</asp:HyperLink>
                    <span class="auto-style12">&nbsp;if you&#39;re not registered !</span><br class="auto-style12" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
