<%@ Page Language="C#" Title="Add Rate" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Addrate.aspx.cs" Inherits="Addrate" %>
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
    <asp:Panel ID="Panel1" runat="server" GroupingText="Add Rate"
                            Font-Size="Small" Width="850px" Height="155px">
                            <table class="style1">
                                 <tr>
                                    <td class="auto-style2">&nbsp;
                                    </td>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label2" runat="server" Text="Select Movie:"></asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:DropDownList ID="ddlmovie1" runat="server" AutoPostBack="false">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                                            ControlToValidate="ddlmovie1" ErrorMessage="Select Movie" Operator="NotEqual"
                                            ValidationGroup="a" ValueToCompare="Select"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">&nbsp;
                                    </td>
                                    <td class="auto-style3">
                                        <asp:Label ID="lblime" runat="server" Text="Select Date:"></asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:DropDownList ID="ddldate1" runat="server" AutoPostBack="false">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:CompareValidator ID="CompareValidator2" runat="server"
                                            ControlToValidate="ddldate1" ErrorMessage="Select Date" Operator="NotEqual"
                                            ValidationGroup="a" ValueToCompare="Select"></asp:CompareValidator>
                                    </td>
                                </tr>
                                 <tr>
                                    <td class="auto-style2">&nbsp;
                                    </td>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label3" runat="server" Text="Select Time:"></asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:DropDownList ID="ddltime" runat="server" AutoPostBack="false">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:CompareValidator ID="CompareValidator3" runat="server"
                                            ControlToValidate="ddltime" ErrorMessage="Select Time" Operator="NotEqual"
                                            ValidationGroup="a" ValueToCompare="Select"></asp:CompareValidator>
                                    </td>
                                </tr>
                                 <tr>
                                    <td class="auto-style2">&nbsp;
                                    </td>
                                    <td class="auto-style3">
                                        <asp:Label ID="Label4" runat="server" Text="Select Category:"></asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:DropDownList ID="ddlcate2" runat="server" AutoPostBack="false">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:CompareValidator ID="CompareValidator4" runat="server"
                                            ControlToValidate="ddlcate2" ErrorMessage="Select category" Operator="NotEqual"
                                            ValidationGroup="a" ValueToCompare="Select"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">&nbsp;</td>
                                    <td class="style2">
                                        <asp:Label ID="Label1" runat="server" Text="Rate :"></asp:Label>
                                    </td>
                                    <td>
                                        
                                        <asp:TextBox ID="txtrate" runat="server"></asp:TextBox>
                                        
                                    </td>
                                </tr>
                               
                                <tr>
                                    <td class="style5">&nbsp;</td>
                                    <td class="style2">&nbsp;</td>
                                    <td>
                                        
                                        <asp:Button ID="btnrate" runat="server" Text="Add" ValidationGroup="a" OnClick="btnrate_Click" />
                                       
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
            </center></br></br></br></br></br></br></br></br></br>
    </div>
    
</body>
</asp:Content>
