<%@ Page Language="C#" Title="Add Seat" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Admin_addseat.aspx.cs" Inherits="Admin_addseat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    <style type="text/css">
        .style1 {
            width: 652px;
        }

        .style2 {
            width: 131px;
        }

        .style3 {
            width: 194px;
        }

        .style4 {
            width: 111px;
        }

        .style5 {
            width: 182px;
        }

        .style6 {
            width: 882px;
        }

        .auto-style1 {
            width: 882px;
            height: 159px;
        }

        .auto-style2 {
            width: 182px;
            height: 8px;
        }

        .auto-style3 {
            width: 131px;
            height: 8px;
        }

        .auto-style4 {
            width: 111px;
            height: 8px;
        }

        .auto-style5 {
            height: 8px;
        }
    </style>
    <style>
/* The container */
.container {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: yellowgreen;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: red;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
</style>
    <body>
       
            <div>
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                <center>
                        <asp:Panel ID="Panel2" runat="server" Font-Size="Small"
                            GroupingText="ScreenDesign" Width="850px">
                            <table class="style1">
                                <tr>
                                    <td class="style3">&nbsp;</td>
                                    <td class="style4">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        <asp:Label ID="Label2" runat="server" Text="Select Screen:"></asp:Label>
                                    </td>
                                    <td class="style4">
                                        <asp:DropDownList ID="ddlScreens" runat="server" AutoPostBack="True"
                                            OnSelectedIndexChanged="ddlScreens_SelectedIndexChanged1">
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                                            ControlToValidate="ddlScreens" ErrorMessage="Select Screen" Operator="NotEqual"
                                            ValidationGroup="add" ValueToCompare="Select"></asp:CompareValidator>
                                    </td>
                                </tr>
                                 <tr>
                                    <td class="style3">&nbsp;</td>
                                    <td class="style4">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        <asp:Label ID="Label1" runat="server" Text="Select Category:"></asp:Label>
                                    </td>
                                    <td class="style4">
                                        <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <asp:CompareValidator ID="CompareValidator2" runat="server"
                                            ControlToValidate="ddlcategory" ErrorMessage="Select category" Operator="NotEqual"
                                            ValidationGroup="add" ValueToCompare="Select"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">&nbsp;</td>
                                    <td class="style4">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        <asp:Label ID="Label3" runat="server" Text="Row Type (Row or Empty Line):"></asp:Label>
                                    </td>
                                    <td class="style4">
                                        <asp:DropDownList ID="ddlRowType" runat="server" AutoPostBack="True"
                                            OnSelectedIndexChanged="ddlRowType_SelectedIndexChanged">
                                            <asp:ListItem>Row</asp:ListItem>
                                            <asp:ListItem>Empty Line</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3">&nbsp;</td>
                                    <td class="style4">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        <asp:Label ID="Label5" runat="server" Text="Row Name:"></asp:Label>
                                    </td>
                                    <td class="style4">
                                        <asp:TextBox ID="txtRowName" runat="server" MaxLength="1" ValidationGroup="add"
                                            Width="200px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ControlToValidate="txtRowName" Display="Dynamic" ErrorMessage="Required"
                                            ValidationGroup="add"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">&nbsp;</td>
                                    <td class="style4">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        <asp:Label ID="lblSeatsPostion" runat="server" Text="Seats:"></asp:Label>
                                    </td>
                                    <td class="style4">
                                        <div class="container">
                                        <asp:CheckBox ID="chkSelectAll" runat="server" AutoPostBack="True"
                                            Text="  Select All" OnCheckedChanged="chkSelectAll_CheckedChanged" />
                                        <span class="checkmark">1</span>
                                            </div>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3">

                                        <asp:Label ID="Label6" runat="server" ForeColor="#3333CC"
                                            Text="(Checked Box Is Considered As Seat and Unchecked Box Is Considered As EmptySpace.)"></asp:Label>
                                    </td>


                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:CheckBoxList ID="chkbSeats" runat="server" AutoPostBack="True"
                                            BorderStyle="None" Font-Size="XX-Small" Width="100%" Height="100%"
                                            OnSelectedIndexChanged="chkbSeats_SelectedIndexChanged"
                                            RepeatDirection="Horizontal" RepeatLayout="Flow"
                                            Style="font-family: 'Arial Narrow'; font-size: xx-small;" >
                                            <asp:ListItem Value="1"></asp:ListItem>
                                            <asp:ListItem Value="2"></asp:ListItem>
                                            <asp:ListItem Value="3"></asp:ListItem>
                                            <asp:ListItem Value="4"></asp:ListItem>
                                            <asp:ListItem Value="5"></asp:ListItem>
                                            <asp:ListItem Value="6"></asp:ListItem>
                                            <asp:ListItem Value="7"></asp:ListItem>
                                            <asp:ListItem Value="8"></asp:ListItem>
                                            <asp:ListItem Value="9"></asp:ListItem>
                                            <asp:ListItem Value="10"></asp:ListItem>
                                            <asp:ListItem Value="11"></asp:ListItem>
                                            <asp:ListItem Value="12"></asp:ListItem>
                                            <asp:ListItem Value="13"></asp:ListItem>
                                            <asp:ListItem Value="14"></asp:ListItem>
                                            <asp:ListItem Value="15"></asp:ListItem>
                                            <asp:ListItem Value="16"></asp:ListItem>
                                            <asp:ListItem Value="17"></asp:ListItem>
                                            <asp:ListItem Value="18"></asp:ListItem>
                                            <asp:ListItem Value="19"></asp:ListItem>
                                            <asp:ListItem Value="20"></asp:ListItem>
                                            <asp:ListItem Value="21"></asp:ListItem>
                                            <asp:ListItem Value="22"></asp:ListItem>
                                            <asp:ListItem Value="23"></asp:ListItem>
                                            <asp:ListItem Value="24"></asp:ListItem>
                                            <asp:ListItem Value="25"></asp:ListItem>
                                            <asp:ListItem Value="26"></asp:ListItem>
                                            <asp:ListItem Value="27"></asp:ListItem>
                                            <asp:ListItem Value="28"></asp:ListItem>
                                            <asp:ListItem Value="29"></asp:ListItem>
                                            <asp:ListItem Value="30"></asp:ListItem>
                                        </asp:CheckBoxList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Button ID="btnprev" runat="server" Text="&lt; Prev" OnClick="btnprev_Click" />&nbsp;&nbsp;
                                        <asp:Button ID="btnSubmitScreenLayout" runat="server"
                                            OnClick="btnSubmitScreenLayout_Click" Text="Submit" ValidationGroup="add" />
                                        &nbsp;&nbsp;
                            <asp:Button ID="btnshow" runat="server" Text="View Screens" OnClick="btnshow_Click1" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                </center>
                </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td class="style6">
                        <center>
                        <asp:Panel ID="Panel3" runat="server" ScrollBars="Horizontal" Width="100%"
                            GroupingText="Screen Layout">
                            <asp:GridView ID="gvScreenLayout" runat="server" AutoGenerateColumns="False"
                                Width="755px" AllowPaging="True"
                                OnSelectedIndexChanging="gvScreenLayout_SelectedIndexChanging"
                                OnPageIndexChanging="gvScreenLayout_PageIndexChanging"
                                PageSize="26" ShowHeader="False" CellSpacing="1" OnSelectedIndexChanged="gvScreenLayout_SelectedIndexChanged">
                                <RowStyle BorderStyle="None" />

                                <Columns>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" Text='<%# Eval("RowName") %>' runat="server"></asp:HyperLink>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>
                                   

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink2" Text='<%# Eval("cate_name") %>' runat="server"></asp:HyperLink>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                          <div class="container">
                                            <asp:CheckBox ID="ImageButton1" CommandArgument='<%# Eval("1") %>' CommandName="ib1"
                                                Visible='<%# MyVisible(Eval("1").ToString()) %>' runat="server" />
                                            <span class="checkmark"></span>      
                                          </div>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <div class="container">
                                            <asp:CheckBox ID="ImageButton2" runat="server" CommandArgument='<%# Eval("2") %>'
                                                CommandName="ib2" Visible='<%# MyVisible(Eval("2").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                                <span class="checkmark"></span>
                                            </div>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton3" runat="server" CommandArgument='<%# Eval("3") %>'
                                                CommandName="ib3" Visible='<%# MyVisible(Eval("3").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton4" runat="server" CommandArgument='<%# Eval("4") %>'
                                                CommandName="ib4" Visible='<%# MyVisible(Eval("4").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>


                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton5" runat="server" CommandArgument='<%# Eval("5") %>' CommandName="ib5" Visible='<%# MyVisible(Eval("5").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton6" runat="server" CommandArgument='<%# Eval("6") %>' CommandName="ib6" Visible='<%# MyVisible(Eval("6").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton7" runat="server" CommandArgument='<%# Eval("7") %>' CommandName="ib7" Visible='<%# MyVisible(Eval("7").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton8" runat="server" CommandArgument='<%# Eval("8") %>' CommandName="ib8" Visible='<%# MyVisible(Eval("8").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton9" runat="server" CommandArgument='<%# Eval("9") %>' CommandName="ib9" Visible='<%# MyVisible(Eval("9").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton10" runat="server" CommandArgument='<%# Eval("10") %>' CommandName="ib10" Visible='<%# MyVisible(Eval("10").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton11" runat="server" CommandArgument='<%# Eval("11") %>' CommandName="ib11" Visible='<%# MyVisible(Eval("11").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton12" runat="server" CommandArgument='<%# Eval("12") %>' CommandName="ib12" Visible='<%# MyVisible(Eval("12").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton13" runat="server" CommandArgument='<%# Eval("13") %>' CommandName="ib13" Visible='<%# MyVisible(Eval("13").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton14" runat="server" CommandArgument='<%# Eval("14") %>' CommandName="ib14 " Visible='<%# MyVisible(Eval("14").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton15" runat="server" CommandArgument='<%# Eval("15") %>' CommandName="ib15" Visible='<%# MyVisible(Eval("15").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton16" runat="server" CommandArgument='<%# Eval("16") %>' CommandName="ib16" Visible='<%# MyVisible(Eval("16").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton17" runat="server" CommandArgument='<%# Eval("17") %>' CommandName="ib17" Visible='<%# MyVisible(Eval("17").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton18" runat="server" CommandArgument='<%# Eval("18") %>' CommandName="ib18" Visible='<%# MyVisible(Eval("18").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton19" runat="server" CommandArgument='<%# Eval("19") %>' CommandName="ib19" Visible='<%# MyVisible(Eval("19").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton20" runat="server" CommandArgument='<%# Eval("20") %>' CommandName="ib20" Visible='<%# MyVisible(Eval("20").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton21" runat="server" CommandArgument='<%# Eval("21") %>' CommandName="ib21" Visible='<%# MyVisible(Eval("21").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton22" runat="server" CommandArgument='<%# Eval("22") %>' CommandName="ib22" Visible='<%# MyVisible(Eval("22").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton23" runat="server" CommandArgument='<%# Eval("23") %>' CommandName="ib23" Visible='<%# MyVisible(Eval("23").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton24" runat="server" CommandArgument='<%# Eval("24") %>' CommandName="ib24" Visible='<%# MyVisible(Eval("24").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton25" runat="server" CommandArgument='<%# Eval("25") %>' CommandName="ib25" Visible='<%# MyVisible(Eval("25").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton26" runat="server" CommandArgument='<%# Eval("26") %>' CommandName="ib26" Visible='<%# MyVisible(Eval("26").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton27" runat="server" CommandArgument='<%# Eval("27") %>' CommandName="ib27" Visible='<%# MyVisible(Eval("27").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton28" runat="server" CommandArgument='<%# Eval("28") %>' CommandName="ib28" Visible='<%# MyVisible(Eval("28").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton29" runat="server" CommandArgument='<%# Eval("29") %>' CommandName="ib29" Visible='<%# MyVisible(Eval("29").ToString()) %>' ImageUrl="images/wchair.jpg" />
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="ImageButton30" runat="server" CommandArgument='<%# Eval("30") %>' CommandName="ib30" Visible='<%# MyVisible(Eval("30").ToString()) %>' ImageUrl="images/wchair.jpg" />

                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                </Columns>
                                <FooterStyle BorderStyle="None" />
                                <SelectedRowStyle BorderStyle="None" />
                                <EditRowStyle BorderStyle="None" />
                                <AlternatingRowStyle BorderStyle="None" />
                            </asp:GridView>
                        </asp:Panel>
                            </center>
                    </td>
                </tr>
                </table>
            </div>
                </br>
       
    </body>
</asp:Content>
