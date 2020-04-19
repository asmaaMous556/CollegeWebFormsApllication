<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurrentProjectsPage.aspx.cs" Inherits="CollegeWebFormApp.CurrentProjectsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 475px;
            border: 1px solid #ffffff;
        }
        .auto-style2 {
            height: 128px;
        }
        .auto-style3 {
            margin-left: 82px;
            font-size: large;
        }
        .auto-style4 {
            width: 554px;
        }
        .auto-style5 {
            height: 128px;
            width: 554px;
        }
        .auto-style6 {
            width: 137px;
        }
        .auto-style7 {
            height: 128px;
            width: 137px;
        }
        .auto-style8 {
            width: 254px;
            height: 153px;
        }
        .auto-style9 {
            height: 127px;
            width: 137px;
        }
        .auto-style10 {
            height: 127px;
            width: 554px;
        }
        .auto-style11 {
            height: 127px;
        }
        .auto-style12 {
            width: 137px;
            height: 77px;
            font-size: large;
        }
        .auto-style13 {
            width: 554px;
            height: 77px;
        }
        .auto-style14 {
            height: 77px;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style18 {
            height: 107px;
            width: 544px;
            font-size: large;
        }
        .auto-style20 {
            font-size: large;
        }
    </style>
</head>
<body style="height: 512px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <img alt="" class="auto-style8" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style18" Height="40px" Text="Home Page" Width="117px" OnClick="Button1_Click" />
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style20" Height="39px" Text="Evaluate Results" Width="172px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Supervisors:</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList_supervisors" runat="server" OnSelectedIndexChanged="DropDownList_supervisors_SelectedIndexChanged" CssClass="auto-style15">
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" BackColor="AliceBlue" CssClass="auto-style3" Height="30px" Text="Details" Width="90px" />
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="165px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="520px" CssClass="auto-style15">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="GroupId" HeaderText="Group_ID" />
                            <asp:BoundField DataField="FileName" HeaderText="File Name" />
                            <asp:BoundField DataField="date" HeaderText="Date" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Details" CommandArgument='<%# Eval("FileId") %>'>Details</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
