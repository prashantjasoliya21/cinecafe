using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System;


public partial class clientseat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
                if (!IsPostBack)
        {
        BindScreens();
       // Bindcategory();
        }

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
                SqlCommand cmd = new SqlCommand("select * from tbl_ScreenLayout ", con);
                SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
                DataTable dt1 = new DataTable();
                Adpt.Fill(dt1);
                chkbSeats.DataTextField = "";


    }
    void BindScreens()
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            SqlCommand cmd = new SqlCommand("select * from tbl_Screens ", con);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            Adpt.Fill(dt1);
            ddlseat.DataSource = dt1;
            ddlseat.DataBind();
            ddlseat.DataTextField = "ScreenName";
            ddlseat.DataValueField = "ScreenId";
            ddlseat.DataBind();
            ddlseat.Items.Insert(0, "Select");
        }
        catch (ArgumentException e)
        {
            throw new ArgumentException(e.Message);
        }
    }
}