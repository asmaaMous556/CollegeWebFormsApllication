<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProposedIdeaCoordinator.aspx.cs" Inherits="CollegeWebFormApp.ProposedIdeaCoordinator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 318px;
        }
        .auto-style2 {
            height: 124px;
        }
        .auto-style4 {
            height: 99px;
        }
        .auto-style6 {
            height: 174px;
        }
        .auto-style7 {
            height: 174px;
            width: 228px;
        }
        .auto-style8 {
            height: 124px;
            width: 228px;
            font-size: large;
        }
        .auto-style9 {
            height: 99px;
            width: 228px;
        }
        .auto-style10 {
            height: 174px;
            width: 433px;
        }
        .auto-style11 {
            height: 124px;
            width: 433px;
        }
        .auto-style12 {
            height: 99px;
            width: 433px;
        }
        .auto-style13 {
            width: 254px;
            height: 153px;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            height: 174px;
            width: 228px;
            font-size: large;
        }
        .auto-style5 {
            margin-left: 2px;
            font-size: large;
        }
        .auto-style16 {
            font-size: large;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <img alt="" class="auto-style13" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" BackColor="AliceBlue" CssClass="auto-style14" Height="40px" Text="Home Page" Width="117px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style14" Height="39px" Text="Templates" Width="139px" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style16" Height="39px" Text="Guidelines" Width="126px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    &nbsp;View Proposed Idea
                </td>
                <td class="auto-style10">
                    <span class="auto-style14">
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="auto-style14" Width="258px" />
                    </span>&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style6"><span class="auto-style14">
                    <asp:Button ID="Button_upload" runat="server" BackColor="AliceBlue" CssClass="auto-style5" OnClick="Button_upload_Click" Text="Upload" Width="108px" />
                    </span></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style11">
                    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="187px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="475px" CssClass="auto-style14">
                        <Columns>
                            <asp:BoundField DataField="Text" HeaderText="Proposed Ideas" />
                            <asp:TemplateField HeaderText="Options">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton_download" runat="server" OnClick = "DownloadFile" CommandArgument='<%# Eval("Value") %>'>Download and View</asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton_delete" runat="server" CommandArgument='<%# Eval("Value") %>' OnClick = "DeleteFile">Delete</asp:LinkButton>
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
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style12"></td>
                <td class="auto-style4"></td>
            </tr>
        </table>
    </form>
</body>
</html>
