<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAssigmentSupervisor.aspx.cs" Inherits="CollegeWebFormApp.ViewAssigmentSupervisor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style2 {
            height: 97px;
        }
        .auto-style6 {
            height: 81px;
        }
        .auto-style7 {
            height: 120px;
        }
        .auto-style8 {
            height: 98px;
        }
        .auto-style9 {
            height: 91px;
        }
        .auto-style32 {
            margin-left: 0px;
            font-size: large;
        }
        .auto-style33 {
            height: 91px;
            width: 706px;
        }
        .auto-style34 {
            height: 98px;
            width: 706px;
        }
        .auto-style35 {
            height: 120px;
            width: 706px;
        }
        .auto-style36 {
            height: 97px;
            width: 706px;
        }
        .auto-style37 {
            height: 81px;
            width: 706px;
        }
        .auto-style38 {
            height: 91px;
            width: 130px;
            font-size: large;
        }
        .auto-style39 {
            height: 98px;
            width: 130px;
            font-size: large;
        }
        .auto-style40 {
            height: 120px;
            width: 130px;
            font-size: large;
        }
        .auto-style41 {
            height: 97px;
            width: 130px;
        }
        .auto-style42 {
            height: 81px;
            width: 130px;
        }
        .auto-style43 {
            font-size: large;
        }
        .auto-style44 {
            width: 254px;
            height: 153px;
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
        </style>
</head>
<body style="height: 723px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style38">
                    <img alt="" class="auto-style44" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style33">
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style14" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                        <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style4" Height="43px" Text="Add Assigment" Width="193px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38">Group:</td>
                <td class="auto-style33">
                    <asp:DropDownList ID="DropDownList_groups" runat="server" OnSelectedIndexChanged="DropDownList_groups_SelectedIndexChanged" CssClass="auto-style43" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">Student:</td>
                <td class="auto-style34">
                    <asp:DropDownList ID="DropDownList_student" runat="server" Width="94px" AutoPostBack="True" CssClass="auto-style43" OnSelectedIndexChanged="DropDownList_student_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Assigment Details:</td>
                <td class="auto-style35">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="755px" CssClass="auto-style32" Height="196px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                            <asp:BoundField DataField="File_name" HeaderText="File Name" />
                            <asp:BoundField DataField="date" HeaderText="Date" />
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>  
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"  
                            CommandArgument='<%# Eval("FileId") %>' ></asp:LinkButton>  
                                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="Send" CommandArgument='<%# Eval("FileId") %>'>Send</asp:LinkButton>
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
                    </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style36"></td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style37"></td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
