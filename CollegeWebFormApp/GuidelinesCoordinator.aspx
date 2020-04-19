<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuidelinesCoordinator.aspx.cs" Inherits="CollegeWebFormApp.GuidelinesCoordinator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 107px;
        }
        .auto-style5 {
            height: 155px;
        }
        .auto-style6 {
            height: 103px;
        }
        .auto-style7 {
            height: 103px;
            width: 311px;
            font-size: large;
        }
        .auto-style8 {
            height: 155px;
            width: 311px;
        }
        .auto-style9 {
            height: 107px;
            width: 311px;
        }
        .auto-style10 {
            margin-left: 32px;
            font-size: large;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            height: 103px;
            width: 544px;
        }
        .auto-style13 {
            height: 155px;
            width: 544px;
        }
        .auto-style14 {
            height: 107px;
            width: 544px;
        }
        .auto-style15 {
            width: 254px;
            height: 153px;
        }
        .auto-style18 {
            height: 107px;
            width: 544px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <img alt="" class="auto-style15" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" BackColor="AliceBlue" CssClass="auto-style18" Height="40px" Text="Home Page" Width="117px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style18" Height="39px" Text="Templates" Width="139px" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style11" Height="39px" Text="Proposed Ideas" Width="151px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">View Guidelines</td>
                <td class="auto-style12">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style11" />
                    <asp:Button ID="Button_upload" runat="server" CssClass="auto-style10" BackColor="AliceBlue" Text="Upload and View" OnClick="Button_upload_Click" Width="151px" />
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style13">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="138px" Width="582px" CssClass="auto-style11">
                        <Columns>
                            <asp:BoundField DataField="text" HeaderText="Guidelines" />
                            <asp:TemplateField HeaderText="Options">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton_download" runat="server"  OnClick = "DownloadFile" CommandArgument='<%# Eval("Value") %>'>Download and View</asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton_delete" runat="server" OnClick = "DeleteFile" CommandArgument='<%# Eval("Value") %>'>Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style14"></td>
                <td class="auto-style4"></td>
            </tr>
        </table>
    </form>
</body>
</html>
