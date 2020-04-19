<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentTemplates.aspx.cs" Inherits="CollegeWebFormApp.StudentTemplates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 554px;
        }
        .auto-style2 {
            width: 100%;
            height: 451px;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            width: 258px;
        }
        .auto-style4 {
            width: 557px;
        }
        .auto-style5 {
            width: 258px;
            height: 161px;
        }
        .auto-style6 {
            width: 557px;
            height: 161px;
        }
        .auto-style7 {
            height: 161px;
        }
        .auto-style8 {
            width: 258px;
            height: 115px;
        }
        .auto-style9 {
            width: 557px;
            height: 115px;
        }
        .auto-style10 {
            height: 115px;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            width: 254px;
            height: 153px;
        }
        .auto-style13 {
            font-size: large;
            margin-left: 1px;
        }
        .auto-style14 {
            font-size: large;
            margin-left: 3px;
        }
        .auto-style15 {
            font-size: large;
            margin-left: 14px;
            margin-top: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style8">
                        <img alt="" class="auto-style12" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style9">
                                    <asp:Button ID="Button1" BackColor="AliceBlue" runat="server" Height="42px" Text="Guidlines" Width="145px" CssClass="auto-style15" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style14" Height="43px" Text="Proposed Ideas" Width="153px" OnClick="Button2_Click" />
                                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                                    <br />
&nbsp;</td>
                    <td class="auto-style10">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
            <br />
                        <br />
                        <span class="auto-style11">Templates :</span></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="615px" CssClass="auto-style11">
                <Columns>
                    <asp:BoundField DataField="text" HeaderText="Templates" />
                    <asp:TemplateField HeaderText="Options">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton_download" runat="server" OnClick = "DownloadFile" CommandArgument='<%# Eval("Value") %>'>Download and View</asp:LinkButton>
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
