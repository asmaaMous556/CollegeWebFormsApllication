<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageSeniorProjects.aspx.cs" Inherits="CollegeWebFormApp.ManageSeniorProjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 207px;
            border: 1px solid #ffffff;
        }
        .auto-style2 {
            height: 100px;
        }
        .auto-style3 {
            height: 100px;
            width: 439px;
        }
        .auto-style4 {
            width: 439px;
            height: 84px;
        }
        .auto-style5 {
            height: 84px;
        }
        .auto-style6 {
            height: 144px;
            width: 439px;
        }
        .auto-style7 {
            height: 144px;
        }
        .auto-style8 {
            width: 254px;
            height: 153px;
            margin-left: 3px;
        }
        .auto-style9 {
            font-size: large;
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
                <td class="auto-style3">
                    <img alt="" class="auto-style8" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style18"  Height="40px" Text="Home Page" Width="117px" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Height="55px" OnClick="Button1_Click" BackColor="AliceBlue" Text="Evaluate Results of Current Projects" Width="328px" CssClass="auto-style9" />
                    <br class="auto-style9" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" Height="57px" Text="Monitor The Progress of Current Projects" Width="361px"  BackColor="AliceBlue" OnClick="Button2_Click" CssClass="auto-style9" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
            </tr>
        </table>
    </form>
</body>
</html>
