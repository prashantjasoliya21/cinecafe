<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clientseat.aspx.cs" Inherits="clientseat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="style3">
                        <asp:Label ID="Label2" runat="server" Text="Select Screen:"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:DropDownList ID="ddlseat" runat="server" >
                        </asp:DropDownList>
                    </td>
                    <tr>
                        <td class="style6">
                            <center>
                                 <asp:CheckBoxList ID="chkbSeats" runat="server" AutoPostBack="True"
                                            BorderStyle="None" Font-Size="XX-Small" Width="100%" Height="100%"
                                            RepeatDirection="Horizontal" RepeatLayout="Flow"
                                            Style="font-family: 'Arial Narrow'; font-size: xx-small;" >
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                            <asp:ListItem Value=""></asp:ListItem>
                                        </asp:CheckBoxList> 
                            </center>
                        </td>
                    </tr>
                </tr>
            </table>
         </div>
    </form>
</body>
</html>
