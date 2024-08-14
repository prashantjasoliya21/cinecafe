using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Addtime : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMovie2();
            BindDate2();
        }
    }
    void BindMovie2()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd = new SqlCommand("select * from tbl_Movie ", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        ddlmovie.DataSource = dt;
        ddlmovie.DataBind();
        ddlmovie.DataTextField = "Movie_name";
        ddlmovie.DataValueField = "Movie_id";
        ddlmovie.DataBind();
        ddlmovie.Items.Insert(0, "Select");

    }
    void BindDate2()
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            SqlCommand cmd = new SqlCommand("Select * from tbl_Date", con);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            Adpt.Fill(dt1);
            ddldate.DataSource = dt1;
            ddldate.DataBind();
            ddldate.DataTextField = "Date";
            ddldate.DataValueField = "Date_id";
            ddldate.DataBind();
            ddldate.Items.Insert(0, "Select");
        }
        catch (ArgumentException e)
        {
            throw new ArgumentException(e.Message);
        }
    }
    protected void btntime_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into tbl_Time (Movie_id,Date_id,Time) values(@movie,@date,@time)", con);
            cmd1.Parameters.AddWithValue("@movie", SqlDbType.Int).Value = ddlmovie.SelectedValue;
            cmd1.Parameters.AddWithValue("@date", SqlDbType.Int).Value = ddldate.SelectedValue;
            cmd1.Parameters.AddWithValue("@time", SqlDbType.VarChar).Value = txttime.Text.Trim().ToUpper();
            cmd1.ExecuteNonQuery();
            Response.Write("Time Inserted Succesfully");
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