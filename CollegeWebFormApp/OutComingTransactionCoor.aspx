<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OutComingTransactionCoor.aspx.cs" Inherits="CollegeWebFormApp.OutComingTransactionCoor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 482px;
        }
        .auto-style2 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            height: 110px;
        }
        .auto-style4 {
            height: 103px;
        }
        .auto-style5 {
            height: 104px;
        }
        .auto-style6 {
            height: 104px;
            width: 281px;
            font-size: large;
        }
        .auto-style7 {
            height: 103px;
            width: 281px;
        }
        .auto-style8 {
            height: 110px;
            width: 281px;
        }
        .auto-style9 {
            height: 104px;
            width: 455px;
        }
        .auto-style10 {
            height: 103px;
            width: 455px;
        }
        .auto-style11 {
            height: 110px;
            width: 455px;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style18 {
            height: 107px;
            width: 544px;
            font-size: large;
        }
        .auto-style19 {
            width: 254px;
            height: 153px;
        }
    </style>
</head>
<body style="height: 535px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6">
                        <img alt="" class="auto-style19" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style9">
                        
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style18" Height="40px" Text="Home Page" Width="117px" OnClick="Button4_Click" />
                        
                    <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style12" Height="40px" Text="Previous Page" Width="151px" OnClick="Button3_Click" />
                        <br />
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"><span class="auto-style12">Idea Presentation Transaction</span><br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style10">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="454px" CssClass="auto-style12">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                                <asp:BoundField DataField="StudentId" HeaderText="ID" />
                                <asp:BoundField DataField="date" HeaderText="Date of Transaction" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton OnClick="Details" ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ProjectId") %>'>Details</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
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
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style3"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
