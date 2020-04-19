<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommitteeEvaluation.aspx.cs" Inherits="CollegeWebFormApp.CommitteeEvaluation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 3345px;
        }
        .auto-style9 {
            width: 100%;
            border: 1px solid #000000;
        }
        .auto-style80 {
            height: 88px;
            width: 444px;
        }
        .auto-style83 {
            height: 88px;
            width: 247px;
        }
        .auto-style10 {
            height: 88px;
        }
        .auto-style14 {
            width: 100%;
            height: 84px;
        }
        .auto-style85 {
            width: 126px;
        }
        .auto-style84 {
            width: 133px;
        }
        .auto-style20 {
            height: 58px;
            width: 400px;
        }
        .auto-style64 {
            height: 58px;
            width: 231px;
        }
        .auto-style17 {
            height: 58px;
        }
        .auto-style21 {
            height: 49px;
            width: 400px;
        }
        .auto-style16 {
            height: 49px;
        }
        .auto-style65 {
            height: 58px;
            width: 230px;
        }
        .auto-style66 {
            height: 49px;
            width: 230px;
        }
        .auto-style67 {
            height: 58px;
            width: 227px;
        }
        .auto-style68 {
            height: 49px;
            width: 227px;
        }
        .auto-style12 {
            height: 88px;
            width: 392px;
        }
        .auto-style13 {
            height: 88px;
            width: 238px;
        }
        .auto-style88 {
            height: 42px;
        }
        .auto-style87 {
            width: 141px;
        }
        .auto-style86 {
            width: 138px;
        }
        .auto-style23 {
            height: 62px;
            width: 400px;
        }
        .auto-style70 {
            height: 62px;
            width: 230px;
        }
        .auto-style25 {
            height: 62px;
        }
        .auto-style46 {
            height: 58px;
            width: 520px;
        }
        .auto-style52 {
            height: 58px;
            width: 158px;
        }
        .auto-style49 {
            height: 58px;
            width: 152px;
        }
        .auto-style39 {
            height: 58px;
            width: 154px;
        }
        .auto-style43 {
            height: 56px;
            width: 217px;
        }
        .auto-style47 {
            height: 56px;
            width: 520px;
        }
        .auto-style44 {
            height: 56px;
            width: 158px;
        }
        .auto-style50 {
            height: 56px;
            width: 152px;
        }
        .auto-style45 {
            height: 56px;
            width: 154px;
        }
        .auto-style37 {
            height: 45px;
            width: 217px;
        }
        .auto-style48 {
            height: 45px;
            width: 520px;
        }
        .auto-style38 {
            height: 45px;
            width: 158px;
        }
        .auto-style51 {
            height: 45px;
            width: 152px;
        }
        .auto-style41 {
            height: 45px;
            width: 154px;
        }
        .auto-style54 {
            height: 65px;
            width: 217px;
        }
        .auto-style55 {
            height: 65px;
            width: 520px;
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
        .auto-style71 {
            height: 58px;
            width: 217px;
        }
        .auto-style72 {
            height: 58px;
            width: 143px;
        }
        .auto-style73 {
            height: 62px;
            width: 143px;
        }
        .auto-style74 {
            height: 58px;
            width: 146px;
        }
        .auto-style75 {
            height: 58px;
            width: 83px;
        }
        .auto-style76 {
            height: 62px;
            width: 83px;
        }
        .auto-style19 {
            height: 49px;
            width: 143px;
        }
        .auto-style77 {
            height: 49px;
            width: 83px;
        }
        .auto-style90 {
            margin-left: 147px;
        }
        .auto-style91 {
            margin-left: 192px;
        }
    </style>
</head>
<body style="height: 1942px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h3>
            <br />
                <br />
                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project 2 (COIT 499)Evaluation form (for a committe member)<br />
                <br />
                <br />
                <br />
                <br />
                Supervisor :<asp:TextBox ID="TextBox_name" runat="server" CssClass="auto-style90" Width="160px" OnTextChanged="TextBox61_TextChanged"></asp:TextBox>
                <br />
                <br />
                Student :<asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style91">
                </asp:DropDownList>
                <br />
            </h3>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style80">Expected Outcomes (Evaluation Criteria)</td>
                    <td class="auto-style83">Max Mark</td>
                    <td class="auto-style10">
                        <table class="auto-style14">
                            <tr>
                                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Marks Obtained </td>
                            </tr>
                            <tr>
                                <td class="auto-style85">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S1&nbsp;</td>
                                <td class="auto-style84">&nbsp;&nbsp;&nbsp;&nbsp; S2</td>
                                <td>&nbsp;&nbsp;&nbsp; S3</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(A)<br />
            So(A ): the student ability to apply knowledge of computing and mathematics appropriate to the discipline<br />
            <br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style20">Analyze data, information and results meaningfully</td>
                    <td class="auto-style64">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox1" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox2" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox3" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                </table>
            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(C)<br />
            So(C): The student ability to design ,implement and evalute computer based system, process, component or program to meet desired needs (C).<br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style20">Level of engagment in projet implementation </td>
                    <td class="auto-style67">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox13" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox14" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox15" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Generate and verify test cases</td>
                    <td class="auto-style68">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox16" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox17" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox18" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome (D)<br />
&nbsp;So(D) : The student ability to function on a team to accompolish a comman goal
            <br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style20">Contribution to the Project team/work</td>
                    <td class="auto-style65">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox19" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox20" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox21" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">Tasking responsibility </td>
                    <td class="auto-style70">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox22" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox23" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox24" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Valuation of other team members </td>
                    <td class="auto-style66">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox25" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox26" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox27" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            S1: Student (1)<br />
            <br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style12">Expected Outcomes (Evaluation Criteria)</td>
                    <td class="auto-style13">Max Mark</td>
                    <td class="auto-style10">
                        <table class="auto-style14">
                            <tr>
                                <td colspan="3" class="auto-style88">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Marks Obtained </td>
                            </tr>
                            <tr>
                                <td class="auto-style87">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S1&nbsp;</td>
                                <td class="auto-style86">&nbsp;&nbsp;&nbsp;&nbsp; S2</td>
                                <td>&nbsp;&nbsp;&nbsp; S3</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome (F)<br />
            SO(F): Student&#39;s ability to communicate effectively with a range of audiences.<br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style17" colspan="2">&nbsp;Technical contents (comprehensiveness-clarity and accuracy)&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style52">
                        <asp:TextBox ID="TextBox28" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style49">
                        <asp:TextBox ID="TextBox29" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style39">
                        <asp:TextBox ID="TextBox30" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">&nbsp;</td>
                    <td class="auto-style43">English language (grammer and spelling)</td>
                    <td class="auto-style47">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="TextBox31" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style50">
                        <asp:TextBox ID="TextBox32" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style45">
                        <asp:TextBox ID="TextBox33" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">Style and Formatting</td>
                    <td class="auto-style48">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;</td>
                    <td class="auto-style38">
                        <asp:TextBox ID="TextBox34" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style51">
                        <asp:TextBox ID="TextBox35" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style41">
                        <asp:TextBox ID="TextBox36" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">&nbsp;</td>
                    <td class="auto-style54">Questions and answers</td>
                    <td class="auto-style55">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style56">
                        <asp:TextBox ID="TextBox37" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style57">
                        <asp:TextBox ID="TextBox38" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style58">
                        <asp:TextBox ID="TextBox39" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style71">presentation skills</td>
                    <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;</td>
                    <td class="auto-style52">
                        <asp:TextBox ID="TextBox40" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style49">
                        <asp:TextBox ID="TextBox41" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style39">
                        <asp:TextBox ID="TextBox42" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(G)<br />
&nbsp;SO(G):An ability to analyze the local and global impact of computing on individuals, organizers, and society.<br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style20">Motivation of the project</td>
                    <td class="auto-style72">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox43" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox44" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox45" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">Scope of the project (Identify implication of the project on the individuala/organization/society at large)</td>
                    <td class="auto-style73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox46" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox47" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox48" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(H)<br />
            SO(H): Recognation of the need for and an ability to engage in continunig professional development.<br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style20">Access varied types of references to know the stateof the art</td>
                    <td class="auto-style72">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox62" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox63" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox64" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">Show eagerness to learn new knowlegde and enhance skills </td>
                    <td class="auto-style73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox65" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox66" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox67" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(i)<br />
            So(i): Student&#39;s ability to use current techniques, skills and tools necessary for computing practice
            <br />
            <br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style20">Student&#39;s command on tools and technique used for implementation</td>
                    <td class="auto-style74">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox49" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox50" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox51" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(I)<br />            <br />
So(I): An Ability to effectively integrated IT-based solution into the user environment.<br />
            <br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style20">Knowledge of the integration technologies based on project&#39;s content#39;s content</td>
                    <td class="auto-style74">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox68" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox69" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox70" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
            </table>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student outcome(n)<br />
            <br />
            SO(n): An ability to assest in the creation of an effective project plan.<br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style20">Provide project schedule using appropriate tool ropriate tool </td>
                    <td class="auto-style72">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox52" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox53" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style75">
                        <asp:TextBox ID="TextBox54" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">total</td>
                    <td class="auto-style73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>100</strong></td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox55" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox56" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style76">
                        <asp:TextBox ID="TextBox57" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">60% out of 100</td>
                    <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>60</strong></td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox58" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox59" runat="server" Width="85px"></asp:TextBox>
                    </td>
                    <td class="auto-style77">
                        <asp:TextBox ID="TextBox60" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
