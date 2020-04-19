<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentGuidelines.aspx.cs" Inherits="CollegeWebFormApp.StudentGuidelines" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 506px;
        }
        .auto-style2 {
            width: 100%;
            height: 274px;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            width: 59px;
        }
        .auto-style4 {
            width: 59px;
            height: 121px;
        }
        .auto-style5 {
            height: 121px;
        }
        .auto-style6 {
            height: 121px;
            width: 678px;
        }
        .auto-style7 {
            width: 678px;
        }
        .auto-style8 {
            width: 59px;
            height: 79px;
        }
        .auto-style9 {
            width: 678px;
            height: 79px;
            font-size: large;
        }
        .auto-style10 {
            height: 79px;
        }
        .auto-style11 {
            width: 254px;
            height: 153px;
        }
        .auto-style12 {
            font-size: large;
        }
        .auto-style13 {
            width: 254px;
            height: 153px;
            font-size: large;
        }
        .auto-style14 {
            width: 254px;
            height: 153px;
            font-size: large;
            margin-left: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4">
                        <img alt="" class="auto-style11" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style6">
                                    <asp:Button ID="Button1" BackColor="AliceBlue" runat="server" Height="43px" Text="Templates" Width="128px" CssClass="auto-style14" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="43px" Text="Proposed Ideas" Width="152px" OnClick="Button2_Click" />
                                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                                </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">Guidelines :</td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7"><br class="auto-style12" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="583px" CssClass="auto-style12">
                <Columns>
                    <asp:BoundField DataField="text" HeaderText="Guidelines" />
                    <asp:TemplateField HeaderText="Options">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton_download" runat="server"  OnClick = "DownloadFile" CommandArgument='<%# Eval("Value") %>'>Download and View</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
