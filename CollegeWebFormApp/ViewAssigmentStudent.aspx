<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAssigmentStudent.aspx.cs" Inherits="CollegeWebFormApp.ViewAssigmentStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style5 {
            height: 117px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            height: 91px;
        }
        .auto-style8 {
            height: 119px;
        }
        .auto-style32 {
            margin-left: 0px;
            font-size: large;
        }
        .auto-style33 {
            margin-left: 179px;
            font-size: large;
        }
        .auto-style34 {
            margin-left: 165px;
            font-size: large;
        }
        .auto-style35 {
            height: 101px;
        }
        .auto-style36 {
            height: 76px;
        }
        .auto-style37 {
            height: 76px;
            width: 201px;
        }
        .auto-style38 {
            height: 101px;
            width: 201px;
        }
        .auto-style39 {
            height: 26px;
            width: 201px;
            font-size: large;
        }
        .auto-style40 {
            height: 91px;
            width: 201px;
            font-size: large;
        }
        .auto-style41 {
            height: 119px;
            width: 201px;
            font-size: large;
        }
        .auto-style42 {
            height: 117px;
            width: 201px;
        }
        .auto-style50 {
            font-size: large;
            margin-top: 10px;
        }
        .auto-style51 {
            height: 76px;
            width: 545px;
        }
        .auto-style52 {
            height: 101px;
            width: 545px;
        }
        .auto-style53 {
            height: 26px;
            width: 545px;
        }
        .auto-style54 {
            height: 91px;
            width: 545px;
        }
        .auto-style55 {
            height: 119px;
            width: 545px;
        }
        .auto-style56 {
            height: 117px;
            width: 545px;
        }
        .auto-style57 {
            width: 254px;
            height: 153px;
        }
        .auto-style58 {
            font-size: large;
        }
        .auto-style13 {
            width: 254px;
            height: 153px;
            font-size: large;
        }
        </style>
</head>
<body style="height: 648px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style37">
                    <img alt="" class="auto-style57" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style51">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                                    &nbsp;<asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style50" Height="43px" Text="Submit Assigment" Width="183px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style36">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38"></td>
                <td class="auto-style52">
                                    &nbsp;</td>
                <td class="auto-style35">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">Groups:</td>
                <td class="auto-style53">
                    <asp:DropDownList ID="DropDownList_groups" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style58">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style34" Height="33px" Text="Show Supervisor" Width="164px" Visible="False" />
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Supervisor Name</td>
                <td class="auto-style54">
                    <asp:DropDownList ID="DropDownList_supervisors" runat="server" CssClass="auto-style58">
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style33" Height="37px" Text="Assigment Details" Width="174px" Visible="False" />
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41">Assiment Details:</td>
                <td class="auto-style55">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="527px" CssClass="auto-style32" Height="196px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="AgssigmentName" HeaderText="File Name" />
                            <asp:BoundField DataField="durationDate" HeaderText="Date" />
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
                    </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style56"></td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
