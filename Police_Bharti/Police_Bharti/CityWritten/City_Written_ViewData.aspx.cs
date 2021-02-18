using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;

namespace Police_Bharti.CityWritten
{
    public partial class City_Written_ViewData : System.Web.UI.Page
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
            string s2 = "SELECT * FROM pb_city_data where show_data=" + 1 + " and physical_flag=" + 1;
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