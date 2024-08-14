using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Addscreen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            Bindtheater();
            

        }
    }
    void Bindtheater()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd = new SqlCommand("select * from tbl_theater ", con);
        SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        Adpt.Fill(dt);
        ddltheater.DataSource = dt;
        ddltheater.DataBind();
        ddltheater.DataTextField = "Theater_name";
        ddltheater.DataValueField = "theater_id";
        ddltheater.DataBind();
        ddltheater.Items.Insert(0, "Select");

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into tbl_Screens (theater_id,ScreenName) values(@theater,@screen)", con);
            cmd1.Parameters.AddWithValue("@theater", SqlDbType.Int).Value = ddltheater.SelectedValue;
            cmd1.Parameters.AddWithValue("@screen", SqlDbType.VarChar).Value = txtScreenName.Text.Trim().ToUpper();
            cmd1.ExecuteNonQuery();
            Response.Write("Screen Inserted Succesfully");
            con.Close();
            //disp();
            //BindScreen1();
           // Response.Redirect("Addcategory.aspx");

        }
        catch (Exception exe)
        {
            Response.Write(exe);
        }
    }
    protected void btnprev_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addtheater.aspx");
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addcategory.aspx");
    }
}