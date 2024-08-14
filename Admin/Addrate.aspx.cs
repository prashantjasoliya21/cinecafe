using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Addrate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMovie3();
            BindDate3();
            BindTime3();
            BindCate3();
            
        }
    }
    void BindMovie3()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd = new SqlCommand("select * from tbl_Movie ", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        ddlmovie1.DataSource = dt;
        ddlmovie1.DataBind();
        ddlmovie1.DataTextField = "Movie_name";
        ddlmovie1.DataValueField = "Movie_id";
        ddlmovie1.DataBind();
        ddlmovie1.Items.Insert(0, "Select");

    }
    void BindDate3()
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            SqlCommand cmd = new SqlCommand("Select * from tbl_Date", con);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            Adpt.Fill(dt1);
            ddldate1.DataSource = dt1;
            ddldate1.DataBind();
            ddldate1.DataTextField = "Date";
            ddldate1.DataValueField = "Date_id";
            ddldate1.DataBind();
            ddldate1.Items.Insert(0, "Select");
        }
        catch (ArgumentException e)
        {
            throw new ArgumentException(e.Message);
        }
    }
    void BindTime3()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd = new SqlCommand("select * from tbl_Time ", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        ddltime.DataSource = dt;
        ddltime.DataBind();
        ddltime.DataTextField = "Time";
        ddltime.DataValueField = "Time_id";
        ddltime.DataBind();
        ddltime.Items.Insert(0, "Select");

    }
    void BindCate3()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd = new SqlCommand("select * from tbl_category ", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        ddlcate2.DataSource = dt;
        ddlcate2.DataBind();
        ddlcate2.DataTextField = "cate_name";
        ddlcate2.DataValueField = "cate_id";
        ddlcate2.DataBind();
        ddlcate2.Items.Insert(0, "Select");

    }
    protected void btnrate_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into tbl_Rate (Movie_id,Date_id,Time_id,cate_id,Rate) values(@movie,@date,@time,@cate,@rate)", con);
            cmd1.Parameters.AddWithValue("@movie", SqlDbType.Int).Value = ddlmovie1.SelectedValue;
            cmd1.Parameters.AddWithValue("@date", SqlDbType.Int).Value = ddldate1.SelectedValue;
            cmd1.Parameters.AddWithValue("@time", SqlDbType.Int).Value = ddltime.SelectedValue;
            cmd1.Parameters.AddWithValue("@cate", SqlDbType.Int).Value = ddlcate2.SelectedValue;
            cmd1.Parameters.AddWithValue("@rate", SqlDbType.VarChar).Value = txtrate.Text.Trim().ToUpper();
            cmd1.ExecuteNonQuery();
            Response.Write("Rate Inserted Succesfully");
            con.Close();
            //disp();
            //Response.Redirect("Admin_addseat.aspx");


        }
        catch (Exception exe)
        {
            Response.Write(exe);
        }
    }
}