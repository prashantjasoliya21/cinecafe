<%@ Page Title="" Language="C#" MasterPageFile="~/Clientmaster.master" AutoEventWireup="true" CodeFile="Movie.aspx.cs" Inherits="Movie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
        <head>
            <link href="cssmovie.css" rel="stylesheet" />
        </head>
        <body>

  <%-------------------------------------------------Blur poster ------------------------------------------------------------------------%>      
    <form id="form1" runat="server">
        
        <div class="dblur">
            <asp:DataList ID="dtlimageurl" CssClass="dif" runat="server" Height="10%"  >
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Poster") %>' Height="80%" Width="50%" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        </div>

  <%-------------------------------------------------Side poster ------------------------------------------------------------------------%>   
        <div class="container">
        <asp:DataList ID="dtlimg" CssClass="" runat="server" >
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <div class="container">
                            <asp:Image ID="Image1" CssClass="dp" runat="server" ImageUrl='<%# Eval("Poster") %>' Height="50%" Width="70%" />
                            </div>                       
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
             <br />
             <br />
            </div>

  <%------------------------------------------------- Movie Name  ------------------------------------------------------------------------%>          
      
               <div class="container1">
        <asp:DataList ID="dtlmname" CssClass="" runat="server" >
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <div class="container">
                                <center>
                            <asp:Label ID="Image1" CssClass="dp1" runat="server" Text='<%# Eval("M_name") %>'/>
                            </center>
                                    </div>                       
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
             <br />
             <br />
            </div>
        <br />
        <br /><br /><br /><br />

        <asp:Label ID="show" Text="" runat="server" />

  <%------------------------------------------------- Movie Date  ------------------------------------------------------------------------%>   
    
         <div class="container">
               <center>
                  <asp:DataList ID="dtldate" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                   <table>
                       <tr>
                           <td>
                               <div >
                                 
                    <asp:LinkButton ID="Date" CssClass="btnli" CommandArgument='<%#Convert.ToDateTime(Eval("Date")).ToString("yyyy-MM-dd")%>' OnClick="Date_Click" runat="server" BackColor="Black" Text='<%#Convert.ToDateTime(Eval("Date")).ToString("dd MMM")%>' />
                 <br />    
                                       </div>
                           </td>
                       </tr>
                   </table>
                </ItemTemplate>
            </asp:DataList>
            </center>  
         </div>
        
 <%------------------------------------------------- Theater  ------------------------------------------------------------------------%>   
         
        <div class="container3" >
            <center>
                  <asp:DataList ID="dtltheater" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                    <asp:LinkButton ID="theater" OnClick="theater_Click" CssClass="btnli2" CommandArgument='<%#Eval("Theater_name") %>' runat="server" BackColor="Black" Text='<%#Eval("Theater_name") %>' />
                    </td>
                                </tr>
                            </table>
                </ItemTemplate>
            </asp:DataList>
            </center>
         </div>
        <center>
            <asp:label ID="view" text="" runat="server" />
        </center>
  <%------------------------------------------------- Time  ------------------------------------------------------------------------%>         
          <div class="container4" >
              <center>
                  <asp:DataList ID="dtltime" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table border="0">
                        <tr>
                            <td>
                    <asp:LinkButton ID="time" CssClass="btnli2" OnClick="time_Click" CommandArgument='<%#Eval("Time") %>' CommandName runat="server" BackColor="Black" Text='<%#Eval("Time") %>' />
                    </td>
                                </tr>
                            </table>
                </ItemTemplate>
            </asp:DataList>
</center>
         </div>

        <div class="container4" >
              <center>
                  <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table border="0">
                        <tr>
                            <td>
                    <asp:LinkButton ID="time1" CssClass="btnli2" runat="server" BackColor="Black" Text='<%#Eval("ScreenId") %>' />
                    </td>
                                </tr>
                            </table>
                </ItemTemplate>
            </asp:DataList>
</center>
         </div>

    </form>



            <br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br />


</body>
    </html>
   
</asp:Content>

