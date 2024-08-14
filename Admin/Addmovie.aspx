<%@ Page Language="C#" Title="Add Movie" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Addmovie.aspx.cs" Inherits="Addmovie" %>
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
    <asp:Panel ID="Panel1" runat="server" GroupingText="Add Movie"
                            Font-Size="Small" Width="850px" Height="155px">
                            <table class="style1">
                                <tr>
                                    <td class="auto-style2">&nbsp;
                                    </td>
                                    <td class="auto-style3">
                                        <asp:Label ID="lblth" runat="server" Text="Select Screen:"></asp:Label>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:DropDownList ID="ddlsc" runat="server" AutoPostBack="false">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style5">
                                        <asp:CompareValidator ID="CompareValidator2" runat="server"
                                            ControlToValidate="ddlsc" ErrorMessage="Select Screen" Operator="NotEqual"
                                            ValidationGroup="a" ValueToCompare="Select"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">&nbsp;</td>
                                    <td class="style2">
                                        <asp:Label ID="Label1" runat="server" Text="Movie Name:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtMovieName" runat="server" MaxLength="20" ValidationGroup="a" Width="180px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMovieName" ErrorMessage="Required" ValidationGroup="a"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               
                                <tr>
                                    <td class="style5">&nbsp;</td>
                                    <td class="style2">
                                        <asp:Label ID="Label2" runat="server" Text="Movie Image:"></asp:Label>
                                    </td>
                                    <td>
                                         <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </td>
                                </tr>
                                 <tr>
                                    <td class="style5">&nbsp;</td>
                                    <td class="style2">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="btnmovie" runat="server" 
                                            Text="Add" ValidationGroup="a" OnClick="btnmovie_Click" />
                                            
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
            </center>
       </br></br></br></br></br></br></br></br></br>
    
    </div>
    
</body>
</asp:Content>
