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

public partial class Addimage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addmovie_Click(object sender, EventArgs e)
    {
        try
        {
            string fileName = Path.GetFileName(FileUpload2.PostedFile.FileName);
            string filePath = "~/Uploads/" + fileName;
            FileUpload2.PostedFile.SaveAs(Server.MapPath(filePath));
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into Home (M_name,Poster) values(@mname,'" + filePath + "')", con);
            cmd1.Parameters.AddWithValue("@mname", SqlDbType.NVarChar).Value = moviename.Text.Trim().ToUpper();
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