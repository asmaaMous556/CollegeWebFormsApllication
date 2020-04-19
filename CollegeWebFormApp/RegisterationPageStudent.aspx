<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterationPageStudent.aspx.cs" Inherits="CollegeWebFormApp.StudentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 222px;
        }
        .auto-style3 {
            margin-left: 6px;
        }
        .auto-style8 {
            margin-left: 140px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
        .auto-style11 {
            width: 220px;
            height: 64px;
        }
        .auto-style12 {
            width: 234px;
            height: 64px;
        }
        .auto-style22 {
            width: 219px;
            height: 78px;
        }
        .auto-style24 {
            width: 222px;
            height: 95px;
        }
        .auto-style28 {
            height: 78px;
        }
        .auto-style32 {
            height: 64px;
        }
        .auto-style33 {
            width: 222px;
            height: 86px;
        }
        .auto-style34 {
            height: 86px;
        }
        .auto-style35 {
            height: 60px;
        }
        .auto-style36 {
            margin-left: 182px;
        }
        .auto-style37 {
            height: 60px;
            width: 425px;
        }
        .auto-style38 {
            width: 425px;
        }
        .auto-style39 {
            height: 86px;
            width: 234px;
        }
        .auto-style41 {
            width: 234px;
        }
        .auto-style42 {
            height: 78px;
            width: 234px;
        }
        .auto-style43 {
            height: 95px;
            width: 234px;
        }
        .auto-style44 {
            height: 95px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style37">&nbsp;Welcome to student registeration page</td>
                <td class="auto-style35"></td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style38">Group
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style36">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style33">User-Name</td>
                <td class="auto-style39">
                    <asp:TextBox ID="TextBox_name" runat="server" CssClass="auto-style10" OnTextChanged="TextBox1_TextChanged" Width="144px"></asp:TextBox>
                </td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style24">E-mail</td>
                <td class="auto-style43">
                    &nbsp;<asp:TextBox ID="TextBox_email" runat="server" CssClass="auto-style10" Width="144px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td class="auto-style44"></td>
            </tr>
            <tr>
                <td class="auto-style2">Cell Phone</td>
                <td class="auto-style41">
                    <asp:TextBox ID="TextBox_cellPhone" runat="server" CssClass="auto-style10" Width="144px"></asp:TextBox>
                    </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style22">Password</td>
            <td class="auto-style42">
                    <asp:TextBox ID="TextBox_pass" runat="server" CssClass="auto-style3" TextMode="Password" Width="144px"></asp:TextBox>
                </td>
            <td class="auto-style28"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style8" OnClick="Button1_Click" Text="Register" />
            </td>
            <td class="auto-style32">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
