<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoutingForFillregisteration.aspx.cs" Inherits="CollegeWebFormApp.RoutingForFillregisteration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 412px;
        }
        .auto-style2 {
            width: 100%;
            height: 286px;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            width: 309px;
        }
        .auto-style4 {
            width: 329px;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            width: 254px;
            height: 153px;
        }
        .auto-style18 {
            font-size: large;
        }
        .auto-style30 {
            font-size: large;
            margin-left: 0px;
        }
    </style>
</head>
<body style="height: 415px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        <img alt="" class="auto-style6" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style4"> <span class="auto-style18">
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style18" Height="40px" Text="Home Page" Width="117px" OnClick="Button4_Click" />
                        <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style30" Height="40px" Text="Prevoius Page" Width="167px" OnClick="Button3_Click" />
                    </span>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" BackColor="AliceBlue" Height="40px" Text="Fill Registeration for Supervisor" Width="264px" CssClass="auto-style5" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" Height="40px" OnClick="Button2_Click" Text="Fill Registeration for Student" Width="252px" CssClass="auto-style5" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
