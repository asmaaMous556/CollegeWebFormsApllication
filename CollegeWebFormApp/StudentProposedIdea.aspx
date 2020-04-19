<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentProposedIdea.aspx.cs" Inherits="CollegeWebFormApp.StudentProposedIdea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 468px;
            border: 1px solid #ffffff;
        }
        .auto-style4 {
            width: 100%;
            height: 314px;
            border: 1px solid #ffffff;
        }
        .auto-style1 {
            font-size: large;
        }
        .auto-style8 {
            height: 314px;
            border: 1px solid #ffffff;
        }
        .auto-style9 {
            height: 410px;
        }
        .auto-style10 {
            height: 164px;
        }
        .auto-style11 {
            width: 254px;
            height: 153px;
        }
        .auto-style13 {
            margin-left: 0px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table class="auto-style3">
                <tr>
                    <td>
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style10">
                                    <img alt="" class="auto-style11" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                                <td class="auto-style10">
                                    <asp:Button ID="Button1" BackColor="AliceBlue" runat="server" Height="43px" Text="Guidlines" Width="128px" CssClass="auto-style1" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="43px" Text="Templates" Width="127px" OnClick="Button2_Click" />
                                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                                    <br />
&nbsp;<br />
                                </td>
                                <td class="auto-style10">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9"></td>
                                <td class="auto-style9"><span class="auto-style1">Proposed Ideas</span><br />
                                    <br />
                                    <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="612px" CssClass="auto-style1">
                <Columns>
                    <asp:BoundField HeaderText="Proposed Idea" DataField="text" />
                    <asp:TemplateField HeaderText="Options">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton_dowload" runat="server"  OnClick = "DownloadFile" CommandArgument='<%# Eval("Value") %>'>Download and View</asp:LinkButton>
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
                                <td class="auto-style9"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
