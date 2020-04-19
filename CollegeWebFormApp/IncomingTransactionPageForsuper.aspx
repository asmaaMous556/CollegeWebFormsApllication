<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IncomingTransactionPageForsuper.aspx.cs" Inherits="CollegeWebFormApp.IncomingTransactionPageForsuper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 389px;
        }
        .auto-style2 {
            width: 100%;
            height: 213px;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            width: 308px;
        }
        .auto-style4 {
            width: 254px;
            height: 153px;
        }
        .auto-style5 {
            width: 339px;
        }
        .auto-style6 {
            width: 308px;
            height: 75px;
        }
        .auto-style7 {
            width: 339px;
            height: 75px;
        }
        .auto-style8 {
            height: 75px;
        }
        .auto-style9 {
            width: 308px;
            height: 110px;
            font-size: large;
        }
        .auto-style10 {
            width: 339px;
            height: 110px;
        }
        .auto-style11 {
            height: 110px;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            font-size: large;
        }
    </style>
</head>
<body style="height: 401px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">
                        <img alt="" class="auto-style4" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /><br />
                    </td>
                    <td class="auto-style5">
                                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style12" Height="43px" Text="Create Transaction" Width="175px" OnClick="Button2_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">Choose an Evaluation Role</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style12" Height="31px" Width="141px">
                            <asp:ListItem Text="As Supervisor" Value="0"></asp:ListItem>
                            <asp:ListItem Text="As Committee" Value="1"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="Button1" runat="server" Height="41px" Text="Show Transaction" BackColor="AliceBlue" Width="194px" OnClick="Button1_Click" CssClass="auto-style12" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
