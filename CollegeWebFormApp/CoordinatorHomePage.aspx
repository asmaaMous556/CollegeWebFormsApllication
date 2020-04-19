<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoordinatorHomePage.aspx.cs" Inherits="CollegeWebFormApp.CoordinatorHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 657px;
        }
        .auto-style2 {
            height: 60px;
        }
        .auto-style7 {
            height: 60px;
            width: 548px;
        }
        .auto-style12 {
            width: 548px;
            font-size: large;
        }
        .auto-style13 {
            margin-left: 173px;
            font-size: large;
        }
        .auto-style14 {
            margin-left: 169px;
            font-size: large;
        }
        .auto-style15 {
            margin-left: 172px;
            font-size: large;
        }
        .auto-style18 {
            height: 78px;
            width: 548px;
        }
        .auto-style19 {
            height: 78px;
        }
        .auto-style20 {
            height: 82px;
            width: 548px;
        }
        .auto-style21 {
            height: 82px;
        }
        .auto-style22 {
            height: 104px;
            width: 548px;
        }
        .auto-style23 {
            height: 104px;
        }
        .auto-style24 {
            height: 60px;
            width: 562px;
            direction: rtl;
        }
        .auto-style25 {
            height: 104px;
            width: 562px;
        }
        .auto-style26 {
            height: 82px;
            width: 562px;
        }
        .auto-style27 {
            height: 78px;
            width: 562px;
        }
        .auto-style29 {
            width: 562px;
        }
        .auto-style33 {
            width: 254px;
            height: 153px;
        }
        .auto-style34 {
            height: 87px;
            width: 548px;
        }
        .auto-style35 {
            height: 87px;
            width: 562px;
        }
        .auto-style36 {
            height: 87px;
        }
        .auto-style37 {
            height: 49px;
            width: 562px;
            font-size: large;
        }
        .auto-style38 {
            height: 49px;
            width: 548px;
            font-size: large;
        }
        .auto-style39 {
            font-size: large;
            margin-right: 376px;
        }
        .auto-style40 {
            height: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <br />
                        <img alt="" class="auto-style33" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style24">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style39" Height="40px" BackColor="AliceBlue" OnClick="Button2_Click" Text="Log In  Page" Width="152px" />
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style38">Coordinator Name :<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style37"></td>
                    <td class="auto-style40"></td>
                </tr>
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style25">
                        <asp:Button ID="Button_manage_files" runat="server" CssClass="auto-style13" Text="Manage File" Width="221px" BackColor="AliceBlue" OnClick="Button_manage_files_Click" Height="53px" />
                    </td>
                    <td class="auto-style23"></td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style26">
                        <asp:Button ID="Btn_manage_projects" runat="server" CssClass="auto-style14" Text="Manage Senior Projects" BackColor="AliceBlue" Width="225px" OnClick="Btn_manage_projects_Click" Height="56px" />
                    </td>
                    <td class="auto-style21"></td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style27">
                        <asp:Button ID="Button_manage_transactions" runat="server" CssClass="auto-style13" Text="Manage Transactions" BackColor="AliceBlue" Width="227px" OnClick="Button_manage_transactions_Click" Height="52px" />
                    </td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style34"></td>
                    <td class="auto-style35">
                        <asp:Button ID="Btn_manage_election" runat="server" CssClass="auto-style15" Text="Manage Election Schedule" BackColor="AliceBlue" Width="229px" OnClick="Btn_manage_election_Click" Height="48px" />
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style29">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style13" BackColor="AliceBlue" OnClick="Button1_Click" Text="Add Group" Width="229px" Height="48px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
