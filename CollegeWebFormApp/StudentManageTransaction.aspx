<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentManageTransaction.aspx.cs" Inherits="CollegeWebFormApp.ManageTransaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 316px;
        }
        .auto-style2 {
            height: 99px;
        }
        .auto-style5 {
            height: 74px;
        }
        .auto-style6 {
            height: 74px;
            width: 313px;
        }
        .auto-style8 {
            height: 99px;
            width: 313px;
        }
        .auto-style12 {
            height: 136px;
            width: 313px;
            font-size: large;
        }
        .auto-style13 {
            height: 136px;
        }
        .auto-style14 {
            margin-left: 58px;
            font-size: large;
        }
        .auto-style15 {
            margin-left: 50px;
            margin-top: 0px;
            font-size: large;
        }
        .auto-style16 {
            margin-left: 36px;
            margin-top: 0px;
            font-size: large;
        }
        .auto-style17 {
            height: 74px;
            width: 326px;
        }
        .auto-style18 {
            height: 136px;
            width: 326px;
        }
        .auto-style19 {
            height: 99px;
            width: 326px;
        }
        .auto-style20 {
            font-size: large;
        }
        .auto-style22 {
            width: 254px;
            height: 153px;
        }
        .auto-style23 {
            height: 136px;
            font-size: large;
        }
    </style>
</head>
<body style="height: 184px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                                    <br />
                    <img alt="" class="auto-style22" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style17">
                                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style23" Height="41px" Text="Home Page" Width="126px" OnClick="Button2_Click" />
                                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <h4 class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h4>
                    <h4 class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In-coming Transaction</h4>
                    <p class="auto-style20">
                        &nbsp;</p>
                </td>
                <td class="auto-style18">
                    <h4 class="auto-style20" hidden="hidden">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Transactions&nbsp;</h4>
                </td>
                <td class="auto-style13">
                    <h4 class="auto-style20">Out-coming Transactions</h4>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <br />
                    <asp:Button ID="Button5" BackColor="AliceBlue" runat="server" CssClass="auto-style16" Text="View" Width="159px" OnClick="Button5_Click" Height="40px" />
                </td>
                <td class="auto-style19">
                    <br />
                    <br />
                    <asp:Button ID="Btn_fill" BackColor="AliceBlue" runat="server" CssClass="auto-style14" OnClick="Button3_Click" Text="Fill Registeration" Width="217px" Height="48px" Visible="False" />
                    <span class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
                <td class="auto-style2">
                    <br />
                    <asp:Button ID="Button4" BackColor="AliceBlue" runat="server" CssClass="auto-style15" Height="44px" Text="View" Width="143px" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
