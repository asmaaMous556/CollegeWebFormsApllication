<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssigmentPageStudent.aspx.cs" Inherits="CollegeWebFormApp.AssigmentPageStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            height: 154px;
        }
        .auto-style4 {
            width: 100%;
            border: 1px solid #ffffff;
            height: 216px;
        }
        .auto-style5 {
            width: 320px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            width: 254px;
            height: 153px;
            margin-left: 0px;
        }
        .auto-style8 {
            height: 154px;
            width: 299px;
        }
        .auto-style13 {
            width: 254px;
            height: 153px;
            font-size: large;
            margin-left: 0px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style8">
                    <img alt="" class="auto-style7" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style3">
                    &nbsp;<asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                                &nbsp;</td>
            </tr>
        </table>
        <table class="auto-style4">
            <tr>
                <td>
                                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="47px" BackColor="AliceBlue"  OnClick="Button1_Click" Text="Submit Assigment" Width="176px" CssClass="auto-style6" />
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Height="48px" BackColor="AliceBlue" Text="View Assigment" Width="166px" OnClick="Button2_Click" CssClass="auto-style6" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
