<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainOutComingTranCoor.aspx.cs" Inherits="CollegeWebFormApp.MainOutComingTranCoor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 281px;
        }
        .auto-style2 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            height: 117px;
        }
        .auto-style4 {
            height: 131px;
        }
        .auto-style5 {
            height: 66px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            height: 131px;
            font-size: large;
        }
        .auto-style8 {
            width: 254px;
            height: 153px;
            margin-left: 9px;
        }
        .auto-style9 {
            height: 66px;
            width: 329px;
        }
        .auto-style10 {
            height: 131px;
            width: 329px;
        }
        .auto-style11 {
            height: 117px;
            width: 329px;
        }
        .auto-style18 {
            height: 107px;
            width: 544px;
            font-size: large;
        }
        </style>
</head>
<body style="height: 525px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">
                        <img alt="" class="auto-style8" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style9">
                        
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style18" Height="40px" Text="Home Page" Width="117px" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style6" Height="40px" Text="Incoming Transaction" Width="189px" OnClick="Button5_Click" />
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Choose Transaction </td>
                    <td class="auto-style10">
                        
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style6">
                        <asp:ListItem Text="Idea Presentation"  Value="0" ></asp:ListItem>
                            <asp:ListItem Text="Supervisor Evaluation" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Committee Evaluation" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">
                        <asp:Button runat="server" Height="37px" Text="Show" BackColor="AliceBlue" Width="104px" OnClick="Unnamed1_Click" ID="Button1" CssClass="auto-style6" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style3"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
