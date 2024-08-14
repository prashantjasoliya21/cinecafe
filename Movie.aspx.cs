using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Movie : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {



        DataSet ds = GetData0();
        dtlimageurl.DataSource = ds;
        dtlimageurl.DataBind();

        DataSet ds1 = GetData1();
        dtlimg.DataSource = ds1;
        dtlimg.DataBind();

        DataSet ds2 = GetData2();
        dtldate.DataSource = ds2;
        dtldate.DataBind();

        DataSet ds3 = GetData3();
        dtlmname.DataSource = ds3;
        dtlmname.DataBind();

        //DataSet ds4 = GetData4();
        //dtltime.DataSource = ds4;
        //dtltime.DataBind();

        
       //dtltheater.DataBind();

       // lbl_logged.Text = (string)Session["Mname"].ToString();
    }

    private DataSet GetData0()
    {
        string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from Home where M_name ='" + Session["Mname"] + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }

    private DataSet GetData1()
    {
        string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from Home where M_name ='" + Session["Mname"] + "'", con);
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
            return ds1;
        }
    }

    private DataSet GetData2()
    {

        string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlDataAdapter da = new SqlDataAdapter("select * FROM tbl_Date WHERE Movie_id IN(SELECT Movie_id FROM tbl_Movie where Movie_name ='" + Session["Mname"] + "')", con);
            DataSet ds2 = new DataSet();
            da.Fill(ds2);
            return ds2;
        }
    }

    private DataSet GetData3()
    {
        string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from Home where M_name ='" + Session["Mname"] + "'", con);
            DataSet ds3 = new DataSet();
            da.Fill(ds3);
            return ds3;
        }
    }

    private DataSet GetData4()
    {
        string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds4 = new DataSet();
            da.Fill(ds4);
            return ds4;
        }
    }

    //private DataSet GetData4()
    //{
    //    string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    //    using (SqlConnection con = new SqlConnection(CS))
    //    {
    //        SqlDataAdapter da = new SqlDataAdapter("SELECT [Theater_name] FROM [tbl_theater] WHERE [theater_id] IN(SELECT [theater_id] FROM [tbl_Screens] WHERE [ScreenId] IN(SELECT [ScreenId] FROM [tbl_Movie] WHERE [Movie_id] IN(SELECT [Movie_id] FROM [tbl_Date] WHERE [Date_id] = '" + Session["theater"] + " ')))", con);
    //        DataSet ds4 = new DataSet();
    //        da.Fill(ds4);
    //        return ds4;
    //    }
    //}

    protected void Date_Click(object sender, EventArgs e)
    {

        //Date.CssClass = "btndate";
        //Date_Click.Forecolor = System.Drawing.Color.Green;
        Session["theater"] = (sender as LinkButton).CommandArgument;
       // show.Text = Session["theater"].ToString();
        //string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(CS));
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT [Theater_name] FROM [tbl_theater] WHERE [theater_id] IN(SELECT [theater_id] FROM [tbl_Screens] WHERE [ScreenId] IN(SELECT [ScreenId] FROM [tbl_Movie] WHERE [Movie_id] IN(SELECT [Movie_id] FROM [tbl_Date] WHERE [Date] = '" + Session["theater"] + " ')))", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        DataSet ds4 = new DataSet();
        //con.Open();
        da.Fill(ds4);
        con.Close();
        dtltheater.DataSource = ds4;
        dtltheater.DataBind();

        dtltime.Visible = false;

        
       
    }
    //protected void time_Click(object sender, EventArgs e)
    //{
    //    //Date.CssClass = "btndate";
    //    //Date_Click.Forecolor = System.Drawing.Color.Green;
    //    Session["time"] = (sender as LinkButton).CommandArgument;
    //    //show.Text = Session["theater"].ToString();
    //    //string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    //    //using (SqlConnection con = new SqlConnection(CS));
    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select Time from tbl_Time where Date_id IN(select Date_id from tbl_Date where Movie_id IN(select Movie_id from tbl_Movie where ScreenId IN(select ScreenId from tbl_Screens where theater_id IN(select theater_id from tbl_theater where Theater_name = '" + Session["time"] + " '))))", con);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataTable dt = new DataTable();
    //    DataSet ds4 = new DataSet();
    //    //con.Open();
    //    da.Fill(ds4);
    //    con.Close();
    //    dtltheater.DataSource = ds4;
    //    dtltheater.DataBind();
    //}
    protected void theater_Click(object sender, EventArgs e)
    {
        //Date.CssClass = "btndate";
        //Date_Click.Forecolor = System.Drawing.Color.Green;
        Session["time"] = (sender as LinkButton).CommandArgument;
        //show.Text = Session["theater"].ToString();
        //string CS = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //using (SqlConnection con = new SqlConnection(CS));
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_Time where Date_id IN(select Date_id from tbl_Date where Date = '" + Session["theater"] + " ' AND Movie_id IN(select Movie_id from tbl_Movie where ScreenId IN(select ScreenId from tbl_Screens where theater_id IN(select theater_id from tbl_theater where Theater_name = '" + Session["time"] + " '))))", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        DataSet ds5 = new DataSet();
        //con.Open();
        da.Fill(ds5);
        con.Close();
        dtltime.DataSource = ds5;
        dtltime.Visible = true;
        dtltime.DataBind();
    }
    protected void time_Click(object sender, EventArgs e)
    {
        Session["seat"] = (sender as LinkButton).CommandArgument;
        int amt;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd2 = new SqlCommand("select ScreenId from tbl_Screens where ScreenId IN (select ScreenId from tbl_Movie where Movie_name='" + Session["Mname"] + "') AND theater_id IN(select theater_id from tbl_theater where Theater_name='" + Session["time"] + "')", con);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        DataSet ds6 = new DataSet();
        con.Open();
        da2.Fill(ds6);
        amt = (int)cmd2.ExecuteScalar();
        Session["Screenid"] = amt;
       // Response.Redirect("Seatselection.aspx");
        con.Close();


        try
        {
            SqlConnection con5 = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());

            SqlCommand cmd5 = new SqlCommand("select ScreenId from screenauto where ScreenId='" + Session["Screenid"] + "' AND theater='" + Session["time"] + "' AND movie='" + Session["Mname"] + "' AND date='" + Session["theater"] + "' AND time='" + Session["seat"] + "' ", con5);
            SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
            DataTable dt5 = new DataTable();
            DataSet ds8 = new DataSet();
            //cmd1.ExecuteNonQuery();
            con5.Open();
            da5.Fill(ds8);
            // Response.Write("Movie Inserted Succesfully");
            con5.Close();
            //Response.Redirect("Seatselection.aspx");
            if (ds8.Tables[0].Rows.Count == 0)
            {

                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
               // SqlCommand cmd1=new SqlCommand(INSERT INTO column_1 ( val_1, val_from_other_table )                                                                               
                SqlCommand cmd1 = new SqlCommand("Insert into screenauto(theater,movie,date,time,ColumnId,RowName,ScreenId,cate_name,[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[13],[14],[15],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],Active) select '" +Session["time"] + "','" +Session["Mname"]+ "','" +Session["theater"]+ "','" +Session["seat"]+ "',tbl_ScreenLayout.ColumnId,tbl_ScreenLayout.RowName,tbl_ScreenLayout.ScreenId,tbl_ScreenLayout.cate_name,tbl_ScreenLayout.[1],tbl_ScreenLayout.[2],tbl_ScreenLayout.[3],tbl_ScreenLayout.[4],tbl_ScreenLayout.[5],tbl_ScreenLayout.[6],tbl_ScreenLayout.[7],tbl_ScreenLayout.[8],tbl_ScreenLayout.[9],tbl_ScreenLayout.[10],tbl_ScreenLayout.[11],tbl_ScreenLayout.[12],tbl_ScreenLayout.[13],tbl_ScreenLayout.[14],tbl_ScreenLayout.[15],tbl_ScreenLayout.[16],tbl_ScreenLayout.[17],tbl_ScreenLayout.[18],tbl_ScreenLayout.[19],tbl_ScreenLayout.[20],tbl_ScreenLayout.[21],tbl_ScreenLayout.[22],tbl_ScreenLayout.[23],tbl_ScreenLayout.[24],tbl_ScreenLayout.[25],tbl_ScreenLayout.[26],tbl_ScreenLayout.[27],tbl_ScreenLayout.[28],tbl_ScreenLayout.[29],tbl_ScreenLayout.[30],tbl_ScreenLayout.Active from tbl_ScreenLayout where tbl_ScreenLayout.ScreenId='" + Session["Screenid"] + "'", con1);
      
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
               
                DataTable dt1 = new DataTable();
                DataSet ds5 = new DataSet();
               
                //cmd1.ExecuteNonQuery();
                con1.Open();
                da1.Fill(ds5);

                Response.Write("Movie Inserted Succesfully");
                con1.Close();
                Response.Redirect("Seatselection.aspx");


                //SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());

                //SqlCommand cmd3 = new SqlCommand("update screenauto set theater='" + Session["time"] + "', movie='" + Session["Mname"] + "',date='" + Session["theater"] + "',time='" + Session["seat"] + "' where ScreenId='" + Session["Screenid"] + "' ", con2);
                //SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                //DataTable dt2 = new DataTable();
                //DataSet ds7 = new DataSet();
                //cmd1.ExecuteNonQuery();
                //con2.Open();
                //da3.Fill(ds7);
                //Response.Write("Movie Inserted Succesfully");
                //con2.Close();
                //Response.Redirect("Seatselection.aspx");
                
              

            }
            else
            {
                Response.Redirect("Seatselection.aspx");
            }
        }
        catch (ArgumentException exe)
        {
            Response.Write(exe.Message);
        }

       
    }
}