using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class GridView_As_A_MOVIE_ScreenLayout_AdminRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Adminreg values(@name,@no,@email,@thname,@uname,@pass)", con);
        cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = TextBox1.Text;
        cmd.Parameters.Add("@no", SqlDbType.NVarChar).Value = TextBox2.Text;
        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = TextBox3.Text;
        cmd.Parameters.Add("@thname", SqlDbType.NVarChar).Value = TextBox4.Text;
        cmd.Parameters.Add("@uname", SqlDbType.NVarChar).Value = TextBox5.Text;
        cmd.Parameters.Add("@pass", SqlDbType.NVarChar).Value = TextBox6.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("Record Inserted");
        
    }
}