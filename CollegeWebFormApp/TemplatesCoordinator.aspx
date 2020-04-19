<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TemplatesCoordinator.aspx.cs" Inherits="CollegeWebFormApp.TemplatesCoordinator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 94px;
        }
        .auto-style5 {
            height: 123px;
        }
        .auto-style6 {
            height: 103px;
        }
        .auto-style7 {
            height: 103px;
            width: 260px;
        }
        .auto-style8 {
            height: 123px;
            width: 260px;
        }
        .auto-style9 {
            height: 94px;
            width: 260px;
        }
        .auto-style10 {
            margin-left: 13px;
            font-size: large;
        }
        .auto-style11 {
            height: 103px;
            width: 516px;
        }
        .auto-style12 {
            height: 123px;
            width: 516px;
        }
        .auto-style13 {
            height: 94px;
            width: 516px;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            height: 103px;
            width: 260px;
            font-size: large;
        }
        .auto-style16 {
            width: 254px;
            height: 153px;
        }
        .auto-style17 {
            width: 254px;
            height: 153px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <img alt="" class="auto-style16" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" BackColor="AliceBlue" CssClass="auto-style14" Height="40px" Text="Home Page" Width="117px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style14" Height="39px" Text="Proposed Ideas" Width="139px" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style17" Height="39px" Text="Guidelines" Width="126px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">View Templates</td>
                <td class="auto-style11">
                    <asp:FileUpload ID="FileUpload1" BackColor="AliceBlue" runat="server" CssClass="auto-style14" />
                    <asp:Button ID="Button_upload" runat="server" CssClass="auto-style10" BackColor="AliceBlue" OnClick="Button_upload_Click" Text="Upload and View" Width="153px" />
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style12">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="440px" CssClass="auto-style14">
                        <Columns>
                            <asp:BoundField DataField="Text" HeaderText="Templates" />
                            <asp:TemplateField HeaderText="Options">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton_Download" runat="server" OnClick = "DownloadFile" CommandArgument='<%# Eval("Value") %>'> Download and View</asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton_delete" runat="server"  OnClick = "DeleteFile" CommandArgument='<%# Eval("Value") %>'>Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style13"></td>
                <td class="auto-style4"></td>
            </tr>
        </table>
    </form>
</body>
</html>
