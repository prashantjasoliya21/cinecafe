using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblshow.Text=Session["seatt"].ToString();
    }
    //protected void Unnamed_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Home.aspx");
    //}

   
    protected void seatClick(ImageButton btn)
    {
       
        if (btn.ImageUrl == "~/img/chair1.png")
        {
          
            btn.ImageUrl = "~/img/chair.png";
          
        }
        else if (btn.ImageUrl == "~/img/chair.png")
        {
          
            btn.ImageUrl = "~/img/chair1.png";
          
        }


    }
    protected void img12_Click(object sender, ImageClickEventArgs e)
    {
        seatClick(img12);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        seatClick(ImageButton1);
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        seatClick(ImageButton2);
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        seatClick(ImageButton3);
    }
}