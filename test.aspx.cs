using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        DataSet ds2 = GetData2();
        dtldate.DataSource = ds2;
        dtldate.DataBind();

        lbl_logged.Text = (string)Session["Mname"].ToString();
    //    lbl_logged.Text = (string)Session["Date"].ToString();
    //    DataTable dt = new DataTable();
    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    //    try
    //    {
    //        SqlDataAdapter adp = new SqlDataAdapter("SELECT [Theater_name] FROM [tbl_theater] WHERE [theater_id] IN(SELECT [theater_id] FROM [tbl_Screens] WHERE [ScreenId] IN(SELECT [ScreenId] FROM [tbl_Movie] WHERE [Movie_id] IN(SELECT [Movie_id] FROM [tbl_Date] WHERE [Date_id] = '"+ Session["Date"] +"')))", con);
    //        adp.Fill(dt);
    //        dlEmployee.DataSource = dt;
    //        dlEmployee.DataBind();
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write("Error occured: " + ex.Message.ToString());
    //    }
    //    finally
    //    {
    //        dt.Clear();
    //        dt.Dispose();
    //        con.Close();
    //    }
    }
    private DataSet GetData2()
    {

        string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlDataAdapter da = new SqlDataAdapter("select Date FROM tbl_Date WHERE Movie_id IN(SELECT Movie_id FROM tbl_Movie where Movie_name ='" + Session["Mname"] + "')", con);
            DataSet ds2 = new DataSet();
            da.Fill(ds2);
            return ds2;
        }
    }
        
        

}