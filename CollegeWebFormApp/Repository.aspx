<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repository.aspx.cs" Inherits="CollegeWebFormApp.Repository" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 115px;
        }
        .auto-style4 {
            height: 91px;
        }
        .auto-style6 {
            height: 91px;
            width: 423px;
        }
        .auto-style7 {
            height: 115px;
            width: 423px;
        }
        .auto-style5 {
            margin-left: 6px;
            font-size: large;
        }
        .auto-style8 {
            width: 254px;
            height: 153px;
        }
        .auto-style9 {
            font-size: large;
        }
    </style>
</head>
<body style="height: 365px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <br />
                        <img alt="" class="auto-style8" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /><br />
                        <br />
                        <span class="auto-style9">Reposotries :</span></td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style5" Height="218px" Width="709px" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="File_name" HeaderText="File Name" />
                                <asp:BoundField DataField="FileId" HeaderText="File ID" />
                                <asp:BoundField DataField="ContentType" HeaderText="Content Type" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Download" CommandArgument='<%# Eval("FileId") %>'>Download</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style3"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
