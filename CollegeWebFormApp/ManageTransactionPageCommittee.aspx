<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTransactionPageCommittee.aspx.cs" Inherits="CollegeWebFormApp.ManageTransactionPageCommittee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 442px;
        }
        .auto-style2 {
            width: 100%;
            height: 340px;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            width: 159px;
            font-size: large;
            height: 76px;
        }
        .auto-style5 {
            width: 699px;
            height: 76px;
        }
        .auto-style4 {
            margin-left: 0px;
            font-size: large;
        }
        .auto-style6 {
            width: 159px;
            height: 80px;
        }
        .auto-style7 {
            width: 699px;
            height: 80px;
        }
        .auto-style8 {
            height: 80px;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            width: 254px;
            height: 153px;
        }
        .auto-style11 {
            width: 159px;
            font-size: large;
            height: 210px;
        }
        .auto-style12 {
            width: 699px;
            height: 210px;
        }
        .auto-style13 {
            font-size: large;
            height: 210px;
        }
        .auto-style14 {
            font-size: large;
            height: 210px;
            margin-left: 0px;
        }
        .auto-style16 {
            height: 76px;
        }
        .auto-style17 {
            margin-left: 52px;
            font-size: large;
        }
        </style>
</head>
<body style="height: 517px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6">
                        <img alt="" class="auto-style10" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style7">
                        <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style4" Height="43px" Text="Create Transaction" Width="171px" OnClick="Button2_Click" />
                                    <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style4" Height="43px" Text="Show Incoming Tranasction for supervisor" Width="347px" OnClick="Button4_Click" />
                        <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style14" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                        </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">
                        <br />
                                    &nbsp;
                                    <br />
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Committee Evaluation</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style9">
                        </asp:DropDownList>
                        <asp:Button ID="Button5" runat="server" BackColor="AliceBlue" CssClass="auto-style17" Text="Show" Width="77px" />
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="459px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style9">
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
                    <td class="auto-style13"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
