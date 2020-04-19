<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddGroupCoor.aspx.cs" Inherits="CollegeWebFormApp.AddGroupCoor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 340px;
        }
        .auto-style2 {
            width: 100%;
            height: 340px;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            height: 50px;
        }
        .auto-style4 {
            height: 58px;
        }
        .auto-style6 {
            height: 52px;
        }
        .auto-style7 {
            height: 66px;
        }
        .auto-style12 {
            height: 52px;
            width: 206px;
        }
        .auto-style13 {
            height: 66px;
            width: 206px;
        }
        .auto-style14 {
            height: 58px;
            width: 206px;
        }
        .auto-style15 {
            height: 50px;
            width: 206px;
            font-size: large;
        }
        .auto-style16 {
            height: 52px;
            width: 163px;
        }
        .auto-style17 {
            height: 66px;
            width: 163px;
            font-size: large;
        }
        .auto-style18 {
            height: 58px;
            width: 163px;
            font-size: large;
        }
        .auto-style19 {
            height: 50px;
            width: 163px;
        }
        .auto-style20 {
            width: 254px;
            height: 153px;
            margin-left: 0px;
        }
        .auto-style21 {
            font-size: large;
        }
        .auto-style22 {
            height: 52px;
            width: 163px;
            font-size: large;
        }
        .auto-style23 {
            font-size: large;
            margin-left: 14px;
            margin-bottom: 0px;
        }
        .auto-style24 {
            height: 52px;
            font-size: large;
        }
    </style>
</head>
<body style="height: 511px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style16">
                        <img alt="" class="auto-style20" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">Add Group Name</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox_group" runat="server" CssClass="auto-style21" Height="27px" Width="147px"></asp:TextBox>
                    </td>
                    <td class="auto-style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp; Select a Supervisor</td>
                    <td class="auto-style12">
                        <br />
                        <asp:DropDownList ID="DropDownList_supervisor" runat="server" CssClass="auto-style23">
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style21" Height="30px" Text="Save" Width="92px" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">All Groups Names</td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="DropDownList_groups" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style21" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style18">Type Names Of Students</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="178px" CssClass="auto-style21"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Height="37px" Width="178px" CssClass="auto-style21"></asp:TextBox>
                        <span class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </span>
                        <asp:TextBox ID="TextBox3" runat="server" Height="37px" Width="178px" CssClass="auto-style21"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" BackColor="AliceBlue" runat="server" Height="40px" OnClick="Button1_Click" Text="Save" Width="76px" CssClass="auto-style21" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
