using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;

namespace Police_Bharti.Admin
{
    public partial class View_Gramin_Records : System.Web.UI.Page
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
            string connStr = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            string s2 = "SELECT * FROM pb_gramin_data";
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlDataAdapter da1 = new MySqlDataAdapter(s2, connStr);
            DataSet ds = new DataSet();
            da1.Fill(ds, "pb_data");
            gvcity.DataSource = ds.Tables["pb_data"].DefaultView;
            gvcity.DataBind();
            ViewState["vsPB"] = ds;
            conn.Close();
        }

        protected void gvcity_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            DataSet mydataset = (DataSet)ViewState["vsPB"];
            DataTable myydatatable = mydataset.Tables["pb_data"];
            gvcity.DataSource = myydatatable;
            gvcity.PageIndex = e.NewPageIndex;
            gvcity.DataBind();
        }
    }
}