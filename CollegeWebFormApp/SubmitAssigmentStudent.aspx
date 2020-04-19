<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubmitAssigmentStudent.aspx.cs" Inherits="CollegeWebFormApp.SubmitAssigmentStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #ffffff;
            height: 893px;
            margin-top: 0px;
        }
        .auto-style30 {
            height: 102px;
            width: 533px;
        }
        .auto-style34 {
            height: 998px;
        }
        .auto-style39 {
            height: 102px;
            width: 108px;
            font-size: large;
        }
        .auto-style41 {
            height: 102px;
        }
        .auto-style42 {
            height: 144px;
            width: 108px;
            font-size: large;
        }
        .auto-style43 {
            height: 144px;
            width: 533px;
        }
        .auto-style44 {
            height: 144px;
        }
        .auto-style45 {
            height: 332px;
            width: 108px;
        }
        .auto-style46 {
            height: 332px;
            width: 533px;
        }
        .auto-style47 {
            height: 332px;
        }
        .auto-style48 {
            font-size: large;
        }
        .auto-style49 {
            width: 254px;
            height: 153px;
        }
        .auto-style13 {
            width: 254px;
            height: 153px;
            font-size: large;
            margin-left: 66px;
        }
        .auto-style50 {
            font-size: large;
            margin-top: 10px;
        }
        .auto-style32 {
            margin-left: 0px;
            font-size: large;
        }
        </style>
</head>
<body style="height: 954px">
    <form id="form1" runat="server" class="auto-style34">
        <table class="auto-style1">
            <tr>
                <td class="auto-style42">
                    <img alt="" class="auto-style49" longdesc="http://localhost:56379/logo/WhatsApp Image 2020-04-07 at 9.31.13 AM.jpeg" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style43">
                                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style50" Height="43px" Text="View Assigments" Width="162px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style44">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42">
                    <br />
                    Group:</td>
                <td class="auto-style43">
                    <asp:DropDownList ID="DropDownList_groups" runat="server" OnSelectedIndexChanged="DropDownList_groups_SelectedIndexChanged" CssClass="auto-style48" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style44">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">Supervisor:</td>
                <td class="auto-style30">
                    <asp:DropDownList ID="DropDownList_supervisor" runat="server" CssClass="auto-style48" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style41">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45">
                    <span class="auto-style48">File Upload</span><br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    </td>
                <td class="auto-style46">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style48" />
                    <br />
&nbsp;<br />
&nbsp;<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Upload" CssClass="btn-primary" Height="49px" Width="117px" style="margin-left: 134px; font-size: large;"    />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style47">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="271px" CssClass="auto-style32" Height="196px" Visible="False">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="File_name" HeaderText="File Name" />
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>  
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"  
                            CommandArgument='<%# Eval("FileId") %>'></asp:LinkButton>  
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
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
