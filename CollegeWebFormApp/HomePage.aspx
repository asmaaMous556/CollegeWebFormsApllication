<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CollegeWebFormApp.student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 421px;
        }
        .auto-style2 {
            width: 104px;
        }
        .auto-style3 {
            margin-left: 293px;
            font-size: large;
        }
        .auto-style4 {
            margin-left: 290px;
            font-size: large;
        }
        .auto-style5 {
            margin-left: 292px;
            font-size: large;
        }
        .auto-style6 {
            width: 104px;
            height: 90px;
        }
        .auto-style7 {
            height: 90px;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            height: 90px;
            width: 747px;
        }
        .auto-style10 {
            width: 747px;
        }
        .auto-style11 {
            width: 254px;
            height: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        <img alt="" class="auto-style11" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style9">
                    </td>
                    <td class="auto-style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">
                        <br class="auto-style8" />
                        <br class="auto-style8" />
                        <asp:Button ID="Btn_reg_stu" runat="server" style="margin-left: 292px" BackColor="AliceBlue" Text="Log In As Student" Width="190px" OnClick="Btn_reg_stu_Click" CssClass="auto-style8" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">
                        <br class="auto-style8" />
                        <asp:Button ID="btn_reg_super" runat="server" CssClass="auto-style4"  BackColor="AliceBlue" Text="Log In  As Supervisor" Width="196px" OnClick="btn_reg_super_Click" />
                        <br class="auto-style8" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">
                        <br class="auto-style8" />
                        <asp:Button ID="Btn_login" runat="server" CssClass="auto-style5"  BackColor="AliceBlue" Text="Log In As Coordinator" Width="196px" OnClick="Btn_login_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">
                        <br class="auto-style8" />
                        <asp:Button ID="btn_repo" runat="server" CssClass="auto-style3"  BackColor="AliceBlue" Text="Repository" Width="195px" OnClick="btn_repo_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
