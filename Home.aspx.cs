using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
     
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            redirect();
        }  

        DataSet ds = GetData();
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    void redirect()
    {
        
    }
    private DataSet GetData()
    {
        string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from Home", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
    protected void btnlink_Click(object sender, EventArgs e)
    {
       
        Session["Mname"] = (sender as LinkButton).CommandArgument;
        Session["Screenid"]= ("select Screenid from tbl_Movie where Movie_name = '" + Session["Mname"] + "'");
        Response.Redirect("Movie.aspx");
    }
}