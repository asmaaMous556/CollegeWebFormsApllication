<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorEvaluateCOIT408.aspx.cs" Inherits="CollegeWebFormApp.SupervisorEvaluateHisStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 2664px;
        }
        .auto-style2 {
            width: 100%;
            height: 104px;
            border: 1px solid #FFFFFF;
        }
        .auto-style6 {
            height: 174px;
            width: 708px;
        }
        .auto-style7 {
            height: 174px;
        }
        .auto-style9 {
            width: 100%;
            border: 1px solid #000000;
        }
        .auto-style10 {
            height: 88px;
        }
        .auto-style14 {
            width: 100%;
            height: 84px;
        }
        .auto-style16 {
            height: 49px;
        }
        .auto-style17 {
            height: 58px;
        }
        .auto-style19 {
            height: 49px;
            width: 143px;
            font-size: large;
        }
        .auto-style20 {
            height: 58px;
            width: 400px;
        }
        .auto-style21 {
            height: 49px;
            width: 400px;
            font-size: large;
        }
        .auto-style23 {
            height: 62px;
            width: 400px;
            font-size: large;
        }
        .auto-style25 {
            height: 62px;
        }
        .auto-style37 {
            height: 45px;
            width: 217px;
            font-size: large;
        }
        .auto-style38 {
            height: 45px;
            width: 158px;
        }
        .auto-style39 {
            height: 58px;
            width: 154px;
        }
        .auto-style41 {
            height: 45px;
            width: 154px;
        }
        .auto-style43 {
            height: 56px;
            width: 217px;
            font-size: large;
        }
        .auto-style44 {
            height: 56px;
            width: 158px;
        }
        .auto-style45 {
            height: 56px;
            width: 154px;
        }
        .auto-style46 {
            height: 58px;
            width: 520px;
            font-size: large;
        }
        .auto-style47 {
            height: 56px;
            width: 520px;
            font-size: large;
        }
        .auto-style48 {
            height: 45px;
            width: 520px;
            font-size: large;
        }
        .auto-style49 {
            height: 58px;
            width: 152px;
        }
        .auto-style50 {
            height: 56px;
            width: 152px;
        }
        .auto-style51 {
            height: 45px;
            width: 152px;
        }
        .auto-style52 {
            height: 58px;
            width: 158px;
        }
        .auto-style53 {
            width: 249px;
            font-size: large;
        }
        .auto-style54 {
            height: 65px;
            width: 217px;
            font-size: large;
        }
        .auto-style55 {
            height: 65px;
            width: 520px;
            font-size: large;
        }
        .auto-style56 {
            height: 65px;
            width: 158px;
        }
        .auto-style57 {
            height: 65px;
            width: 152px;
        }
        .auto-style58 {
            height: 65px;
            width: 154px;
        }
        .auto-style63 {
            height: 49px;
            width: 231px;
            font-size: large;
        }
        .auto-style64 {
            height: 58px;
            width: 231px;
            font-size: large;
        }
        .auto-style65 {
            height: 58px;
            width: 230px;
            font-size: large;
        }
        .auto-style66 {
            height: 49px;
            width: 230px;
            font-size: large;
        }
        .auto-style67 {
            height: 58px;
            width: 227px;
            font-size: large;
        }
        .auto-style68 {
            height: 49px;
            width: 227px;
            font-size: large;
        }
        .auto-style70 {
            height: 62px;
            width: 230px;
            font-size: large;
        }
        .auto-style71 {
            height: 58px;
            width: 217px;
            font-size: large;
        }
        .auto-style72 {
            height: 58px;
            width: 143px;
            font-size: large;
        }
        .auto-style73 {
            height: 62px;
            width: 143px;
        }
        .auto-style74 {
            height: 58px;
            width: 146px;
            font-size: large;
        }
        .auto-style75 {
            height: 58px;
            width: 83px;
        }
        .auto-style76 {
            height: 62px;
            width: 83px;
        }
        .auto-style77 {
            height: 49px;
            width: 83px;
        }
        .auto-style80 {
            height: 88px;
            width: 316px;
            font-size: large;
        }
        .auto-style83 {
            height: 88px;
            width: 199px;
            font-size: large;
        }
        .auto-style89 {
            margin-left: 196px;
            font-size: large;
        }
        .auto-style12 {
            height: 88px;
            width: 392px;
            font-size: large;
        }
        .auto-style88 {
            height: 42px;
            font-size: large;
        }
        .auto-style87 {
            width: 141px;
            font-size: large;
        }
        .auto-style86 {
            width: 138px;
            font-size: large;
        }
        .auto-style90 {
            width: 254px;
            height: 153px;
            font-size: large;
            margin-left: 371px;
        }
        .auto-style91 {
            font-size: large;
        }
        .auto-style92 {
            height: 88px;
            width: 238px;
            font-size: large;
        }
        .auto-style93 {
            height: 62px;
            width: 143px;
            font-size: large;
        }
        .auto-style94 {
            height: 58px;
            width: 400px;
            font-size: large;
        }
        .auto-style95 {
            height: 58px;
            font-size: large;
        }
        </style>
