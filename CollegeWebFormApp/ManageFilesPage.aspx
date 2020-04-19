<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageFilesPage.aspx.cs" Inherits="CollegeWebFormApp.BrowseAvalableFiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 204px;
            margin-bottom: 54px;
        }
        .auto-style2 {
            margin-left: 328px;
            font-size: large;
        }
        .auto-style3 {
            margin-left: 332px;
            font-size: large;
        }
        .auto-style4 {
            margin-left: 335px;
            font-size: large;
        }
        .auto-style5 {
            width: 77px;
            height: 220px;
        }
        .auto-style6 {
            width: 77px;
            height: 136px;
        }
        .auto-style7 {
            height: 136px;
        }
        .auto-style8 {
            width: 631px;
            height: 220px;
        }
        .auto-style9 {
            height: 136px;
            width: 631px;
        }
        .auto-style10 {
            width: 254px;
            height: 153px;
        }
        .auto-style11 {
            width: 77px;
            height: 107px;
        }
        .auto-style12 {
            width: 631px;
            height: 107px;
        }
        .auto-style13 {
            height: 107px;
        }
        .auto-style14 {
            height: 220px;
        }
        .auto-style92 {
            height: 88px;
            width: 238px;
            font-size: large;
            margin-top: 27px;
            margin-left: 14px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <img alt="logo" class="auto-style10" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style8">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button6" runat="server" BackColor="AliceBlue" CssClass="auto-style92" Height="41px" Text="Home Page" Width="126px" OnClick="Button6_Click" />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btn_proposed_ideas" BackColor="AliceBlue" runat="server" CssClass="auto-style2" Text="Proposed Ideas" Width="154px" OnClick="btn_proposed_ideas_Click1" />
                </td>
                <td class="auto-style14">
                    </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style9">
                    <br />
                    <asp:Button ID="btn_templates" runat="server" BackColor="AliceBlue" CssClass="auto-style3" Text="Templates" Width="153px" OnClick="btn_templates_Click" />
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <br />
                    <br />
                    <asp:Button ID="btn_guidlines" runat="server" BackColor="AliceBlue" CssClass="auto-style4" Text="Guidelines" Width="147px" OnClick="btn_guidlines_Click" />
                </td>
                <td class="auto-style13"></td>
            </tr>
        </table>
    </form>
</body>
</html>
