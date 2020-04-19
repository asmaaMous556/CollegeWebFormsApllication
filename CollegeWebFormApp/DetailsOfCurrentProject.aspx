<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsOfCurrentProject.aspx.cs" Inherits="CollegeWebFormApp.DetailsOfCurrentProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            height: 153px;
        }
        .auto-style5 {
            height: 134px;
        }
        .auto-style6 {
            height: 51px;
        }
        .auto-style7 {
            height: 51px;
            width: 384px;
        }
        .auto-style8 {
            height: 153px;
            width: 384px;
        }
        .auto-style9 {
            height: 134px;
            width: 384px;
        }
        .auto-style10 {
            margin-right: 8px;
            font-size: large;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            height: 51px;
            font-size: large;
            width: 279px;
        }
        .auto-style13 {
            width: 254px;
            height: 153px;
        }
        .auto-style14 {
            height: 153px;
            width: 279px;
            font-size: large;
        }
        .auto-style15 {
            height: 134px;
            width: 279px;
        }
    </style>
</head>
<body style="height: 584px">
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style12">
                    <img alt="" class="auto-style13" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style7">
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style11" Height="39px" Text="Previous Page" Width="127px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">File Details :</td>
                <td class="auto-style8">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="363px" CssClass="auto-style11">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="FileName" HeaderText="File Name" />
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="Download" runat="server" OnClick="Download" CommandArgument='<%# Eval("FileId") %>'>Download</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
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
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Height="34px" BackColor="AliceBlue" OnClick="Button1_Click" Text="Done" Width="72px" CssClass="auto-style11" />
                    <span class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label1" runat="server" ForeColor="#33CC33" Text="Label" Visible="False" CssClass="auto-style11"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" BackColor="AliceBlue" runat="server" CssClass="auto-style10" Height="35px" OnClick="Button2_Click" Text="Delay" Width="76px" />
                    <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="Label" Visible="False" CssClass="auto-style11"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
