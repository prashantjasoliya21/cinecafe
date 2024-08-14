<%@ Page Language="C#" Title="Add Screen" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Addscreen.aspx.cs" Inherits="Addscreen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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

<body>
   
    <div>
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <center>
    <asp:Panel ID="Panel1" runat="server" GroupingText="Add Screen"
                            Font-Size="Small" Width="850px" Height="155px">
        </br></br>
                            <table class="style1">
                                <tr>
                                    <td class="auto-style2">&nbsp;
                                    </td>
                                    <td class="auto-style3">
                                        <asp:Label ID="lblth" runat="server" Text="TheaterName:"></asp:Label>
                                      
                                 

                                    </td>
                                    <td class="auto-style4">
                                        <asp:DropDownList ID="ddltheater" runat="server" AutoPostBack="false"
                                           >
                                        </asp:DropDownList>
                                 

                                    </td>
                                    <td class="auto-style5">
                                        <asp:CompareValidator ID="CompareValidator2" runat="server"
                                            ControlToValidate="ddltheater" ErrorMessage="Select Theater" Operator="NotEqual"
                                            ValidationGroup="add" ValueToCompare="Select"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">&nbsp;</td>
                                    <td class="style2">
                                        <asp:Label ID="Label1" runat="server" Text="ScreenName:"></asp:Label>
                                    </td>
                                    <td>
                                        <br>
                                        <br>
                                        <br></br>
                                        <asp:TextBox ID="txtScreenName" runat="server" MaxLength="20" ValidationGroup="a" Width="180px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtScreenName" ErrorMessage="Required" ValidationGroup="a"></asp:RequiredFieldValidator>
                                        <br></br>
                                        </br>
                                        </br>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">&nbsp;</td>
                                    <td class="style2">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="btnprev" runat="server" Text="Prev" OnClick="btnprev_Click" />
                                        <asp:Button ID="btnSubmit" runat="server" 
                                            Text="Submit" ValidationGroup="a" OnClick="btnSubmit_Click" />
                                         <asp:Button ID="btnnext" runat="server" OnClick="btnnext_Click" Text="Next" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
            </br></br></br></br></br></br></br></br><br />
            </center>
    </div>
   
</body>

    </asp:Content>