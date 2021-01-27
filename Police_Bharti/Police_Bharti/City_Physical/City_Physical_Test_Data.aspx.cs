using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;

namespace Police_Bharti.City_Physical
{
    public partial class City_Physical_Test_Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgvm();
                fillgvf();
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void fillgvm()
        {
            string g = "M";
            string connStr = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            string s2 = "SELECT * FROM pb_city_data where gender='" + g + "' and p_flag = 1";
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlDataAdapter da1 = new MySqlDataAdapter(s2, connStr);
            DataSet ds = new DataSet();
            da1.Fill(ds, "pb_datam");
            gvcity.DataSource = ds.Tables["pb_datam"].DefaultView;
            gvcity.DataBind();
            ViewState["vsPBm"] = ds;
            conn.Close();
        }

        protected void fillgvf()
        {
            string g = "F";
            string connStr = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            string s2 = "SELECT * FROM pb_city_data where gender='" + g + "' and p_flag = 1";
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlDataAdapter da1 = new MySqlDataAdapter(s2, connStr);
            DataSet ds = new DataSet();
            da1.Fill(ds, "pb_dataf");
            gvcity0.DataSource = ds.Tables["pb_dataf"].DefaultView;
            gvcity0.DataBind();
            ViewState["vsPBf"] = ds;
            conn.Close();
        }

        protected void btnf_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnmale_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void gvcity_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            DataSet mydataset = (DataSet)ViewState["vsPBm"];
            DataTable myydatatable = mydataset.Tables["pb_datam"];
            gvcity.DataSource = myydatatable;
            gvcity.PageIndex = e.NewPageIndex;
            gvcity.DataBind();
        }

        protected void gvcity0_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            DataSet mydataset = (DataSet)ViewState["vsPBf"];
            DataTable myydatatable = mydataset.Tables["pb_dataf"];
            gvcity0.DataSource = myydatatable;
            gvcity0.PageIndex = e.NewPageIndex;
            gvcity0.DataBind();
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {

        }
    }
}