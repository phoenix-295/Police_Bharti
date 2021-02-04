using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Globalization;

namespace Police_Bharti.City_Physical
{
    public partial class City_Physical_Ground_Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                fillgvm();
                fillgvf();
                MultiView1.ActiveViewIndex = 0;
                c_hide();
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

        protected void c_hide()
        {
            string connstr = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connstr);
            conn.Open();
            string date = DateTime.UtcNow.ToString("dd-MM-yyyy");
            string currentDate = date.Replace("-", "/");

            MySqlCommand cmd = new MySqlCommand("select end_date from pb_city_event_plan where id=1", conn);
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

            MySqlCommand command = new MySqlCommand("update pb_city_data set cpg_submit=@a ", conn);
            command.Parameters.AddWithValue("@a", "1");
            command.ExecuteNonQuery();
            Label11.Text = "Sent success";

            conn.Close();
        }
    }
}