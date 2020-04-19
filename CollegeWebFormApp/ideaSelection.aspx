<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ideaSelection.aspx.cs" Inherits="CollegeWebFormApp.ideaSelection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 78px;
        }
        .auto-style3 {
            height: 76px;
        }
        .auto-style4 {
            height: 81px;
        }
        .auto-style5 {
            height: 70px;
        }
        .auto-style6 {
            height: 70px;
            width: 177px;
        }
        .auto-style7 {
            height: 81px;
            width: 177px;
        }
        .auto-style8 {
            height: 78px;
            width: 177px;
        }
        .auto-style9 {
            height: 76px;
            width: 177px;
        }
        .auto-style10 {
            margin-left: 84px;
        }
        .auto-style11 {
            margin-left: 190px;
        }
        .auto-style12 {
            margin-left: 434px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">Idea selection</td>
                <td class="auto-style5">Name :<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="35px" OnClick="Button1_Click" Text="Home Page" Width="86px" />
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style4">
                    <asp:TextBox ID="ContentOfIdea" runat="server" CssClass="auto-style10" Height="52px" OnTextChanged="TextBox1_TextChanged" Width="325px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style2">
                    <asp:Button ID="btn_send" runat="server" CssClass="auto-style11" Height="45px" OnClick="btn_send_Click" Text="Send" Width="95px" />
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="#009900" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
        </table>
    </form>
</body>
</html>
