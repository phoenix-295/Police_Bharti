using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace Police_Bharti.CityAdmin
{
    public partial class View_Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgv();
            }
        }

        protected void fillgv()
        {
            string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            string s2 = "SELECT * FROM pb_city_data where show_data=" + 1+" and show_invite=" + 0;
            MySqlConnection con = new MySqlConnection(s1);
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter(s2, s1);
            DataSet ds = new DataSet();
            da.Fill(ds, "a");
            gvcity.DataSource = ds.Tables["a"].DefaultView;
            ViewState["mydataset"] = ds;
            gvcity.DataBind();
            con.Close();
        }

        protected void btninv_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Invitation sent successfully')</script>");
            Response.Redirect("Invite_Candidates.aspx");
        }

        protected void gvcity_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            DataSet mydataset = (DataSet)ViewState["mydataset"];
            DataTable myydatatable = mydataset.Tables["a"];
            gvcity.DataSource = myydatatable;
            gvcity.PageIndex = e.NewPageIndex;
            gvcity.DataBind();
        }
    }

}