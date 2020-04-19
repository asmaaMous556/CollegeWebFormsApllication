<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommitteeEvaluationPage.aspx.cs" Inherits="CollegeWebFormApp.CommitteeEvaluationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 276px;
        }
        .auto-style21 {
            width: 100%;
            border: 1px solid #ffffff;
            height: 436px;
        }
        .auto-style5 {
            width: 100%;
            height: 228px;
            border: 1px solid #ffffff;
        }
        .auto-style9 {
            height: 57px;
            width: 180px;
            font-size: large;
        }
        .auto-style18 {
            height: 57px;
            width: 172px;
        }
        .auto-style7 {
            height: 57px;
        }
        .auto-style10 {
            height: 67px;
            width: 180px;
            font-size: large;
        }
        .auto-style19 {
            height: 67px;
            width: 172px;
        }
        .auto-style6 {
            height: 67px;
        }
        .auto-style11 {
            height: 64px;
            width: 180px;
            font-size: large;
        }
        .auto-style20 {
            height: 64px;
            width: 172px;
        }
        .auto-style8 {
            height: 64px;
        }
        .auto-style2 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style15 {
            height: 45px;
            width: 218px;
            font-size: large;
        }
        .auto-style14 {
            height: 45px;
        }
        .auto-style16 {
            height: 59px;
            width: 218px;
            font-size: large;
        }
        .auto-style13 {
            height: 59px;
        }
        .auto-style17 {
            height: 61px;
            width: 218px;
        }
        .auto-style12 {
            height: 61px;
        }
        .auto-style22 {
            font-size: large;
        }
        .auto-style23 {
            width: 254px;
            height: 153px;
            margin-left: 416px;
        }
        .auto-style28 {
            height: 67px;
            width: 172px;
            font-size: large;
        }
        .auto-style25 {
            font-size: large;
        }
        .auto-style27 {
            height: 61px;
            width: 218px;
            font-size: large;
        }
        </style>
</head>
<body style="height: 865px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style21">
                <tr>
                    <td><span class="auto-style22">Kingdom of Saudia Arabia</span><br class="auto-style22" />
                        <span class="auto-style22">Ministry of Education
                        </span>
                        <br class="auto-style22" />
                        <span class="auto-style22">Higher of Education
                        </span>
                        <br class="auto-style22" />
                        <span class="auto-style22">King Abdulaziz University</span><br class="auto-style22" />
                        <span class="auto-style22">Faculty of Computing and Information Technology
                        <br />
                        <img alt="" class="auto-style23" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /><br />
                        </span>
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style28" Height="40px" Text="Home Page" Width="117px" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style27" Height="40px" Text="Previous Page" Width="189px" OnClick="Button5_Click" />
                        <br class="auto-style22" />
                        <span class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                    </td>
                    <td><span class="auto-style22">المملكة العربية السعودية&nbsp;&nbsp;&nbsp;&nbsp;
                        </span>
                        <br class="auto-style22" />
                        <span class="auto-style22">وزارة التعليم</span><br class="auto-style22" />
                        <span class="auto-style22">التعليم العالي</span><br class="auto-style22" />
                        <span class="auto-style22">جامعة الملك عبد العزيز</span><br class="auto-style22" />
                        <span class="auto-style22">كلية الحاسبات وتقنية المعلومات برابغ
                        </span>
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                        <br class="auto-style22" />
                    </td>
                </tr>
            </table>
                <br />
        <table class="auto-style5">
            <tr>
                <td class="auto-style9">Evaluation of Committee</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox_super" runat="server" Enabled="False" Height="33px" Width="128px" CssClass="auto-style22"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style10">Students</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownList_students" runat="server" OnSelectedIndexChanged="DropDownList_students_SelectedIndexChanged" CssClass="auto-style22">
                    </asp:DropDownList>
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" BackColor="AliceBlue" runat="server" Height="35px" Text="Show Grade" Width="128px" CssClass="auto-style22" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Committee Grade</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox_grade" runat="server" Enabled="False" Height="24px" Width="108px" CssClass="auto-style22"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
            </tr>
        </table>
            <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style15">State</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownList_states" runat="server" CssClass="auto-style22">
                        <asp:ListItem Text="--Select--" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Approved" Value="1"></asp:ListItem>
                            
                            <asp:ListItem Text="Accepted" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Review" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Comment</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox_comment" runat="server" Height="69px" TextMode="MultiLine" Width="331px" CssClass="auto-style22"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" BackColor="AliceBlue" runat="server" Height="36px" OnClick="Button2_Click" Text="Send" Width="83px" CssClass="auto-style22" />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
