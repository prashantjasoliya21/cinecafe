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

public class Class1
{
	public Class1()
	{
		
	}
}

public class DAL
{
    public DAL()
    {
       
    }
    static SqlConnection con;
    static SqlCommand cmd;
    static DataSet ds;
    static SqlDataAdapter da;
    public static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    }
    public static int ExecuteNonQuery(string connectionString, CommandType commandType, string commandText, SqlParameter[] parameters)
    {

        con = new SqlConnection(connectionString);
        cmd = new SqlCommand(commandText, con);
        cmd.CommandType = commandType;
        foreach (SqlParameter p in parameters)
        {
            if (p.Value == null)
            {
            }
            cmd.Parameters.Add(p);
        }
        con.Open();
        return cmd.ExecuteNonQuery();
        con.Close();
    }
    public static DataSet ExecuteDataSet(string connectionString, CommandType commandType, string commandText, SqlParameter[] parameters)
    {
        try
        {
            con = new SqlConnection(connectionString);
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = commandText;
            cmd.CommandType = commandType;
            if (parameters == null)
            {
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            else
            {
                foreach (SqlParameter p in parameters)
                {
                    if ((p.Direction == ParameterDirection.InputOutput) && (p.Value == null))
                    {
                    }
                    //if (p.Value != null)
                    //{
                    cmd.Parameters.Add(p);
                    //}
                }
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
        catch (SqlException ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }



}

public class BOL
{
    public BOL()
    {

    }
   
    public DataSet GetScreenLayout(int screenId)
    {
        
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@ScreenId", screenId);
            return DAL.ExecuteDataSet(DAL.GetConnectionString(), CommandType.StoredProcedure, "sp_GetScreenLayout", p);
       
    }

    public DataSet GetScreenLayout2(int screenId)
    {

        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@ScreenId", screenId);
        return DAL.ExecuteDataSet(DAL.GetConnectionString(), CommandType.StoredProcedure, "sp_GetScreenLayout", p);

    }

    public DataSet GetScreenLayout1(int screenId,string theater,string movie,string date,string time)
    {

        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@ScreenId", screenId);
        p[1] = new SqlParameter("@theater", theater);
        p[2] = new SqlParameter("@movie", movie);
        p[3] = new SqlParameter("@date", date);
        p[4] = new SqlParameter("@time", time);
        return DAL.ExecuteDataSet(DAL.GetConnectionString(), CommandType.StoredProcedure, "sp_GetScreenLayout1", p);

    }

    public string AddScreenLayout(string rowName, int screenId,string cate_name, string one, string two, string three, string four, string five, string six, string seven, string eight, string nine, string ten, string eleven, string twelve, string thirteen, string fourteen, string fifteen, string sixteen, string seventeen, string eighteen, string nineteen, string twenty, string twentyone, string twentytwo, string twentythree, string twentyfour, string twentyfive, string twentysix, string twentyseven, string twentyeight, string twentynine, string thirty)
    {
        try
        {

            string str = "";
            SqlParameter[] p = new SqlParameter[34];
            p[0] = new SqlParameter("@RowName", rowName);
            p[1] = new SqlParameter("@ScreenId", screenId);
            p[3] = new SqlParameter("@cate_name", cate_name);
            p[4] = new SqlParameter("@1", one);
            p[5] = new SqlParameter("@2", two);
            p[6] = new SqlParameter("@3", three);
            p[7] = new SqlParameter("@4", four);
            p[8] = new SqlParameter("@5", five);
            p[9] = new SqlParameter("@6", six);
            p[10] = new SqlParameter("@7", seven);
            p[11] = new SqlParameter("@8", eight);
            p[12] = new SqlParameter("@9", nine);
            p[13] = new SqlParameter("@10", ten);
            p[14] = new SqlParameter("@11", eleven);
            p[15] = new SqlParameter("@12", twelve);
            p[16] = new SqlParameter("@13", thirteen);
            p[17] = new SqlParameter("@14", fourteen);
            p[18] = new SqlParameter("@15", fifteen);
            p[19] = new SqlParameter("@16", sixteen);
            p[20] = new SqlParameter("@17", seventeen);
            p[21] = new SqlParameter("@18", eighteen);
            p[22] = new SqlParameter("@19", nineteen);
            p[23] = new SqlParameter("@20", twenty);
            p[24] = new SqlParameter("@21", twentyone);
            p[25] = new SqlParameter("@22", twentytwo);
            p[26] = new SqlParameter("@23", twentythree);
            p[27] = new SqlParameter("@24", twentyfour);
            p[28] = new SqlParameter("@25", twentyfive);
            p[29] = new SqlParameter("@26", twentysix);
            p[30] = new SqlParameter("@27", twentyseven);
            p[31] = new SqlParameter("@28", twentyeight);
            p[32] = new SqlParameter("@29", twentynine);
            p[33] = new SqlParameter("@30", thirty);
            p[2] = new SqlParameter("@Message", SqlDbType.VarChar, 150);
            p[2].Direction = ParameterDirection.Output;
            DAL.ExecuteDataSet(DAL.GetConnectionString(), CommandType.StoredProcedure, "sp_AddScreenLayout", p);
            return Convert.ToString(p[2].Value);
            // return string str = value.ToString(p[2]);
        }
        catch (ArgumentException e)
        {
            throw new ArgumentException(e.Message);

        }

    }
}
