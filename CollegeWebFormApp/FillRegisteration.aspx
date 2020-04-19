<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FillRegisteration.aspx.cs" Inherits="CollegeWebFormApp.FillRegisteration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            height: 34px;
        }
        .auto-style4 {
            height: 45px;
        }
        .auto-style5 {
            height: 48px;
        }
        .auto-style6 {
            height: 272px;
        }
        .auto-style7 {
            height: 56px;
        }
        .auto-style8 {
            height: 49px;
        }
        .auto-style9 {
            height: 43px;
        }
        .auto-style10 {
            height: 43px;
            width: 299px;
        }
        .auto-style11 {
            height: 49px;
            width: 299px;
        }
        .auto-style12 {
            height: 56px;
            width: 299px;
        }
        .auto-style13 {
            height: 272px;
            width: 299px;
        }
        .auto-style14 {
            height: 48px;
            width: 299px;
            font-size: large;
        }
        .auto-style15 {
            height: 45px;
            width: 299px;
            font-size: large;
        }
        .auto-style16 {
            height: 34px;
            width: 299px;
            font-size: large;
        }
        .auto-style17 {
            height: 31px;
            width: 299px;
            font-size: large;
        }
        .auto-style18 {
            margin-left: 60px;
            font-size: large;
        }
        .auto-style19 {
            height: 44px;
        }
        .auto-style20 {
            margin-left: 392px;
            font-size: large;
        }
        .auto-style21 {
            margin-left: 42px;
        }
        .auto-style23 {
            width: 100%;
            border: 1px solid #ffffff;
        }
        .auto-style24 {
            height: 58px;
        }
        .auto-style25 {
            height: 60px;
        }
        .auto-style26 {
            height: 53px;
        }
        .auto-style28 {
            height: 57px;
            font-size: large;
        }
        .auto-style29 {
            height: 70px;
        }
        .auto-style30 {
            height: 43px;
            width: 591px;
            font-size: large;
        }
        .auto-style31 {
            height: 49px;
            width: 591px;
            font-size: large;
        }
        .auto-style32 {
            height: 56px;
            width: 591px;
            font-size: large;
        }
        .auto-style33 {
            height: 272px;
            width: 591px;
            font-size: large;
        }
        .auto-style34 {
            height: 48px;
            width: 591px;
        }
        .auto-style35 {
            height: 45px;
            width: 591px;
        }
        .auto-style36 {
            height: 34px;
            width: 591px;
        }
        .auto-style37 {
            height: 31px;
            width: 591px;
        }
        .auto-style38 {
            font-size: large;
        }
        .auto-style39 {
            height: 58px;
            font-size: large;
        }
        .auto-style40 {
            height: 60px;
            font-size: large;
        }
        .auto-style41 {
            height: 53px;
            font-size: large;
        }
        .auto-style42 {
            height: 79px;
            width: 299px;
        }
        .auto-style43 {
            height: 79px;
            width: 591px;
            font-size: large;
        }
        .auto-style44 {
            height: 79px;
        }
        .auto-style45 {
            width: 254px;
            height: 153px;
        }
        .auto-style50 {
            font-size: large;
            margin-top: 10px;
        }
        .auto-style92 {
            height: 88px;
            width: 238px;
            font-size: large;
            margin-top: 8px;
        }
        </style>
</head> 

   <%--action="mailto:asmaamosmoh@gmail.com" method="post" enctype="text/plain"--%>
<body style="height: 1037px">
    <form id="form1" runat="server"  >
        <table class="auto-style1">
            <tr>
                <td class="auto-style42">
                                    <br />
                    <img alt="" class="auto-style45" src="logo/WhatsApp%20Image%202020-04-07%20at%209.31.13%20AM.jpeg" /></td>
                <td class="auto-style43">
                    <br />
                    <br />
                    <br />
                                    <asp:Button ID="Button4" runat="server" BackColor="AliceBlue" CssClass="auto-style50" Height="43px" Text="Out Coming Transaction" Width="207px" OnClick="Button2_Click" />
                                    <asp:Button ID="Button5" runat="server" BackColor="AliceBlue" CssClass="auto-style50" Height="43px" Text="In Coming Transaction" Width="209px" OnClick="Button10_Click" />
                    <asp:Button ID="Button6" runat="server" BackColor="AliceBlue" CssClass="auto-style92" Height="41px" Text="Home Page" Width="126px" OnClick="Button6_Click" />
                                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style44">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style30">&nbsp;&nbsp;<br />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registeration Senior Project 1 (COIT498)</td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style31">Semester
                    1</td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style12"><span class="auto-style38">Student Name :
                    </span>
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style38"></asp:Label>
                </td>
                <td class="auto-style32">Eligibility of the student for taking senior project 1(COIT498)</td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <br class="auto-style38" />
                    <br class="auto-style38" />
                    <table class="auto-style23">
                        <tr>
                            <td class="auto-style28">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style41">Name:</td>
                        </tr>
                        <tr>
                            <td class="auto-style39">E-mail:</td>
                        </tr>
                        <tr>
                            <td class="auto-style40">Password:</td>
                        </tr>
                        <tr>
                            <td class="auto-style39">CellPhone:</td>
                        </tr>
                    </table>
                    </td>
                <td class="auto-style33">
                    <table class="auto-style23">
                        <tr>
                            <td class="auto-style29">
                                <asp:Button ID="Button2" runat="server" Height="46px" OnClick="Button2_Click1" Text="I had registerd before!" Width="228px" CssClass="auto-style38" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style26">
                                <asp:TextBox ID="TextBox_name" runat="server" CssClass="auto-style38"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style24">
                                <asp:TextBox ID="TextBox_email" runat="server" CssClass="auto-style38"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25">
                                <asp:TextBox ID="TextBox_pass" runat="server" TextMode="Password" CssClass="auto-style38"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style24">
                                <asp:TextBox ID="TextBox_cellPhone" runat="server" CssClass="auto-style38"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style14">The student has 100 credit hours or more .Earned credit hours :</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBox_Hours" runat="server" CssClass="auto-style18" OnTextChanged="TextBox2_TextChanged" Width="235px"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style15">The student has passed COIS342 (Database) :</td>
                <td class="auto-style35">
                    <asp:TextBox ID="TextBox_Database" runat="server" CssClass="auto-style18" OnTextChanged="TextBox2_TextChanged" Width="235px"></asp:TextBox>
                    <br class="auto-style38" />
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style16">The student has passed COIS374 (Computer Network) :</td>
                <td class="auto-style36">
                    <asp:TextBox ID="TextBox_Computer_network" runat="server" CssClass="auto-style18" OnTextChanged="TextBox2_TextChanged" Width="235px"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style17">The student has passed COIS415 (Data Analysis) :</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox_DataAnalysis" runat="server" CssClass="auto-style18" OnTextChanged="TextBox2_TextChanged" Width="235px"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="Btn_send" runat="server" CssClass="auto-style20" OnClick="Btn_send_Click" Text="Save" Width="98px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style38"> </span>
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Label" Visible="False" CssClass="auto-style38"></asp:Label>
                    <span class="auto-style38">&nbsp;
                    </span>
                    <asp:Label ID="Label3" runat="server" ForeColor="#33CC33" Text="Label" Visible="False" CssClass="auto-style38"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" CssClass="auto-style21" OnClick="Button1_Click" Text="Choose" Width="93px" Visible="False" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
