<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignWorkSupervisor.aspx.cs" Inherits="CollegeWebFormApp.AssignWorkSupervisor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style2 {
            height: 197px;
        }
        .auto-style3 {
            width: 254px;
            height: 153px;
        }
        .auto-style4 {
            height: 197px;
            width: 289px;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style14 {
            font-size: large;
            height: 210px;
            margin-left: 30px;
        }
        </style>
</head>
<body style="height: 488px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <img alt="" class="auto-style3" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style14" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" BackColor="AliceBlue" Height="43px" OnClick="Button1_Click" Text="Add Assigment" Width="173px" CssClass="auto-style5" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" Height="46px" OnClick="Button2_Click" Text="View Assigments" Width="165px" CssClass="auto-style5" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
