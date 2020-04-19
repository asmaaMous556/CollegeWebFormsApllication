<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTransactionPageForSup.aspx.cs" Inherits="CollegeWebFormApp.ManageTransactionPageForSup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 623px;
        }
        .auto-style2 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            height: 82px;
        }
        .auto-style4 {
            height: 130px;
        }
        .auto-style5 {
            height: 134px;
        }
        .auto-style6 {
            height: 101px;
        }
        .auto-style8 {
            height: 101px;
            width: 657px;
        }
        .auto-style9 {
            height: 134px;
            width: 657px;
        }
        .auto-style10 {
            height: 130px;
            width: 657px;
        }
        .auto-style11 {
            height: 82px;
            width: 657px;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            height: 101px;
            font-size: large;
            width: 225px;
        }
        .auto-style7 {
            margin-left: 93px;
            font-size: large;
        }
        .auto-style14 {
            width: 254px;
            height: 153px;
        }
        .auto-style15 {
            height: 134px;
            width: 225px;
            font-size: large;
        }
        .auto-style16 {
            height: 130px;
            width: 225px;
        }
        .auto-style17 {
            height: 82px;
            width: 225px;
        }
        .auto-style18 {
            font-size: large;
            margin-left: 0px;
        }
    </style>
</head>
<body style="height: 704px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style13">
                        <img alt="" class="auto-style14" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style8">
                                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style12" Height="41px" Text="Home Page" Width="108px" OnClick="Button3_Click" />
                                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style18" Height="43px" Text="Create Transaction" Width="161px" OnClick="Button2_Click" />
                                    <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style12" Height="43px" Text="Show Incoming Tranaction for Committee" Width="352px" OnClick="Button4_Click" />
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">Students:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style12">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" BackColor="AliceBlue" CssClass="auto-style7" Height="37px" Text="Details" Width="86px" />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style10">
                        <asp:GridView ID="GridView1" runat="server" Height="156px" Width="508px" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style12">
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
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style3"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
