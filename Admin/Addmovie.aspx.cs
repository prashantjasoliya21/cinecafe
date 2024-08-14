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

public partial class Addmovie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            BindScreen2();


        }
    }
    void BindScreen2()
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            SqlCommand cmd = new SqlCommand("Select * from tbl_Screens", con);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            Adpt.Fill(dt1);
            ddlsc.DataSource = dt1;
            ddlsc.DataBind();
            ddlsc.DataTextField = "ScreenName";
            ddlsc.DataValueField = "ScreenId";
            ddlsc.DataBind();
            ddlsc.Items.Insert(0, "Select");
        }
        catch (ArgumentException e)
        {
            throw new ArgumentException(e.Message);
        }
    }
    protected void btnmovie_Click(object sender, EventArgs e)
    {
        try
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string filePath = "~/Uploads/" + fileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(filePath));
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into tbl_Movie (ScreenId,Movie_name,Imageurl) values(@screen1,@movie,'"+filePath+"')", con);
            cmd1.Parameters.AddWithValue("@screen1", SqlDbType.Int).Value = ddlsc.SelectedValue;
            cmd1.Parameters.AddWithValue("@movie", SqlDbType.VarChar).Value = txtMovieName.Text.Trim().ToUpper();
            cmd1.ExecuteNonQuery();
            Response.Write("Movie Inserted Succesfully");
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