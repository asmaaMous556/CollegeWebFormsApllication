<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAssigmentPage.aspx.cs" Inherits="CollegeWebFormApp.AddAssigmentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 734px;
            border: 1px solid #ffffff;
        }
        .auto-style6 {
            height: 89px;
            font-size: large;
        }
        .auto-style9 {
            height: 105px;
        }
        .auto-style10 {
            height: 80px;
            margin-left: 147px;
            font-size: large;
        }
        .auto-style32 {
            margin-left: 0px;
            font-size: large;
        }
        .auto-style35 {
            height: 35px;
        }
        .auto-style39 {
            height: 88px;
        }
        .auto-style40 {
            height: 116px;
        }
        .auto-style41 {
            height: 105px;
            width: 152px;
            font-size: large;
        }
        .auto-style42 {
            height: 35px;
            width: 152px;
            font-size: large;
        }
        .auto-style43 {
            height: 88px;
            width: 152px;
            font-size: large;
        }
        .auto-style44 {
            height: 116px;
            width: 152px;
            font-size: large;
        }
        .auto-style45 {
            height: 89px;
            width: 152px;
            font-size: large;
        }
        .auto-style46 {
            width: 152px;
            font-size: large;
        }
        .auto-style47 {
            height: 105px;
            width: 495px;
        }
        .auto-style48 {
            height: 35px;
            width: 495px;
        }
        .auto-style49 {
            height: 88px;
            width: 495px;
        }
        .auto-style50 {
            height: 116px;
            width: 495px;
        }
        .auto-style51 {
            height: 89px;
            width: 495px;
        }
        .auto-style52 {
            width: 495px;
        }
        .auto-style53 {
            height: 98px;
            width: 152px;
        }
        .auto-style56 {
            width: 254px;
            height: 153px;
        }
        .auto-style57 {
            font-size: large;
        }
        .auto-style14 {
            font-size: large;
            height: 210px;
            margin-left: 0px;
        }
        .auto-style4 {
            margin-left: 0px;
            font-size: large;
        }
        .auto-style58 {
            height: 98px;
            width: 495px;
        }
        .auto-style59 {
            height: 98px;
        }
    </style>
</head>
<body style="height: 1009px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style53">
                    <img alt="" class="auto-style56" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style58">
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style14" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                        <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style4" Height="43px" Text="View Assigment" Width="193px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style59">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41">Group:</td>
                <td class="auto-style47">
                    <asp:DropDownList ID="DropDownList_groups" runat="server" CssClass="auto-style57">
                    </asp:DropDownList>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style42">Task Title</td>
                <td class="auto-style48">
                    <asp:TextBox ID="TextBox_title" runat="server" CssClass="auto-style57"></asp:TextBox>
                </td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style43">
                    Date:</td>
                <td class="auto-style49">&nbsp;<asp:TextBox ID="TextBox_date" runat="server" Enabled="False" CssClass="auto-style57"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="32px" BackColor="AliceBlue" Text="Choose Date" Width="127px" CssClass="auto-style32" OnClick="Button1_Click" />
                    <span class="auto-style57">&nbsp;</span></td>
                <td class="auto-style39">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                    </td>
            </tr>
            <tr>
                <td class="auto-style44">
                    Uploading File:</td>
                <td class="auto-style50">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style57" />
                </td>
                <td class="auto-style40">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="271px" CssClass="auto-style32" Height="196px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="AgssigmentName" HeaderText="File Name" />
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>  
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"  
                            CommandArgument='<%# Eval("TaskId") %>' ></asp:LinkButton>  
                                    &nbsp;  
                    </ItemTemplate> 
                         <ItemStyle HorizontalAlign="Center"></ItemStyle>

                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <EmptyDataTemplate>
                            
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <br class="auto-style57" />
                </td>
            </tr>
            <tr>
                <td class="auto-style45">Comment</td>
                <td class="auto-style51">
                    <asp:TextBox ID="TextBox_comment" runat="server" CssClass="auto-style57"></asp:TextBox>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style52">
                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style10" Height="37px" OnClick="Upload" Text="Save" Width="92px" />
                </td>
                <td class="auto-style57">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
