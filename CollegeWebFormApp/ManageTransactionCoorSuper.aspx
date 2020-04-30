<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTransactionCoorSuper.aspx.cs" Inherits="CollegeWebFormApp.ManageTransactionCoorSuper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 592px;
        }
        .auto-style2 {
            width: 100%;
            height: 549px;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            width: 254px;
            height: 153px;
        }
        .auto-style4 {
            width: 249px;
        }
        .auto-style5 {
            width: 249px;
            height: 167px;
        }
        .auto-style6 {
            height: 167px;
        }
        .auto-style18 {
            font-size: large;
        }
        .auto-style30 {
            font-size: large;
            margin-left: 0px;
        }
        .auto-style17 {
            margin-left: 133px;
            font-size: large;
        }
        .auto-style31 {
            height: 167px;
            width: 465px;
        }
        .auto-style32 {
            width: 465px;
        }
        .auto-style33 {
            width: 249px;
            height: 103px;
        }
        .auto-style34 {
            width: 465px;
            height: 103px;
        }
        .auto-style35 {
            height: 103px;
        }
        .auto-style36 {
            width: 249px;
            height: 59px;
        }
        .auto-style37 {
            width: 465px;
            height: 59px;
        }
        .auto-style38 {
            height: 59px;
        }
        .auto-style39 {
            font-size: large;
            margin-left: 12px;
        }
    </style>
</head>
<body style="height: 444px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">
                        <img alt="" class="auto-style3" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style31"> <span class="auto-style18">
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style18" Height="40px" Text="Home Page" Width="117px" OnClick="Button4_Click" />
                        <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style30" Height="40px" Text="Previous Page" Width="144px" OnClick="Button3_Click" />
                    </span>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style36"><span class="auto-style18">Supervisor Name :</span><asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style39">
                    </asp:DropDownList>
                    </td>
                    <td class="auto-style37">
                    <asp:Button ID="btn_view" runat="server" BackColor="AliceBlue" CssClass="auto-style17" Text="View Transaction" OnClick="btn_view_Click" />
                    </td>
                    <td class="auto-style38"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style32">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="567px" CssClass="auto-style18" Height="178px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                    <asp:Button ID="Button1" runat="server" BackColor="AliceBlue" OnClick="Button1_Click" Text="accept" CssClass="auto-style18" />
                    </td>
                    <td class="auto-style35"><asp:Button ID="Button2" runat="server" BackColor="AliceBlue" OnClick="Button2_Click" Text="Refuse" CssClass="auto-style18" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
