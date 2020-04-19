<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorEvaluationOthers.aspx.cs" Inherits="CollegeWebFormApp.SupervisorEvaluationOthers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1381px;
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
        .auto-style12 {
            height: 88px;
            width: 378px;
        }
        .auto-style13 {
            height: 88px;
            width: 234px;
        }
        .auto-style10 {
            height: 88px;
        }
        .auto-style14 {
            width: 100%;
            height: 84px;
        }
        .auto-style60 {
            width: 99px;
        }
        .auto-style62 {
            width: 100%;
            border: 1px solid #FFFFFF;
        }
        .auto-style63 {
            height: 83px;
        }
        .auto-style64 {
            margin-left: 361px;
        }
        .auto-style78 {
            margin-left: 558px;
        }
        .auto-style79 {
            width: 95px;
        }
        .auto-style80 {
            margin-left: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6">Kingdom of Saudia Arabia<br />
                        Ministry of Education
                        <br />
                        Higher of Education
                        <br />
                        King Abdulaziz University<br />
                        Faculty of Computing and Information Technology
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Graduation&nbsp;Project Evaluation Form <br />
                        <br />
                        Graduation Project #1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style7">المملكة العربية السعودية&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        وزارة التعليم<br />
                        التعليم العالي<br />
                        جامعة الملك عبد العزيز<br />
                        كلية الحاسبات وتقنية المعلومات برابغ
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Graduation Project #2<br />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            FORM: IT-PRJ-Final Evaluation
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Supervisor:<asp:TextBox ID="TextBox_name" runat="server" CssClass="auto-style80"></asp:TextBox>
            <br />
            &nbsp;
            <br />
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style64" Height="23px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="112px">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style9">
                <tr>
                    <td class="auto-style12">Expected Outcomes (Evaluation Criteria)</td>
                    <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max Mark</td>
                    <td class="auto-style10">
                        <table class="auto-style14">
                            <tr>
                                <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Marks Obtained </td>
                            </tr>
                            <tr>
                                <td class="auto-style79">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; S1&nbsp;</td>
                                <td class="auto-style60">&nbsp;&nbsp;&nbsp;&nbsp; S2</td>
                                <td>&nbsp;&nbsp;&nbsp; S3</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Supervisor(s) grade (40% of the obtained grades in the form IT-PRJ-S499)</td>
                    <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 40&nbsp;</td>
                    <td class="auto-style10">
                        <table class="auto-style62">
                            <tr>
                                <td class="auto-style63">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="85px"></asp:TextBox>
                                </td>
                                <td class="auto-style63">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="85px"></asp:TextBox>
                                </td>
                                <td class="auto-style63">
                                    <asp:TextBox ID="TextBox3" runat="server" Width="85px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Average of committee grade (60% of the obtained markes in the form IT-PRJ-C498 or IT-PRJ-C4499)</td>
                    <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 60&nbsp;</td>
                    <td class="auto-style10">
                        <table class="auto-style62">
                            <tr>
                                <td class="auto-style63">
                                    <asp:TextBox ID="TextBox4" runat="server" Width="85px"></asp:TextBox>
                                </td>
                                <td class="auto-style63">
                                    <asp:TextBox ID="TextBox5" runat="server" Width="85px"></asp:TextBox>
                                </td>
                                <td class="auto-style63">
                                    <asp:TextBox ID="TextBox6" runat="server" Width="85px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Total </td>
                    <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 100&nbsp;</td>
                    <td class="auto-style10">
                        <table class="auto-style62">
                            <tr>
                                <td class="auto-style63">
                                    <asp:TextBox ID="TextBox7" runat="server" Width="85px"></asp:TextBox>
                                </td>
                                <td class="auto-style63">
                                    <asp:TextBox ID="TextBox8" runat="server" Width="85px"></asp:TextBox>
                                </td>
                                <td class="auto-style63">
                                    <asp:TextBox ID="TextBox9" runat="server" Width="85px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            Examination Committee:<br />
            1)<br />
            2)<br />
            3)<br />
            4)<br />
            <br />
            Examination Date:
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="auto-style78" Height="49px" OnClick="Button1_Click" Text="Save" Width="139px" />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
