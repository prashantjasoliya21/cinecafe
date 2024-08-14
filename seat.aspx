<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seat.aspx.cs" Inherits="seat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" BorderColor="#151F99" CellPadding="5"   >
            <ItemTemplate>
                
                <table>
                        <tr>
                            <td>
                            <div class="container">
                             <asp:HyperLink ID="HyperLink1" Text='<%# Eval("RowName") %>' runat="server"></asp:HyperLink>

                           </div>
                        </td>
                             <td>
                            <div class="container">
                                            <asp:HyperLink ID="HyperLink4" Text='<%# Eval("cate_name") %>' runat="server"></asp:HyperLink>

                           </div></td>
                            <td>
                                 <div>
                                                                                 <asp:ImageButton ID="Img1" OnClick="Img1_Click"  CommandArgument='<%# Eval("1") %>'  CommandName="ib1" ImageUrl="~/img/chair.png"
                                              runat="server" />

                                 </div>
                        </td>
                            
                    </tr>
                    </table>
                    
            </ItemTemplate>
     </asp:DataList>
    </div>
    </form>
</body>
</html>
