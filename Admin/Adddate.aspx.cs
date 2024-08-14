using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Adddate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            BindMovie();


        }
    }
    void BindMovie()
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            SqlCommand cmd = new SqlCommand("Select * from tbl_Movie", con);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            Adpt.Fill(dt1);
            ddlmv.DataSource = dt1;
            ddlmv.DataBind();
            ddlmv.DataTextField = "Movie_name";
            ddlmv.DataValueField = "Movie_id";
            ddlmv.DataBind();
            ddlmv.Items.Insert(0, "Select");
        }
        catch (ArgumentException e)
        {
            throw new ArgumentException(e.Message);
        }
    }
    protected void btndate_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into tbl_Date (Movie_Id,Date) values(@movie,@date)", con);
            cmd1.Parameters.AddWithValue("@movie", SqlDbType.Int).Value = ddlmv.SelectedValue;
            cmd1.Parameters.AddWithValue("@date",txtdate.Text);
            cmd1.ExecuteNonQuery();
            Response.Write("Date Inserted Succesfully");
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