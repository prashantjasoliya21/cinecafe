<%@ Page EnableEventValidation="false" Debug="false" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
     
    <title>Checkbox Test</title>
   
    

    <style type="text/css">
        

    </style>


</head>
<body>
    <div>
        <asp:Label ID="lblshow" Text="" runat="server" />
    </div>

    <form id="form1" runat="server">
       <div>
           <asp:ImageButton ID="img12" ImageUrl="~/img/chair.png" OnClick="img12_Click" runat="server" />
           <asp:ImageButton ID="ImageButton1" ImageUrl="~/img/chair.png" OnClick="ImageButton1_Click" runat="server" />
           <asp:ImageButton ID="ImageButton2" ImageUrl="~/img/chair.png" OnClick="ImageButton2_Click" runat="server" />
           <asp:ImageButton ID="ImageButton3" ImageUrl="~/img/chair.png" OnClick="ImageButton3_Click" runat="server" />
       </div>
       
    </form>
</body>
</html>
