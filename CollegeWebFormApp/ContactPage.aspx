<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="CollegeWebFormApp.ContactPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 541px;
        }
        .auto-style2 {
            width: 100%;
            height: 410px;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            width: 325px;
            height: 59px;
        }
        .auto-style4 {
            width: 175px;
            height: 59px;
            font-size: large;
        }
        .auto-style5 {
            width: 175px;
            height: 216px;
        }
        .auto-style6 {
            width: 325px;
            height: 216px;
        }
        .auto-style7 {
            height: 216px;
        }
        .auto-style8 {
            width: 175px;
            height: 148px;
            font-size: large;
        }
        .auto-style9 {
            width: 325px;
            height: 148px;
        }
        .auto-style10 {
            height: 148px;
        }
        .auto-style11 {
            width: 175px;
            height: 64px;
            font-size: large;
        }
        .auto-style12 {
            width: 325px;
            height: 64px;
        }
        .auto-style13 {
            height: 64px;
        }
        .auto-style14 {
            width: 175px;
            height: 74px;
            font-size: large;
        }
        .auto-style15 {
            width: 325px;
            height: 74px;
        }
        .auto-style16 {
            height: 74px;
        }
        .auto-style17 {
            width: 175px;
            height: 67px;
            font-size: large;
        }
        .auto-style18 {
            width: 325px;
            height: 67px;
        }
        .auto-style19 {
            height: 67px;
        }
        .auto-style20 {
            height: 59px;
        }
        .auto-style21 {
            width: 253px;
            height: 153px;
            margin-left: 0px;
        }
        .auto-style22 {
            font-size: large;
        }
        .auto-style23 {
            width: 175px;
            height: 74px;
            font-size: large;
            margin-left: 16px;
        }
    </style>
</head>
<body style="height: 518px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">
                        <img alt="" class="auto-style21" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style6">
                        <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style23" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Type Supervisor Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox_search" runat="server" Height="25px" Width="222px" CssClass="auto-style22"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" BackColor="AliceBlue" Text="Search for Email" Width="160px" CssClass="auto-style22" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">From</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox_from" runat="server" Height="31px" Width="228px" CssClass="auto-style22"></asp:TextBox>
                    </td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style14">To</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox_to" runat="server" Height="31px" Width="228px" CssClass="auto-style22"></asp:TextBox>
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style11">Subject</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox_subject" runat="server" Height="36px" Width="235px" CssClass="auto-style22"></asp:TextBox>
                    </td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style8">Email Body</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox_body" runat="server" Height="96px" TextMode="MultiLine" Width="289px" CssClass="auto-style22"></asp:TextBox>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_send" runat="server" Height="35px" OnClick="Button_send_Click" BackColor="AliceBlue" Text="Send" Width="125px" CssClass="auto-style22" />
        </div>
    </form>
</body>
</html>
