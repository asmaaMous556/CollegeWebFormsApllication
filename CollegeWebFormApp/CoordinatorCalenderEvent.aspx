<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoordinatorCalenderEvent.aspx.cs" Inherits="CollegeWebFormApp.SupervisorCalenderEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 342px;
        }
        .auto-style2 {
            height: 46px;
        }
        .auto-style3 {
            height: 55px;
        }
        .auto-style4 {
            height: 48px;
        }
        .auto-style5 {
            height: 41px;
        }
        .auto-style6 {
            height: 42px;
        }
        .auto-style7 {
            height: 56px;
        }
        .auto-style8 {
            margin-left: 28px;
            font-size: large;
        }
        .auto-style9 {
            height: 46px;
            width: 623px;
        }
        .auto-style10 {
            height: 55px;
            width: 623px;
        }
        .auto-style11 {
            height: 48px;
            width: 623px;
        }
        .auto-style12 {
            height: 41px;
            width: 623px;
        }
        .auto-style13 {
            height: 42px;
            width: 623px;
        }
        .auto-style14 {
            height: 56px;
            width: 623px;
        }
        .auto-style15 {
            width: 623px;
        }
        .auto-style16 {
            height: 46px;
            width: 138px;
        }
        .auto-style17 {
            height: 55px;
            width: 138px;
            font-size: large;
        }
        .auto-style18 {
            height: 48px;
            width: 138px;
            font-size: large;
        }
        .auto-style19 {
            height: 41px;
            width: 138px;
            font-size: large;
        }
        .auto-style20 {
            height: 42px;
            width: 138px;
            font-size: large;
        }
        .auto-style21 {
            height: 56px;
            width: 138px;
        }
        .auto-style22 {
            width: 138px;
        }
        .auto-style23 {
            width: 254px;
            height: 153px;
        }
        .auto-style24 {
            font-size: large;
        }
        .auto-style25 {
            height: 46px;
            width: 138px;
            font-size: large;
        }
        .auto-style28 {
            height: 67px;
            width: 172px;
            font-size: large;
        }
    </style>
</head>
<body style="height: 527px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">
                    <img alt="" class="auto-style23" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style9">
                        
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style28" Height="40px" Text="Home Page" Width="117px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">Event Name</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox_eventName" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style17">Task Title</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList_taskTitle" runat="server" CssClass="auto-style24">
                    </asp:DropDownList>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style18">Coordinator Name</td>
                <td class="auto-style11">
                    <asp:DropDownList ID="DropDownList_CooName" runat="server" CssClass="auto-style24">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style19">Event Descrition</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox_description" runat="server" Width="372px" CssClass="auto-style24"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style20">Event Date</td>
                <td class="auto-style13">
                    <asp:TextBox ID="Text_date" runat="server" Enabled="False" CssClass="auto-style24"></asp:TextBox>
                    <asp:Button ID="Button1" BackColor="AliceBlue" runat="server" CssClass="auto-style8" OnClick="Button1_Click1" Text="Select Date" />
                    <asp:Calendar ID="CalendarDate" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="CalendarDate_SelectionChanged" Visible="False" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style14">
                    <asp:Button ID="Button_assign" BackColor="AliceBlue" runat="server" OnClick="Button_assign_Click" Text="Assign" Width="123px" CssClass="auto-style24" />
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
