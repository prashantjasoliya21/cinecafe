<%@ Page Language="C#" Title="Add Theater" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Addtheater.aspx.cs" Inherits="Addtheater" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<html>
    <head>
<link href="theater.css" rel="stylesheet" />  
        </head>   
<body>
    
    <div>
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                        <br />
        <center>
                        <center><asp:Label ID="Label1" runat="server" Text="Add Theater" Font-Size="X-Large"></asp:Label></center>
                                        </br></br></br></br></br></br></br></br>
            <asp:Label ID="Label7" runat="server" Text="TheaterName:"></asp:Label>
          
                                        <asp:TextBox ID="txttheater" runat="server" placeholder="Add Theater"></asp:TextBox>
          
                                   
                                       </br></br></br> <asp:Button ID="btnsubmitth" runat="server" OnClick="btnsubmitth_Click" Text="Insert" />
                                        &nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="btnnext" runat="server" OnClick="btnnext_Click" Text="Next" />
                                       </br></br></br></br></br></br></br></br></br></br></br></br></br></br>
                                    
            </center>
    </div>
  
</body>
</html>
    </asp:Content>