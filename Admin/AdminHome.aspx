<%@ Page Language="C#" Title="Admin Home" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="GridView_As_A_MOVIE_ScreenLayout_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="Adminhome.css" rel="stylesheet" />
    <style type="text/css">
        .style1 {
            width:100px;
        }
        .style2 {
            margin-top:60px;
            margin-bottom:60px;
        }
        .style3 {
            height:100px;
        }
       

    </style>

<body>
   <%-- <form id="f3" runat="server">--%>
    <div>
        <center>
            <table class="style2">
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" CssClass="img" runat="server" ImageUrl="~/img/Movie.png" Height="100px" Width="100px" PostBackUrl="~/Admin/Addmovie.aspx"></asp:ImageButton>
                    </td>
                    <td>
                       
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton2" CssClass="img" runat="server" ImageUrl="~/img/date.png" Height="100px" Width="100px" PostBackUrl="~/Admin/Adddate.aspx"></asp:ImageButton>
                    </td>
                    <td>

                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton3" CssClass="img" runat="server" ImageUrl="~/img/time.png" Height="100px" Width="100px" PostBackUrl="~/Admin/Addtime.aspx"></asp:ImageButton>
                    </td>
                    <td class="style1">

                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton4" CssClass="img" runat="server" ImageUrl="~/img/rate.png" Height="100px" Width="100px" PostBackUrl="~/Admin/Addrate.aspx"></asp:ImageButton>
                    </td>
                </tr>
                <tr>
                    <td>
                       <a href="Addmovie.aspx" class="lg" >Add Movie</a>
                    </td>
                    <td>

                    </td>
                     <td>
                       <a href="Adddate.aspx" class="lg" >   Add Date</a>
                    </td>
                    <td>

                    </td>
                     <td>
                        <a href="Addtime.aspx" class="lg" >   Add Time</a>
                    </td>
                    <td>

                    </td>
                     <td>
                        <a href="Addrate.aspx" class="lg" >   Add Rate</a>
                    </td>
                </tr>
                <tr class="style3">
                    &nbsp;
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton5" CssClass="img" runat="server" ImageUrl="~/img/movie-theatre.png" Height="100px" Width="100px" PostBackUrl="~/Admin/Addtheater.aspx"></asp:ImageButton>
                    </td>
                    <td class="style1">

                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton6" CssClass="img" runat="server" ImageUrl="~/img/screen.png" Height="100px" Width="100px" PostBackUrl="~/Admin/Addscreen.aspx"></asp:ImageButton>
                    </td>
                    <td class="style1">

                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton7" CssClass="img" runat="server" ImageUrl="~/img/category.png" Height="100px" Width="100px" PostBackUrl="~/Admin/Addcategory.aspx"></asp:ImageButton>
                    </td>
                    <td class="style1">

                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton8" CssClass="img" runat="server" ImageUrl="~/img/seat (2).png" Height="100px" Width="100px" PostBackUrl="~/Admin/Admin_addseat.aspx"></asp:ImageButton>
                    </td>
                </tr>
                 <tr>
                    <td>
                       <a href="Addtheater.aspx" class="lg" >Add Theater</a>
                    </td>
                    <td>

                    </td>
                     <td>
                       <a href="Addscreen.aspx" class="lg" >Add Screen</a>
                    </td>
                    <td>

                    </td>
                     <td>
                        <a href="Addcategory.aspx" class="lg" >Add Category</a>
                    </td>
                    <td>

                    </td>
                     <td>
                        <a href="Admin_addseat.aspx" class="lg" >Add Seat</a>
                    </td>
                </tr>
            </table>
        </center>
    
    </div>
   <%-- </form>--%>
</body>
</asp:Content>
