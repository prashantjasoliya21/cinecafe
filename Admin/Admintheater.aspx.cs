using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_Admintheater : System.Web.UI.Page
{
     BOL obj;
    private ImageButton Img1;

    public Admin_Admintheater()
    {
        obj = new BOL();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       

        string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con1 = new SqlConnection(CS))
        {
            SqlDataAdapter da1 = new SqlDataAdapter("Select * from Adminreg where Username ='" + Session["uname"] + "'", con1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            //return ds3;

            //DataSet ds1 = new DataSet();
            dtltheater.DataSource = ds1;
            dtltheater.DataBind();
        }

       
    }
    protected void theaterbind_Click(object sender, EventArgs e)
    {
        Session["thn"] = (sender as LinkButton).CommandArgument;

        DataSet ds = GetData();
        DataList2.DataSource = ds;
        DataList2.DataBind();
        
    }
    public bool MyVisible(string txt)
    {
        if (txt == "")
        { return false; }
        else { return true; }
    }
    private DataSet GetData()
    {
        string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from tbl_Screens where theater_id IN(select theater_id from tbl_theater where Theater_name='" + Session["thn"] + "')", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
    private void GetScreenLayout2(int screenId)
    {
        try
        {
            gvScreenLayout2.DataSource = obj.GetScreenLayout2(screenId);
            // gvScreenLayout1.DataSource = obj.GetScreenLayout1(time);
            gvScreenLayout2.DataBind();

        }
        catch (ArgumentException ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void profileinfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("Adminprofile.aspx");
    }
    protected void theater_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admintheater.aspx");
    }
    protected void gvScreenLayout2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    protected void gvScreenLayout2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvScreenLayout2.PageIndex = e.NewPageIndex;
        GetScreenLayout2(Convert.ToInt32(Session["screenid"]));
    }
    protected void gvScreenLayout2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void screenname_Click(object sender, EventArgs e)
    {
        Session["screenid"] = (sender as LinkButton).CommandArgument;
        //int sid;
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        //SqlCommand cmd2 = new SqlCommand("select ScreenId from tbl_Screens where theater_id IN(select theater_id from tbl_theater where Theater_name='" + Session["thn"] + "')", con);
        //SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        //DataTable dt = new DataTable();
        //DataSet ds6 = new DataSet();
        //con.Open();
        //da2.Fill(ds6);
        //sid = (int)cmd2.ExecuteScalar();
        //Session["Sid"] = sid;
        //// Response.Write(Session["Sid"]);
        //// Response.Redirect("Seatselection.aspx");
        //con.Close();
        if (Session["screenid"] != null)
        {
            gvScreenLayout2.Visible = true;
            GetScreenLayout2(Convert.ToInt32(Session["screenid"]));
            // GetScreenLayout1(Convert.ToChar(Session["seat"]));
        }
        else
        { gvScreenLayout2.Visible = false; }
    }
}