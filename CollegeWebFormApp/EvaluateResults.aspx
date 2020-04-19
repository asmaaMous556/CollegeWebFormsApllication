<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EvaluateResults.aspx.cs" Inherits="CollegeWebFormApp.EvaluateResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 606px;
        }
        .auto-style3 {
            margin-left: 50px;
            font-size: large;
        }
        .auto-style5 {
            width: 100%;
            height: 471px;
            border: 1px solid #ffffff;
        }
        .auto-style6 {
            margin-left: 53px;
            font-size: large;
        }
        .auto-style11 {
            width: 240px;
            height: 153px;
            font-size: large;
            margin-top: 0px;
        }
        .auto-style19 {
            width: 243px;
        }
        .auto-style20 {
            font-size: large;
        }
        .auto-style22 {
            width: 243px;
            font-size: large;
        }
        .auto-style23 {
            width: 145px;
        }
        .auto-style24 {
            width: 145px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style19"><br class="auto-style20" />
                        <span class="auto-style20">&nbsp;&nbsp;<img alt="" class="auto-style11" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></span><br class="auto-style20" />
                        <br class="auto-style20" />
                        <br class="auto-style20" />
                        <span class="auto-style20">Evaluate Results of Current Projects</span></td>
                    <td class="auto-style23">
                    <asp:Button ID="Button1" runat="server" BackColor="AliceBlue" CssClass="auto-style20" Height="40px" Text="Home Page" Width="151px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style22">
                    <asp:Button ID="Button2" runat="server" BackColor="AliceBlue" CssClass="auto-style20" Height="39px" Text="Mointor the progress of projects" Width="285px" OnClick="Button2_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"><span class="auto-style20">&nbsp;</span><br class="auto-style20" />
                        <span class="auto-style20">&nbsp;Choose Group</span></td>
                    <td class="auto-style23"><asp:DropDownList ID="DropDownList_groups" runat="server" CssClass="auto-style3" Height="31px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="100px" AutoPostBack="True">
            </asp:DropDownList>
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">Select a Student</td>
                    <td class="auto-style23">
                        <asp:DropDownList ID="DropDownList_students" runat="server" AutoPostBack="True" CssClass="auto-style6" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style22">&nbsp; </td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">Total Grades of Supervisor</td>
                    <td class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 40</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox_sup" runat="server" Width="96px" Enabled="False" CssClass="auto-style20"></asp:TextBox>
                    </td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">Total Grades of Committee</td>
                    <td class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 60</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox_comm" runat="server" Width="96px" Enabled="False" CssClass="auto-style20"></asp:TextBox>
                    </td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">Total Summation</td>
                    <td class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 100</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox_coor" runat="server" Width="96px" Enabled="False" CssClass="auto-style20"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button_cal" runat="server" BackColor="AliceBlue" Height="35px" OnClick="Button_cal_Click" Text="Calculate and Save" Width="217px" CssClass="auto-style20" />
                    </td>
                </tr>
            </table>
&nbsp;</div>
        <p>
            &nbsp;</p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</form>
</body>
</html>
