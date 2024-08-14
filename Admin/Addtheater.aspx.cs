using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Addtheater : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmitth_Click(object sender, EventArgs e)
    {

        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into tbl_theater (Theater_Name) values(@theater)", con);

            cmd1.Parameters.AddWithValue("@theater", SqlDbType.VarChar).Value = txttheater.Text;
            cmd1.ExecuteNonQuery();
            Response.Write("Theater Inserted Succesfully");
            con.Close();
            //Bindtheater();
           

        }
        catch (Exception exe)
        {
            Response.Write(exe);
        }
       
           
        
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addscreen.aspx");
    }
}