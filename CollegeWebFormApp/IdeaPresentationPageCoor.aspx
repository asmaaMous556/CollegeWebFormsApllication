<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IdeaPresentationPageCoor.aspx.cs" Inherits="CollegeWebFormApp.IdeaPresentationPageCoor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1321px;
        }
        .auto-style2 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style4 {
            height: 128px;
            width: 654px;
        }
        .auto-style3 {
            height: 128px;
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
        .auto-style12 {
            width: 100%;
            height: 219px;
            border: 1px solid #ffffff;
            margin-bottom: 27px;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            width: 271px;
            font-size: large;
        }
        .auto-style16 {
            width: 210px;
            font-size: large;
        }
        .auto-style17 {
            width: 157px;
            font-size: large;
        }
        .auto-style13 {
            margin-left: 18px;
            font-size: large;
        }
        .auto-style18 {
            width: 254px;
            height: 153px;
            margin-left: 384px;
        }
        .auto-style19 {
            width: 254px;
            height: 153px;
            font-size: large;
            margin-left: 104px;
        }
        </style>
</head>
<body style="height: 1144px">
    <form id="form2" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4"><span class="auto-style14">Kingdom of Saudia Arabia</span><br class="auto-style14" />
                        <span class="auto-style14">Ministry of Education
                        </span>
                        <br class="auto-style14" />
                        <span class="auto-style14">Higher of Education
                        </span>
                        <br class="auto-style14" />
                        <span class="auto-style14">King Abdulaziz University</span><br class="auto-style14" />
                        <span class="auto-style14">Faculty of Computing and Information Technology
                        <br />
                        <br />
                        <img alt="" class="auto-style18" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></span><br class="auto-style14" />
                        
                    <asp:Button ID="Button3" runat="server" BackColor="AliceBlue" CssClass="auto-style19" Height="40px" Text="Home Page" Width="117px" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style17" Height="40px" Text="Previous Page" Width="189px" OnClick="Button5_Click" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <span class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Idea Presentation and Evaluation and SuggestionForm(COIT 498)</span></td>
                    <td class="auto-style3"><span class="auto-style14">المملكة العربية السعودية &nbsp;&nbsp;
                        </span>
                        <br class="auto-style14" />
                        <span class="auto-style14">وزارة التعليم</span><br class="auto-style14" />
                        <span class="auto-style14">التعليم العالي</span><br class="auto-style14" />
                        <span class="auto-style14">جامعة الملك عبد العزيز</span><br class="auto-style14" />
                        <span class="auto-style14">كلية الحاسبات وتقنية المعلومات برابغ
                        </span>
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                        <br class="auto-style14" />
                    </td>
                </tr>
            </table>
            <br />
            <span class="auto-style14">Group Members Consent and Information :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Group ID <asp:TextBox ID="TextBox_groupId" runat="server" Enabled="False" Width="105px" CssClass="auto-style13" Height="30px"></asp:TextBox>
            </span>
            <br class="auto-style14" />
            <br class="auto-style14" />
            <span class="auto-style14">It is declared that we select this group, the study area and supervisor for the final year project with our consent.</span><br class="auto-style14" />
            <br class="auto-style14" />
            <table class="auto-style5">
                <tr>
                    <td class="auto-style17">Student name</td>
                    <td class="auto-style14">ID</td>
                    <td class="auto-style16">Email</td>
                    <td class="auto-style15">Cell phone</td>
                    <td class="auto-style14">Signature</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox_studnetName" runat="server" ReadOnly="True" Width="128px" CssClass="auto-style14"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_id" runat="server" ReadOnly="True" Width="89px" CssClass="auto-style14"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox_email" runat="server" ReadOnly="True" Width="193px" CssClass="auto-style14"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox_cellphone" runat="server" ReadOnly="True" Width="215px" CssClass="auto-style14"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_signature" runat="server" ReadOnly="True" CssClass="auto-style14"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br class="auto-style14" />
            <span class="auto-style14">Superviosr:</span><br class="auto-style14" />
            <asp:TextBox ID="TextBox_super" runat="server" CssClass="auto-style9" ReadOnly="True" Width="151px"></asp:TextBox>
            <br class="auto-style14" />
            <br class="auto-style14" />
            <br class="auto-style14" />
            <span class="auto-style14">Project Title :</span><br class="auto-style14" />
            <asp:TextBox ID="TextBox_title" runat="server" Height="27px" ReadOnly="True" Width="167px" CssClass="auto-style14"></asp:TextBox>
            <br class="auto-style14" />
            <br class="auto-style14" />
            <br class="auto-style14" />
            <span class="auto-style14">Knowledge Area:</span><br class="auto-style14" />
            <br class="auto-style14" />
            <asp:TextBox ID="TextBox_area" runat="server" Enabled="False" Height="52px" Width="280px" CssClass="auto-style14"></asp:TextBox>
            <br class="auto-style14" />
            <br class="auto-style14" />
            <span class="auto-style14">Breif Description :</span><br class="auto-style14" />
            <br class="auto-style14" />
            <asp:TextBox ID="TextBox_desription" runat="server" Height="58px" ReadOnly="True" TextMode="MultiLine" Width="267px" CssClass="auto-style14"></asp:TextBox>
            <br class="auto-style14" />
            <br class="auto-style14" />
            <table class="auto-style12">
                <tr>
                    <td class="auto-style14">Select State:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style14">
                            <asp:ListItem Text="--Select--" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Approved" Value="1"></asp:ListItem>
                            
                            <asp:ListItem Text="Accepted" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Review" Value="3"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">Comment</td>
                    <td>
                        <asp:TextBox ID="TextBox_comment" runat="server" TextMode="MultiLine" Height="47px" Width="253px" CssClass="auto-style14"></asp:TextBox>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Height="42px" Text="Send" Width="73px" OnClick="Button2_Click" CssClass="auto-style14" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
   <%-- <form id="form1" runat="server">
        <div class="auto-style11">
            <br />
        </div>
    </form>--%>
</body>
</html>
