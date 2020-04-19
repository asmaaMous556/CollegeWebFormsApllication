<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOutComigTransactionPage.aspx.cs" Inherits="CollegeWebFormApp.ViewOutComigTransactionPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 694px;
        }
        .auto-style2 {
            width: 100%;
            height: 84px;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            height: 68px;
        }
        .auto-style4 {
            height: 76px;
        }
        .auto-style5 {
            height: 76px;
            width: 329px;
        }
        .auto-style6 {
            height: 68px;
            width: 329px;
        }
        .auto-style7 {
            height: 76px;
            width: 413px;
        }
        .auto-style8 {
            height: 68px;
            width: 413px;
        }
        .auto-style9 {
            height: 76px;
            font-size: large;
        }
        .auto-style10 {
            height: 76px;
            width: 329px;
            font-size: large;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style50 {
            font-size: large;
            margin-top: 0px;
        }
        .auto-style12 {
            width: 254px;
            height: 153px;
            margin-left: 1px;
        }
        .auto-style13 {
            width: 254px;
            height: 153px;
            font-size: large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            &nbsp;<br />
            &nbsp;<img alt="" class="auto-style12" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                                    <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style50" Height="43px" Text="In coming Transaction" Width="223px" OnClick="Button2_Click" />
                    <br />
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                                    &nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">View Out-coming Transactions from Coordinator </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style8">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="91px" Width="450px" CssClass="auto-style11">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
