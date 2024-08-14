using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;   

public partial class GridView_As_A_MOVIE_ScreenLayout_Adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);


        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "select * from Adminreg where UserName='" + txtun.Text + "' and Password='" + txtpw.Text + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        Session["uname"] = txtun.Text;
        if (dt.Rows.Count > 0)
        {

            Response.Redirect("Adminhome.aspx");
           

        }
        else
        {
            Response.Write("UserName or Password Incorrect");

        }     
       
    }
  }
