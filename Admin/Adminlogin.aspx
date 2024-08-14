<%@ Page Language="C#"Title="CINEAFE" MasterPageFile="~/Admin/login.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="GridView_As_A_MOVIE_ScreenLayout_Adminlogin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    
    <link href="Adminlogin.css" rel="stylesheet" />
   </head>
<body>
    <form id="form1" runat="server">
    <div class="box">
        <div class="div12">
        <center><h1><asp:Label ID="lblsignin" runat="server" CssClass="login" Text="Login In"></asp:Label></h1></center>
        <hr class="line1"/>
        <br />
        <br />
        <asp:Label ID="Labeluname" runat="server" CssClass="lblclgname" Text="User Name  :  "></asp:Label>
        <asp:TextBox ID="txtun" runat="server" CssClass="txtclgname"></asp:TextBox><br /><br />
        <asp:Label ID="Labelpwd" runat="server" CssClass="lblclgname" Text="Password  :  "></asp:Label>
       &nbsp; <asp:TextBox ID="txtpw" runat="server" CssClass="txtclgname" TextMode="Password"></asp:TextBox><br /><br /><br />
        <center><asp:Button ID="btnlogin" runat="server" CssClass="btnsubmit" Text="Login" OnClick="btnlogin_Click"/></center>
    </div>
        </div>
    </form>
</body>
</html>
    </asp:Content>