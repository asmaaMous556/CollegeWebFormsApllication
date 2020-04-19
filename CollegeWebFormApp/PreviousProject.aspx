﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PreviousProject.aspx.cs" Inherits="CollegeWebFormApp.PreviousProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 403px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 96px;
        }
        .auto-style4 {
            height: 192px;
        }
        .auto-style5 {
            height: 96px;
            width: 260px;
        }
        .auto-style6 {
            height: 192px;
            width: 260px;
        }
        .auto-style7 {
            margin-left: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">Previous Projects </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Text="View Details" Width="126px" />
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style4">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="186px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="510px">
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
                    <td class="auto-style4"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
