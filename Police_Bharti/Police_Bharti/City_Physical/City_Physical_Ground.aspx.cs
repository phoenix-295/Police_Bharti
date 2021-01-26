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

                        txt1600m.Text = r1["race1600"].ToString();
                        txt800m.Text = r1["race800"].ToString();
                        txt100m.Text = r1["race100"].ToString();
                        txtlj.Text = r1["longjump"].ToString();
                        txtsp.Text = r1["shotput"].ToString();
                        txtpull.Text = r1["pullups"].ToString();

                    }
                }
                con.Close();

                if (lblg.Text == "M")
                {
                    if ((txt1600m.Text != "0") && (txt100m.Text != "0") && (txtlj.Text != "0") && (txtsp.Text != "0") && (txtpull.Text != "0"))
                    {
                        btnsub.Enabled = false;
                    }
                    else
                    {
                        txt1600m.Text = "";
                        txt100m.Text = "";
                        txtlj.Text = "";
                        txtsp.Text = "";
                        txtpull.Text = "";

                        btnsub.Enabled = true;
                    }
                }

                if (lblg.Text == "F")
                {
                    if ((txt800m.Text != "0") && (txt100m.Text != "0") && (txtlj.Text != "0") && (txtsp.Text != "0"))
                    {
                       btnsub.Enabled = false;
                    }
                    else
                    {
                        txt800m.Text = "";
                        txt100m.Text = "";
                        txtlj.Text = "";
                        txtsp.Text = "";
                        btnsub.Enabled = true;
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
            int res = 0;
            if (lblg.Text == "M")
            {
                res = Convert.ToInt32(r16.Value) + Convert.ToInt32(r100.Value) + Convert.ToInt32(hlj.Value) + Convert.ToInt32(hsp.Value) + Convert.ToInt32(hpu.Value);
            }
            if (lblg.Text == "F")
            {
                res = Convert.ToInt32(r8.Value) + Convert.ToInt32(r100.Value) + Convert.ToInt32(hlj.Value) + Convert.ToInt32(hsp.Value);
            }
            lblres.Text = res.ToString();


            string s2;
            s2 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(s2);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Update pb_city_data set race1600 =@r16, race800=@r800, race100=@r100, longjump=@lj, shotput=@sp, pullups=@pu, g_flag=@flag, ground_total=@total where application_Id='" + DropDownList2.Text + "'", conn);
            if (lblg.Text == "M")
            {
                cmd.Parameters.AddWithValue("@r16", txt1600m.Text);
                cmd.Parameters.AddWithValue("@r800", "0");
                cmd.Parameters.AddWithValue("@r100", txt100m.Text);
                cmd.Parameters.AddWithValue("@lj", txtlj.Text);
                cmd.Parameters.AddWithValue("@sp", txtsp.Text);
                cmd.Parameters.AddWithValue("@pu", txtpull.Text);
                cmd.Parameters.AddWithValue("@total", res);
                cmd.Parameters.AddWithValue("@flag", "1");          // flag true
                cmd.ExecuteNonQuery();
            }
            if (lblg.Text == "F")
            {
                cmd.Parameters.AddWithValue("@r16", "0");
                cmd.Parameters.AddWithValue("@r800", txt800m.Text);
                cmd.Parameters.AddWithValue("@r100", txt100m.Text);
                cmd.Parameters.AddWithValue("@lj", txtlj.Text);
                cmd.Parameters.AddWithValue("@sp", txtsp.Text);
                cmd.Parameters.AddWithValue("@pu", "0");
                cmd.Parameters.AddWithValue("@flag", "1");          //flag true
                cmd.Parameters.AddWithValue("@total", res);
                cmd.ExecuteNonQuery();
            }
            conn.Close();

            txt1600m.Text = "";
            txt800m.Text = "";
            txt100m.Text = "";
            txtlj.Text = "";
            txtsp.Text = "";
            txtpull.Text = "";
            lblres.Text = "Submitted Successfully";
            fill_data();
        }
    }
}