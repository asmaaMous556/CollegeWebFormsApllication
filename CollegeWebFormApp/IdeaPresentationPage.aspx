<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IdeaPresentationPage.aspx.cs" Inherits="CollegeWebFormApp.IdeaPresentationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1113px;
        }
        .auto-style2 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style3 {
            height: 128px;
        }
        .auto-style4 {
            height: 128px;
            width: 654px;
        }
        .auto-style5 {
            width: 100%;
            height: 86px;
            border: 1px solid #000000;
        }
        .auto-style6 {
            width: 157px;
        }
        .auto-style7 {
            width: 210px;
        }
        .auto-style8 {
            width: 271px;
        }
        .auto-style9 {
            margin-left: 4px;
            font-size: large;
        }
        .auto-style10 {
            margin-left: 415px;
            font-size: large;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            width: 271px;
            font-size: large;
        }
        .auto-style13 {
            width: 210px;
            font-size: large;
        }
        .auto-style14 {
            width: 157px;
            font-size: large;
        }
        .auto-style15 {
            width: 254px;
            height: 153px;
            margin-left: 372px;
        }
        .auto-style50 {
            font-size: large;
            margin-top: 10px;
        }
    </style>
</head>
<body style="height: 1079px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4"><span class="auto-style11">Kingdom of Saudia Arabia</span><br class="auto-style11" />
                        <span class="auto-style11">Ministry of Education
                        </span>
                        <br class="auto-style11" />
                        <span class="auto-style11">Higher of Education
                        </span>
                        <br class="auto-style11" />
                        <span class="auto-style11">King Abdulaziz University</span><br class="auto-style11" />
                        <span class="auto-style11">Faculty of Computing and Information Technology<br />
&nbsp;&nbsp;&nbsp;
                        <img alt="" class="auto-style15" longdesc="http://localhost:56379/" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></span><br class="auto-style11" />
                        <br class="auto-style11" />
                        <br class="auto-style11" />
                                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style13" Height="41px" Text="Home Page" Width="126px" OnClick="Button3_Click" />
                                    <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style50" Height="43px" Text="Out Coming Transaction" Width="223px" OnClick="Button2_Click" />
                        <br class="auto-style11" />
                        <br class="auto-style11" />
                        <br class="auto-style11" />
                        <br class="auto-style11" />
                        <br class="auto-style11" />
                        <span class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Idea Presentation and Evaluation and Suggestions Form&nbsp; (COIT 498) </span> </td>
                    <td class="auto-style3"><span class="auto-style11">المملكة العربية السعودية &nbsp;&nbsp;
                        </span>
                        <br class="auto-style11" />
                        <span class="auto-style11">وزارة التعليم</span><br class="auto-style11" />
                        <span class="auto-style11">التعليم العالي</span><br class="auto-style11" />
                        <span class="auto-style11">جامعة الملك عبد العزيز</span><br class="auto-style11" />
                        <span class="auto-style11">كلية الحاسبات وتقنية المعلومات برابغ
                        </span>
                        <br class="auto-style11" />
                        <br class="auto-style11" />
                        <br class="auto-style11" />
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
                        <br class="auto-style11" />
                        <br class="auto-style11" />
                        <br class="auto-style11" />
                        <br class="auto-style11" />
                        <br class="auto-style11" />
                    </td>
                </tr>
            </table>
            <br />
            <span class="auto-style11">Group Members Consent and Information :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Group ID:</span><asp:TextBox ID="TextBox_groupId" runat="server" Enabled="False" Width="89px" CssClass="auto-style11"></asp:TextBox>
            <br class="auto-style11" />
            <br class="auto-style11" />
            <span class="auto-style11">It is declared that we select this group, the study area and supervisor for the final year project with our consent.</span><br class="auto-style11" />
            <br class="auto-style11" />
            <table class="auto-style5">
                <tr>
                    <td class="auto-style14">Student name</td>
                    <td class="auto-style11">ID</td>
                    <td class="auto-style13">Email</td>
                    <td class="auto-style12">Cell phone</td>
                    <td class="auto-style11">Signature</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox_name" runat="server" Width="128px" CssClass="auto-style11"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="89px" CssClass="auto-style11"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox_email" runat="server" Width="193px" CssClass="auto-style11"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox_phone" runat="server" Width="215px" CssClass="auto-style11"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style11"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br class="auto-style11" />
            <span class="auto-style11">Superviosr:</span><br class="auto-style11" />
            <asp:TextBox ID="TextBox_super" runat="server" CssClass="auto-style9" Width="186px" Height="28px" ReadOnly="True"></asp:TextBox>
            <br class="auto-style11" />
            <br class="auto-style11" />
            <br class="auto-style11" />
            <span class="auto-style11">Project Title :</span><br class="auto-style11" />
            <asp:TextBox ID="TextBox_title" runat="server" Width="264px" Height="32px" CssClass="auto-style11"></asp:TextBox>
            <br class="auto-style11" />
            <br class="auto-style11" />
            <br class="auto-style11" />
            <span class="auto-style11">Knowledge Area:</span><br class="auto-style11" />
            <br class="auto-style11" />
            <asp:TextBox ID="TextBox_area" runat="server" Width="329px" Height="40px" CssClass="auto-style11"></asp:TextBox>
            <br class="auto-style11" />
            <br class="auto-style11" />
            <span class="auto-style11">Breif Description :</span><br class="auto-style11" />
            <br class="auto-style11" />
            <asp:TextBox ID="TextBox_desription" runat="server" TextMode="MultiLine" Width="401px" Height="72px" CssClass="auto-style11"></asp:TextBox>
            <br class="auto-style11" />
            <br class="auto-style11" />
            <br class="auto-style11" />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style10" BackColor="AliceBlue" Height="42px" OnClick="Button1_Click" Text="Save" Width="86px" />
            <br class="auto-style11" />
        </div>
    </form>
</body>
</html>
