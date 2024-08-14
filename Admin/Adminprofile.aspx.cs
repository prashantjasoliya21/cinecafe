using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
       // txtusername.Text = Session["uname"].ToString();
        getprofile();
       
        
       
    }
    private DataSet GetData3()
    {
        string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from Adminreg where Username ='" + Session["uname"] + "'", con);
            DataSet ds3 = new DataSet();
            da.Fill(ds3);
            return ds3;
            
        }
    }
  
    protected void profileinfo_Click(object sender, EventArgs e)
    {
        dtlprofile.Visible = true;
       // profileinfo.CssClass = "buttonprofile";
        getprofile();
    }

    public void getprofile()
    {
        DataSet ds3 = GetData3();
        dtlprofile.DataSource = ds3;
        dtlprofile.DataBind();
    }

    protected void theater_Click(object sender, EventArgs e)
    {
      
    }
    protected void theaterbind_Click(object sender, EventArgs e)
    {

    }
    protected void theater_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Admintheater.aspx");
    }
}