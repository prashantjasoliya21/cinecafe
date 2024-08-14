using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Addcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bindtheater1();
            //BindScreen1();
        }
    }
    void Bindtheater1()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd = new SqlCommand("select * from tbl_theater ", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        ddlth.DataSource = dt;
        ddlth.DataBind();
        ddlth.DataTextField = "Theater_name";
        ddlth.DataValueField = "theater_id";
        ddlth.DataBind();
        ddlth.Items.Insert(0, "Select");

    }
    //void BindScreen1()
    //{
    //    try
    //    {
    //        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    //        SqlCommand cmd = new SqlCommand("Select * from tbl_Screens", con);
    //        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
    //        DataTable dt1 = new DataTable();
    //        Adpt.Fill(dt1);
    //        ddlsn.DataSource = dt1;
    //        ddlsn.DataBind();
    //        ddlsn.DataTextField = "ScreenName";
    //        ddlsn.DataValueField = "ScreenId";
    //        ddlsn.DataBind();
    //        ddlsn.Items.Insert(0, "Select");
    //    }
    //    catch (ArgumentException e)
    //    {
    //        throw new ArgumentException(e.Message);
    //    }
    //}
    protected void btnsb_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into tbl_category (theater_id,ScreenId,cate_name) values(@theater1,@screen1,@cate)", con);
            cmd1.Parameters.AddWithValue("@theater1", SqlDbType.Int).Value = ddlth.SelectedValue;
            cmd1.Parameters.AddWithValue("@screen1", SqlDbType.Int).Value = ddlsn.SelectedValue;
            cmd1.Parameters.AddWithValue("@cate", SqlDbType.VarChar).Value = txtcat.Text.Trim().ToUpper();
            cmd1.ExecuteNonQuery();
            Response.Write("Category Inserted Succesfully");
            con.Close();
            //disp();
            Response.Redirect("Admin_addseat.aspx");


        }
        catch (Exception exe)
        {
            Response.Write(exe);
        }
    }
    protected void ddlth_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            //ddlsn.Items.Clear();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            SqlCommand cmd = new SqlCommand("select * from tbl_Screens where theater_id=" + ddlth.SelectedItem.Value, con);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            Adpt.Fill(dt1);
            ddlsn.DataSource = dt1;
            ddlsn.DataBind();
            ddlsn.DataTextField = "ScreenName";
            ddlsn.DataValueField = "ScreenId";
            ddlsn.DataBind();
            ddlsn.Items.Insert(0, "Select");
        }
        catch (ArithmeticException exee)
        {
            throw new ArithmeticException(exee.Message);
        }
    }
    protected void btnprev_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addscreen.aspx");
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_addseat.aspx");
    }
}