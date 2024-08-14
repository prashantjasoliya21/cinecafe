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

public partial class seat : System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter("Select * from screenauto", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
    protected void Img1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
           
            if (Img1 != null)
            {
                //ibnext.Visible = true;
                if (Img
.ImageUrl == "~/img/chair1.png")
                {
                    gvScreenLayout1.Visible = true;
                    btn.ImageUrl = "~/img/chair.png";
                    //if (txtseatnumber.Text.IndexOf(btn.ID.ToString() + ",") > -1)
                    //{
                    //    txtseatnumber.Text = txtseatnumber.Text.Replace(btn.ID.ToString() + ",", "");
                    //}
                    //else
                    //{
                    //    txtseatnumber.Text = txtseatnumber.Text.Replace(btn.ID.ToString(), "");
                    //}
                }
                else if (btn.ImageUrl == "~/img/chair.png")
                {
                    gvScreenLayout1.Visible = true;
                    btn.ImageUrl = "~/img/chair1.png";
                    //if (txtseatnumber.Text.Trim().Length == 0)
                    //{
                    //    txtseatnumber.Text = btn.ID.ToString();
                    //}
                    //else if (txtseatnumber.Text.Trim().EndsWith(","))
                    //{
                    //    txtseatnumber.Text = txtseatnumber.Text + btn.ID.ToString();
                    //}
                    //else
                    //{
                    //    txtseatnumber.Text = txtseatnumber.Text + "," + btn.ID.ToString();
                    //}
                }
            }
            else
            {
                Response.Write("error");
            }
        }
        catch (NullReferenceException ex)
        {
            Response.Write(ex.Message);
        }
    }

    public object Img1 { get; set; }
}