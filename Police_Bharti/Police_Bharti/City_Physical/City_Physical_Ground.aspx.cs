using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;

namespace Police_Bharti.City_Physical
{
    public partial class City_Physical_Ground : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                get_date();
                get_cand();
                fill_data();
                c_hide();
            }
        }

        protected void get_date()
        {
            try
            {
                string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
                string s2 = "SELECT distinct(physical_date) FROM pb_city_data";
                MySqlConnection conn = new MySqlConnection(s1);
                conn.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(s2, s1);
                DataSet ds = new DataSet();
                da1.Fill(ds, "a");
                DropDownList1.DataSource = ds.Tables["a"].DefaultView;
                DropDownList1.DataTextField = "physical_date";
                DropDownList1.DataValueField = "physical_date";
                DropDownList1.DataBind();
                ViewState["vsFoodCategory"] = ds;
                conn.Close();
            }
            catch (Exception e)
            {
                Response.Write(e);
            }
        }

        protected void get_cand()
        {
            try
            {
                string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
                string s2 = "SELECT application_Id,physical_date FROM pb_city_data where physical_date='" + DropDownList1.Text + "'";
                MySqlConnection conn = new MySqlConnection(s1);
                conn.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(s2, s1);
                DataSet ds = new DataSet();
                da1.Fill(ds, "a");
                DropDownList2.DataSource = ds.Tables["a"].DefaultView;
                DropDownList2.DataTextField = "application_Id";
                DropDownList2.DataValueField = "application_Id";
                DropDownList2.DataBind();
                ViewState["vsFoodCategory"] = ds;
                conn.Close();
            }
            catch (Exception e)
            {
                Response.Write(e);
            }
        }

        protected void fill_data()
        {
            try
            {
                string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
                MySqlConnection con = new MySqlConnection(s1);
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM  pb_city_data", con);
                DataSet ds1 = new DataSet();
                da.Fill(ds1, "t1");
                foreach (DataRow r1 in ds1.Tables["t1"].Rows)
                {
                    if ((r1["application_Id"].ToString() == DropDownList2.Text))
                    {
                        lblname.Text = r1["full_name"].ToString();
                        lbldob.Text = r1["date_of_birth"].ToString();
                        lblg.Text = r1["gender"].ToString();
                        lblcast.Text = r1["cast"].ToString();
                        lblcategory.Text = r1["category"].ToString();
                        
                    }
                }
                con.Close();

                if (lblg.Text == "M")
                {
                    if ((txt1600m.Text != "0") && (txt800m.Text != "0") && (txtlj.Text != "0"))
                    {
                        //btnsub.Enabled = false;
                    }
                    else
                    {
                        txt1600m.Text = "";
                        txt800m.Text = "";
                        txtlj.Text = "";
                        //btnsub.Enabled = true;
                    }
                }

                if (lblg.Text == "F")
                {
                    if ((txt1600m.Text != "0") && (txtlj.Text != "0"))
                    {
                       // btnsub.Enabled = false;
                    }
                    else
                    {
                        txt1600m.Text = "";
                        txtlj.Text = "";
                        //btnsub.Enabled = true;
                    }
                }
            }
            catch (Exception e)
            {
                Response.Write(e);
            }
        }

        protected void c_hide()
        {
            if (lblg.Text == "F")
            {
                // hide 1600 meter if female candidate
                txt1600m.Visible = false;
                Label2.Visible = false;
                rq16.Enabled = false;
                re16.Enabled = false;
                //show 800 meter race field for female
                Label1.Visible = true;
                txt800m.Visible = true;
                lbl8.Visible = true;
                rq800.Enabled = true;
                re800.Enabled = true;
                // hide pull ups field if female canidate
                lblpullups.Visible = false;
                txtpull.Visible = false;
                reqpu.Enabled = false;
            }
            else
            {
                // show 1600 meter race field for male candidate
                txt1600m.Visible = true;
                Label2.Visible = true;
                rq16.Enabled = true;
                re16.Enabled = true;
                // hide 800 meter field if male candidate
                Label1.Visible = false;
                txt800m.Visible = false;
                lbl8.Visible = false;
                rq800.Enabled = false;
                re800.Enabled = false;
                // show pull ups field for male candidate
                lblpullups.Visible = true;
                txtpull.Visible = true;
                reqpu.Enabled = true;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            get_cand();
            fill_data();
            lblres.Text = "";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            fill_data();
            c_hide();
            lblres.Text = "";
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            string res = "0";
            if (lblg.Text == "M")
            {
                
            }
            if (lblg.Text == "F")
            {
                
            }
            lblres.Text = res;
        }
    }
}