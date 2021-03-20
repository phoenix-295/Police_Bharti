using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Globalization;

namespace Police_Bharti.CityWritten
{
    public partial class City_Written_test_Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgv();
                c_hide();
            }
        }

        protected void fillgv()
        {
            string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            string s2 = "SELECT * FROM pb_city_data where show_data=" + 1 + " and w_flag=" + 1;
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

        protected void c_hide()
        {
            string connstr = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connstr);
            conn.Open();
            string date = DateTime.UtcNow.ToString("dd-MM-yyyy");
            string currentDate = date.Replace("-", "/");

            MySqlCommand cmd = new MySqlCommand("select end_date from pb_city_event_plan where id=2", conn);
            MySqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                Label10.Text = reader.GetString("end_date");
            }
            reader.Close();

            CultureInfo provider = CultureInfo.InvariantCulture;
            DateTime cDate = DateTime.ParseExact(currentDate, new string[] { "dd.MM.yyyy", "dd-MM-yyyy", "dd/MM/yyyy" }, provider, DateTimeStyles.None);
            DateTime eDate = DateTime.ParseExact(Label10.Text, new string[] { "dd.MM.yyyy", "dd-MM-yyyy", "dd/MM/yyyy" }, provider, DateTimeStyles.None);

            if (cDate >= eDate)
            {
                btnshow.Enabled = true;
            }
            else
            {
                btnshow.Enabled = false;
                Label11.Text = "unable to send before end date";
                Label11.ForeColor = Color.Red;
            }
            conn.Close();
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connstr);
            conn.Open();

            MySqlCommand command = new MySqlCommand("update pb_city_data set cw_submit=@a ", conn);
            command.Parameters.AddWithValue("@a", "1");
            command.ExecuteNonQuery();
            Label11.Text = "Sent success";

            conn.Close();
        }
    }
}