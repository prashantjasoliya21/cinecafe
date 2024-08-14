<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addimage.aspx.cs" Inherits="Addimage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="moviename" runat="server" />
        <br />
        <br />
        <asp:FileUpload ID="FileUpload2" runat="server" />
        <br />
        <br />
        <asp:Button ID="addmovie" Text="Insert" OnClick="addmovie_Click" runat="server" />
    </div>
    </form>
</body>
</html>
