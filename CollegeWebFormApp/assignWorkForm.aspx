<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="assignWorkForm.aspx.cs" Inherits="CollegeWebFormApp.assignWorkForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 74px;
        }
        .auto-style3 {
            height: 67px;
        }
        .auto-style5 {
            height: 57px;
        }
        .auto-style6 {
            height: 58px;
        }
        .auto-style7 {
            height: 56px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            margin-left: 47px;
        }
        .auto-style10 {
            margin-left: 56px;
        }
    </style>
</head>
<body style="height: 348px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">Task Title</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList_tasks" runat="server" Height="23px" Width="134px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style5">Group </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList_groups" runat="server" Height="21px" Width="133px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style2">Task Assign </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox_taskAssign" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">Duration Date</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox_due" runat="server" Enabled="False" OnTextChanged="TextBox_due_TextChanged"></asp:TextBox>
                    <asp:Button ID="Button_selectDate" runat="server" CssClass="auto-style10" OnClick="Button2_Click" Text="Select Date" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style6">Comment</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox_comment" runat="server" CssClass="auto-style8" Width="345px" TextMode="MultiLine"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style9" Text="Assign" Width="112px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    </form>
</body>
</html>
