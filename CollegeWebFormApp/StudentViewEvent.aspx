<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentViewEvent.aspx.cs" Inherits="CollegeWebFormApp.StudentViewEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 493px;
        }
        .auto-style3 {
            height: 107px;
        }
        .auto-style5 {
            height: 107px;
            width: 241px;
            font-size: large;
        }
        .auto-style6 {
            width: 241px;
        }
        .auto-style7 {
            margin-left: 0px;
            font-size: large;
        }
        .auto-style8 {
            margin-left: 3px;
            font-size: large;
        }
        .auto-style10 {
            height: 107px;
            width: 572px;
        }
        .auto-style11 {
            width: 572px;
        }
        .auto-style12 {
            width: 254px;
            height: 153px;
        }
        .auto-style13 {
            height: 157px;
            width: 241px;
        }
        .auto-style14 {
            height: 157px;
            width: 572px;
        }
        .auto-style15 {
            height: 157px;
        }
        .auto-style16 {
            font-size: large;
        }
    </style>
</head>
<body style="height: 655px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">
                    <img alt="logo" class="auto-style12" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style8" Height="45px" OnClick="Button2_Click" Text="Back to home" Width="145px" />
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Event Name</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style16">
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" BackColor="AliceBlue" Height="41px" Text="View Details" Width="124px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style11">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="178px" Width="417px" CssClass="auto-style16">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
