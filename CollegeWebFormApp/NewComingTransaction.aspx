<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewComingTransaction.aspx.cs" Inherits="CollegeWebFormApp.NewComing_transaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 288px;
        }
        .auto-style2 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            height: 119px;
        }
        .auto-style4 {
            margin-left: 3px;
            font-size: large;
        }
        .auto-style5 {
            height: 119px;
            width: 274px;
        }
        .auto-style6 {
            height: 99px;
        }
        .auto-style7 {
            height: 99px;
            width: 405px;
        }
        .auto-style8 {
            width: 254px;
            height: 153px;
        }
        .auto-style13 {
            height: 101px;
            font-size: large;
            width: 312px;
        }
        .auto-style14 {
            font-size: large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">
                        <img alt="" class="auto-style8" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style3">
                                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Height="44px" BackColor="AliceBlue" OnClick="Button2_Click" Text="Evaluate As Supervisor" Width="234px" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button5" runat="server" Height="43px" OnClick="Button5_Click" BackColor="AliceBlue" Text="Evaluate As Committee" Width="242px" CssClass="auto-style14" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
