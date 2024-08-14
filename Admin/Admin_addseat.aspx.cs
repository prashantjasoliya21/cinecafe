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

public partial class Admin_addseat : System.Web.UI.Page
{
    int val;
    BOL obj;

    public Admin_addseat()
    {
        obj = new BOL();
    }

   protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
        BindScreens();
       // Bindcategory();
        }
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
            ddlScreens.DataSource = dt1;
            ddlScreens.DataBind();
            ddlScreens.DataTextField = "ScreenName";
            ddlScreens.DataValueField = "ScreenId";
            ddlScreens.DataBind();
            ddlScreens.Items.Insert(0, "Select");
        }
        catch (ArgumentException e)
        {
            throw new ArgumentException(e.Message);
        }
    }

    protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkSelectAll.Checked)
        {
            foreach (ListItem lt in chkbSeats.Items)
            {
                lt.Selected = true;
                val = 1;
                lt.Text = Convert.ToString(val);
            }
        }
        else
        {
            foreach (ListItem lt in chkbSeats.Items)
            {
                lt.Selected = false;
                lt.Text = "";
            }
            chkSelectAll.Checked = false;
        }
    }

    protected void chkbSeats_SelectedIndexChanged(object sender, EventArgs e)
    {
        foreach (ListItem lt in chkbSeats.Items)
        {
            if (lt.Selected)
            {
                val = 1;
                lt.Text = Convert.ToString(val);
            }
            else { lt.Text = ""; }
        }
    }

    protected void btnSubmitScreenLayout_Click(object sender, EventArgs e)
    {
        try
        {
            string one = chkbSeats.Items.FindByValue("1").Text.ToString();
            string two = chkbSeats.Items.FindByValue("2").Text.ToString();
            string three = chkbSeats.Items.FindByValue("3").Text.ToString();
            string four = chkbSeats.Items.FindByValue("4").Text.ToString();
            string five = chkbSeats.Items.FindByValue("5").Text.ToString();
            string six = chkbSeats.Items.FindByValue("6").Text.ToString();
            string seven = chkbSeats.Items.FindByValue("7").Text.ToString();
            string eight = chkbSeats.Items.FindByValue("8").Text.ToString();
            string nine = chkbSeats.Items.FindByValue("9").Text.ToString();
            string ten = chkbSeats.Items.FindByValue("10").Text.ToString();
            string eleven = chkbSeats.Items.FindByValue("11").Text.ToString();
            string twelve = chkbSeats.Items.FindByValue("12").Text.ToString();
            string thirteen = chkbSeats.Items.FindByValue("13").Text.ToString();
            string fourteen = chkbSeats.Items.FindByValue("14").Text.ToString();
            string fifteen = chkbSeats.Items.FindByValue("15").Text.ToString();
            string sixteen = chkbSeats.Items.FindByValue("16").Text.ToString();
            string seventeen = chkbSeats.Items.FindByValue("17").Text.ToString();
            string eighteen = chkbSeats.Items.FindByValue("18").Text.ToString();
            string nineteen = chkbSeats.Items.FindByValue("19").Text.ToString();
            string twenty = chkbSeats.Items.FindByValue("20").Text.ToString();
            string twentyone = chkbSeats.Items.FindByValue("21").Text.ToString();
            string twentytwo = chkbSeats.Items.FindByValue("22").Text.ToString();
            string twentythree = chkbSeats.Items.FindByValue("23").Text.ToString();
            string twentyfour = chkbSeats.Items.FindByValue("24").Text.ToString();
            string twentyfive = chkbSeats.Items.FindByValue("25").Text.ToString();
            string twentysix = chkbSeats.Items.FindByValue("26").Text.ToString();
            string twentyseven = chkbSeats.Items.FindByValue("27").Text.ToString();
            string twentyeight = chkbSeats.Items.FindByValue("28").Text.ToString();
            string twentynine = chkbSeats.Items.FindByValue("29").Text.ToString();
            string thirty = chkbSeats.Items.FindByValue("30").Text.ToString();
            lblMsg.Text = obj.AddScreenLayout(Convert.ToString(txtRowName.Text), Convert.ToInt32(ddlScreens.SelectedValue),Convert.ToString(ddlcategory.SelectedValue), one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen, twenty, twentyone, twentytwo, twentythree, twentyfour, twentyfive, twentysix, twentyseven, twentyeight, twentynine, thirty);
            if (lblMsg.Text == "Added Successfully.")
            {
                GetScreenLayout(Convert.ToInt32(ddlScreens.SelectedValue));
            }
        }
        catch (Exception)
        { throw; }
    }

    void GetScreenLayout(int screenId)
    {
        try
        {
            gvScreenLayout.DataSource = obj.GetScreenLayout(screenId);
            gvScreenLayout.DataBind();
        }
        catch (ArgumentException ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void ddlScreens_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (ddlScreens.SelectedIndex != 0)
        {
            gvScreenLayout.Visible = true;
            GetScreenLayout(Convert.ToInt32(ddlScreens.SelectedValue));
        }
        else
        { gvScreenLayout.Visible = false; }

        try
        {
            //ddlsn.Items.Clear();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            SqlCommand cmd = new SqlCommand("select * from tbl_category where ScreenId=" + ddlScreens.SelectedItem.Value, con);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt1 = new DataTable();
            Adpt.Fill(dt1);
            ddlcategory.DataSource = dt1;
            ddlcategory.DataBind();
            ddlcategory.DataTextField = "cate_name";
            ddlcategory.DataValueField = "cate_name";
            ddlcategory.DataBind();
            ddlcategory.Items.Insert(0, "Select");
        }
        catch (ArithmeticException exee)
        {
            throw new ArithmeticException(exee.Message);
        }
    }

    public bool MyVisible(string txt)
    {
        if (txt == "")
        { return false; }
        else { return true; }
    }

    protected void ddlRowType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlRowType.Text == "Empty Line")
        {
            txtRowName.ReadOnly = true; txtRowName.Text = "Line";
            chkbSeats.Visible = false;
            chkSelectAll.Visible = false;
            ddlcategory.Visible = false;
            lblSeatsPostion.Visible = false; 
            Label6.Visible = false;
            foreach (ListItem lt in chkbSeats.Items)
            {
                lt.Selected = false;
                lt.Text = "";
            } 

        }
        else if (ddlRowType.Text == "Row")
        {
            txtRowName.ReadOnly = false; txtRowName.Text = "";
            ddlcategory.Visible = true;
            chkbSeats.Visible = true; chkSelectAll.Checked = false;
            chkSelectAll.Visible = true; Label6.Visible = true;
            lblSeatsPostion.Visible = true; 
        }
    }

    protected void gvScreenLayout_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       gvScreenLayout.PageIndex = e.NewPageIndex;
        GetScreenLayout(Convert.ToInt32(ddlScreens.SelectedValue));
      
    }
      
    protected void btnshow_Click1(object sender, EventArgs e)
    {
        GetScreenLayout(Convert.ToInt32(ddlScreens.SelectedValue));
    }
    protected void btnprev_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addcategory.aspx");
    }

    protected void gvScreenLayout_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewRow row = gvScreenLayout.Rows[e.NewSelectedIndex];
        if (row.Cells[1].Text == "ANATR")
        {
            e.Cancel = true;
           lblMsg.Text = "You cannot select " + row.Cells[2].Text + ".";
        }
    }
    protected void gvScreenLayout_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}
