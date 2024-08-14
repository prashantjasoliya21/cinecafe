using System.Data;
using System.Collections;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System;


public partial class Seatselection : System.Web.UI.Page
{
     //int val;
    BOL obj;
    private ImageButton Img1;

    public Seatselection()
    {
        obj = new BOL();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Screenid"] != null && Session["seat"] != null && Session["time"] != null && Session["theater"] != null && Session["Mname"] != null)
        {
            gvScreenLayout1.Visible = true;
            GetScreenLayout1(Convert.ToInt32(Session["Screenid"]), Convert.ToString(Session["time"]),Convert.ToString(Session["Mname"]),Convert.ToString(Session["theater"]),Convert.ToString(Session["seat"]));
           // GetScreenLayout1(Convert.ToChar(Session["seat"]));
        }
        else
        { gvScreenLayout1.Visible = false; }

       

    }

   private void GetScreenLayout1(int screenId,string theater,string movie,string date,string time)
    {
        try
        {
            gvScreenLayout1.DataSource = obj.GetScreenLayout1(screenId,theater,movie,date,time);
           // gvScreenLayout1.DataSource = obj.GetScreenLayout1(time);
            gvScreenLayout1.DataBind();
            
        }
        catch (ArgumentException ex)
        {
            Response.Write(ex.Message);
        }
    }

    public bool MyVisible(string txt)
    {
        if (txt == "")
        { return false; }
        else { return true; }
    }
    protected void gvScreenLayout1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    protected void gvScreenLayout1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvScreenLayout1.PageIndex = e.NewPageIndex;
        GetScreenLayout1(Convert.ToInt32(Session["Screenid"]), Convert.ToString(Session["time"]),Convert.ToString(Session["Mname"]),Convert.ToString(Session["theater"]),Convert.ToString(Session["seat"]));
       
    }
    protected void gvScreenLayout1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_CheckedChanged(object sender, EventArgs e)
    {
        //Session["lbl"] = (sender as CheckBox).CommandArgument;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in gvScreenLayout1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("ImageButton1") as CheckBox);
                if (chkRow.Checked)
                {

                    //Find the label control
                    //Change the cellindex number if needed
                    Label lblNumber = (row.Cells[1].FindControl("ImageButton1") as Label);
                    Session["pgm_number"] = lblNumber.Text;

                    Response.Redirect("Default.aspx");

                }
            }
        }
    }

   
    public void Img1_Click(object sender, EventArgs e)
    {
      seatClick(Img1);
        //Session["seatt"] = (sender as ImageButton).CommandArgument;
    }
    public void seatClick(ImageButton btn)
    {
        try
        {
            //if (txtseatnumber.Text.IndexOf(btn.ID.ToString() + ",") > -1)
            //{
            //    txtseatnumber.Text = txtseatnumber.Text.Replace(btn.ID.ToString() + ",", "");
            //}
            //else
            //{
            //    txtseatnumber.Text = txtseatnumber.Text.Replace(btn.ID.ToString(), "");
            //}
            btn = null;
            
            if (btn != null)
            {
                //ibnext.Visible = true;
                if (btn.ImageUrl == "~/img/chair1.png")
                {
                    gvScreenLayout1.Visible = true;
                    btn.ImageUrl = "~/img/chair.png";
                  
                }
                else if (btn.ImageUrl == "~/img/chair.png")
                {
                    gvScreenLayout1.Visible = true;
                    btn.ImageUrl = "~/img/chair1.png";
                   
                }
            }
            else
            {
                Response.Write("error");
            }
        }
        catch (NullReferenceException e)
        {
            Response.Write(e.Message);
        }


    }
}