</head>
<body  style="height: 2725px; margin-left: 0px;">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6"><span class="auto-style91">Kingdom of Saudia Arabia</span><br class="auto-style91" />
                        <span class="auto-style91">Ministry of Education
                        </span>
                        <br class="auto-style91" />
                        <span class="auto-style91">Higher of Education
                        </span>
                        <br class="auto-style91" />
                        <span class="auto-style91">King Abdulaziz University</span><br class="auto-style91" />
                        <span class="auto-style91">Faculty of Computing and Information Technology&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <br class="auto-style91" />
                        <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <img alt="" class="auto-style90" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /><br class="auto-style91" />
&nbsp;<asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style92" Height="41px" Text="Home Page" Width="126px" OnClick="Button6_Click" />
                                    <asp:Button ID="Button5" runat="server" BackColor="AliceBlue" CssClass="auto-style91" Height="43px" Text="Create Transaction as Committee" Width="307px" OnClick="Button4_Click" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Project(COIT498) Evaluation Form (for supervisor)</span><br class="auto-style91" />
                        <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (At the end of semester)</span><br class="auto-style91" />
                        <span class="auto-style91">Supervisor:
                        </span>
                        <asp:TextBox ID="TextBox_name" runat="server" Enabled="False" CssClass="auto-style91"></asp:TextBox>
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <span class="auto-style91">&nbsp;Students
                        </span>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" Width="94px" CssClass="auto-style91">
                        </asp:DropDownList>
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                    </td>
                    <td class="auto-style7"><span class="auto-style91">المملكة العربية السعودية&nbsp;&nbsp;&nbsp;&nbsp;
                        </span>
                        <br class="auto-style91" />
                        <span class="auto-style91">وزارة التعليم</span><br class="auto-style91" />
                        <span class="auto-style91">التعليم العالي</span><br class="auto-style91" />
                        <span class="auto-style91">جامعة الملك عبد العزيز</span><br class="auto-style91" />
                        <span class="auto-style91">كلية الحاسبات وتقنية المعلومات برابغ
                        </span>
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                        <br class="auto-style91" />
                    </td>
                </tr>
            </table>
            <br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style80">Expected Outcomes (Evaluation Criteria)</td>
                    <td class="auto-style83">Max Mark</td>
                    <td class="auto-style10">
                        <table class="auto-style14">
                            <tr>
                                <td class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Marks Obtained </td>
                            </tr>
                            </table>
                    </td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;<span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(A)</span><br class="auto-style91" />
            <span class="auto-style91">So(A ): the student ability to apply knowledge of computing and mathematics appropriate to the discipline</span><br class="auto-style91" />
            <br class="auto-style91" />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style94">Formulate Proplem based on knowledge of computing and mathematics</td>
                    <td class="auto-style64">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox1" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">Establish connection between theory and problem </td>
                    <td class="auto-style63">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox4" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style16">
                        &nbsp;</td>
                </tr>
            </table>
            <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <br class="auto-style91" />
            <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(B)</span><br class="auto-style91" />
            <span class="auto-style91">SO(B): Student&#39;s ability to analyze a problem and and identify and define the computing requirments appropriate to it&#39;s solution</span><br class="auto-style91" />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style94">Define and analyze computer proplem</td>
                    <td class="auto-style65">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox7" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">Identify challenges and willingness to explore effective solutions</td>
                    <td class="auto-style66">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox10" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style16">
                        &nbsp;</td>
                </tr>
            </table>
            <br class="auto-style91" />
            <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(C)</span><br class="auto-style91" />
            <span class="auto-style91">So(C): The student ability to design ,implement and evalute computer based system, process, component or program to meet desired needs (C).</span><br class="auto-style91" />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style94">Level of engagment in project design </td>
                    <td class="auto-style67">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox13" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">Generate and verify test cases</td>
                    <td class="auto-style68">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox16" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style16">
                        &nbsp;</td>
                </tr>
            </table>
            <br class="auto-style91" />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style12">Expected Outcomes (Evaluation Criteria)</td>
                    <td class="auto-style92">Max Mark</td>
                    <td class="auto-style10">
                        <table class="auto-style14">
                            <tr>
                                <td colspan="3" class="auto-style88">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Marks Obtained </td>
                            </tr>
                            <tr>
                                <td class="auto-style87">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td class="auto-style86">&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td class="auto-style91">&nbsp;&nbsp;&nbsp; </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <br class="auto-style91" />
            <br class="auto-style91" />
            <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome (D)</span><br class="auto-style91" />
            <span class="auto-style91">&nbsp;So(D) : The student ability to function on a team to accompolish a comman goal
            </span>
            <br class="auto-style91" />
            <br class="auto-style91" />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style94">Contribution to the Project team/work</td>
                    <td class="auto-style65">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox19" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">Tasking responsibility </td>
                    <td class="auto-style70">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox22" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">Valuation of other team members </td>
                    <td class="auto-style66">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox25" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style16">
                        &nbsp;</td>
                </tr>
            </table>
            <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome (F)</span><br class="auto-style91" />
            <span class="auto-style91">SO(F): Student&#39;s ability to communicate with a range of audiences(f).</span><br class="auto-style91" />
            <br class="auto-style91" />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style95" colspan="2">Information &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style52">
                        <asp:TextBox ID="TextBox28" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style49">
                        &nbsp;</td>
                    <td class="auto-style39">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style53" rowspan="2">Report part</td>
                    <td class="auto-style43">English language</td>
                    <td class="auto-style47">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="TextBox31" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style50">
                        &nbsp;</td>
                    <td class="auto-style45">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">Format</td>
                    <td class="auto-style48">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;</td>
                    <td class="auto-style38">
                        <asp:TextBox ID="TextBox34" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style51">
                        &nbsp;</td>
                    <td class="auto-style41">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style53" rowspan="2">Presentation Part </td>
                    <td class="auto-style54">Questions and answers</td>
                    <td class="auto-style55">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style56">
                        <asp:TextBox ID="TextBox37" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style57">
                        &nbsp;</td>
                    <td class="auto-style58">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71">presentation skills</td>
                    <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;</td>
                    <td class="auto-style52">
                        <asp:TextBox ID="TextBox40" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style49">
                        &nbsp;</td>
                    <td class="auto-style39">
                        &nbsp;</td>
                </tr>
            </table>
            <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(H)</span><br class="auto-style91" />
            <span class="auto-style91">&nbsp;SO(H):Recognation of&nbsp; the need for and ability to engage in continuing professional development
            </span>
            <br class="auto-style91" />
            <br class="auto-style91" />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style94">Access varied types of references to know the state of the art</td>
                    <td class="auto-style72">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox43" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">Show engerness to learn new knowledge and enhance skills</td>
                    <td class="auto-style93">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox46" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style25">
                        &nbsp;</td>
                </tr>
            </table>
            <br class="auto-style91" />
            <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(I)</span><br class="auto-style91" />
            <span class="auto-style91">So(I): Student&#39;s ability to use current techniques, skills and tools necessary for computing practice.</span><br class="auto-style91" />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style94">Student&#39;s command on tools and technique used for analysis and design </td>
                    <td class="auto-style74">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox49" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                </tr>
            </table>
            <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(K)</span><br class="auto-style91" />
            <span class="auto-style91">SO(K): An ability to identify and analyzes user&#39;s needs and take the into consideration in the selection, creation,evaluation and administration of computer-bsed systems.</span><br class="auto-style91" />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style94">Identify and analyze of user requirments</td>
                    <td class="auto-style72">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox52" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style75">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">Analyze and design computer-based system in accordance with user requirments</td>
                    <td class="auto-style93">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox55" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style76">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">Identify the Matrices for evaluating performance of computer -based systems</td>
                    <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox58" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style77">
                        &nbsp;</td>
                </tr>
            </table>
            <br class="auto-style91" />
            <br class="auto-style91" />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style20">
                        <br class="auto-style91" />
                        <span class="auto-style91">Provide project schedule using appropriate tool </span> </td>
                    <td class="auto-style72">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox61" runat="server" Width="85px" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style75">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">total</td>
                    <td class="auto-style73"><span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <strong><span class="auto-style91">100</span></strong></td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox64" runat="server" Width="85px" Enabled="False" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style76">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">40% out of 100</td>
                    <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;40</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox67" runat="server" Width="85px" Enabled="False" CssClass="auto-style91"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style77">
                        &nbsp;</td>
                </tr>
            </table>
            <br class="auto-style91" />
            <span class="auto-style91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Button ID="Button3" runat="server" CssClass="auto-style89" BackColor="AliceBlue" Height="35px" Text="Calculate and Save" Width="223px" OnClick="Button3_Click" />
        </div>
    </form>
</body>
</html>
