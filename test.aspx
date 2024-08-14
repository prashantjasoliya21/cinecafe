<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div>
            <asp:TextBox ID="lbl_logged" runat="server" />
         <br />
         <br />

          <asp:DataList ID="dtldate" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                   
                    <asp:LinkButton ID="Date" CssClass="btnli" CommandArgument='<%#Eval("Date") %>' runat="server" BackColor="Black" Text='<%#Convert.ToDateTime(Eval("Date")).ToString("dd MMM")%>' />
                 <br />
<br />
                </ItemTemplate>
            </asp:DataList>
        </div>
        </div>
    </form>
</body>
</html>
