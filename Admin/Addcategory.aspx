<%@ Page Language="C#"  Title="Add Category" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Addcategory.aspx.cs" Inherits="Addcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<html>
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
    <asp:Panel ID="Panel6" runat="server" GroupingText="Add Category" Font-Size="Small"
        Width="850px" Height="212px">
                   <table class="style1">
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Label ID="Label9" runat="server" Text="TheaterName:"></asp:Label>
                                <br />
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlth" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlth_SelectedIndexChanged" ></asp:DropDownList>
                                <br />
                                <br />
                            </td>
                            
                        </tr>
                       <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Label ID="Label10" runat="server" Text="ScreenName:"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlsn" runat="server" AutoPostBack="True"></asp:DropDownList>
                                
                                <br />
                                
                                <br />
                                
                            </td>
                       </tr>
                       <tr>
                           <td class="style2">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Label ID="Label11" runat="server" Text="Category Name:"></asp:Label>
                                <br />
                                <br />
                            </td>
                            <td>
                                <asp:TextBox ID="txtcat" runat="server"></asp:TextBox>
                                
                                <br />
                                
                                <br />
                                
                            </td>
                       </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnprev" runat="server" Text="&lt; Prev" OnClick="btnprev_Click" />
                                <asp:Button ID="btnsb" runat="server" Text="Add" OnClick="btnsb_Click" />
                                 <asp:Button ID="btnnext" runat="server" OnClick="btnnext_Click" Text="Next &gt;" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </br></br></br></br></br></br></br>
            </center>
    </div>
   
</body>
</html>
   </asp:Content>
