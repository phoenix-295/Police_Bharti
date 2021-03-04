using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace Police_Bharti.CityWritten
{
    public partial class City_Written_Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                get_date();
                get_cand();
                fill_data();
                findr();
            }
        }

        protected void findr()
        {
            int pd = 0, rc = 0, ab = 0, dc = 0;
            int c = 0;
            string date1 = DropDownList1.Text;
            string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection con = new MySqlConnection(s1);
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM  pb_city_data ", con);
            DataSet ds1 = new DataSet();
            da.Fill(ds1, "t1");
            foreach (DataRow r1 in ds1.Tables["t1"].Rows)
            {
                c++;
                if ((r1["physical_date"].ToString() == date1))
                {
                    pd++;
                    if ((r1["eng_score"].ToString() == "0"))
                    {
                        rc++;
                    }

                    if ((r1["eng_score"].ToString() == ""))
                    {
                        ab++;
                    }

                    if ((r1["eng_score"].ToString() != "0") && (r1["eng_score"].ToString() != ""))
                    {
                        dc++;
                    }
                }
                lblremaning.Text = rc.ToString();
                lbltotal.Text = pd.ToString();
                lblinvited.Text = ab.ToString();
                Label2.Text = dc.ToString();
            }
            con.Close();
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

            string w_f = "";
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
                        txtmar.Text = r1["mar_score"].ToString();
                        txteng.Text = r1["eng_score"].ToString();
                        txtren.Text = r1["reso_score"].ToString();
                        txtgca.Text = r1["gk_score"].ToString();
                        txthg.Text = r1["histg_score"].ToString();
                        w_f = r1["w_flag"].ToString();
                        if ((r1["height"].ToString() == ""))
                        {
                            btnsub.Enabled = false;
                            btnabs.Enabled = false;
                        }
                        else
                        {
                            btnsub.Enabled = true;
                            btnabs.Enabled = true;
                        }
                    }
                }
                con.Close();

                if (w_f == "1")
                {
                    lblr1.ForeColor = Color.Green;
                    lblr1.Text = "Done";
                    btnabs.Enabled = false;
                }
                else
                {
                    lblr1.ForeColor = Color.Red;
                    lblr1.Text = "Fail";
                    //btnabs.Enabled = true;
                }
                if (w_f == "0" && txtmar.Text == "")
                {
                    lblr1.ForeColor = Color.Red;
                    lblr1.Text = "Absent";
                    btnabs.Enabled = false;
                }
                if (lblr1.Text == "Fail")
                {
                    btnabs.Enabled = false;
                }

                if(txtmar.Text != "0")
                {
                    btnsub.Enabled = false;
                    txtmar.Enabled = false;
                    txteng.Enabled = false;
                    txtren.Enabled = false;
                    txtgca.Enabled = false;
                    txthg.Enabled = false;
                }
                else if (txtmar.Text == "")
                {
                    btnsub.Enabled = false;
                    txtmar.Enabled = false;
                    txteng.Enabled = false;
                    txtren.Enabled = false;
                    txtgca.Enabled = false;
                    txthg.Enabled = false;
                    lblr1.Text = "Absent";
                    lblr1.ForeColor = Color.Red;
                }
                else
                {
                    txtmar.Text = "";
                    txteng.Text = "";
                    txtren.Text = "";
                    txtgca.Text = "";
                    txthg.Text = "";
                    
                    lblr1.Text = "";
                    btnsub.Enabled = true;
                    txtmar.Enabled = true;
                    txteng.Enabled = true;
                    txtren.Enabled = true;
                    txtgca.Enabled = true;
                    txthg.Enabled = true;
                }

                
                if (lblr1.Text == "")
                {
                    btnabs.Enabled = true;
                }
                else
                {
                    btnabs.Enabled = false;
                }

            }
            catch (Exception e)
            {
                Response.Write(e);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            get_cand();
            fill_data();
            lblres.Text = "";
            lblr1.Text = "";
            findr();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            fill_data();
            //c_hide();
            lblres.Text = "";

        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            string s2;
            s2 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(s2);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Update pb_city_data set mar_score =@a, eng_score=@b, reso_score=@c, gk_score=@d, histg_score=@e, w_flag=@f where application_Id='" + DropDownList2.Text + "'", conn);
            
            cmd.Parameters.AddWithValue("@a", txteng.Text);
            cmd.Parameters.AddWithValue("@b", txtmar.Text);
            cmd.Parameters.AddWithValue("@c", txtren.Text);
            cmd.Parameters.AddWithValue("@d", txtgca.Text);
            cmd.Parameters.AddWithValue("@e", txthg.Text);
            cmd.Parameters.AddWithValue("@f", "1");
            cmd.ExecuteNonQuery();
            
            conn.Close();

            txtmar.Text = "";
            txteng.Text = "";
            txtren.Text = "";
            txtgca.Text = "";
            txthg.Text = "";

            lblres.Text = "Submitted Successfully";
            fill_data();
            findr();
        }

        protected void btnabs_Click(object sender, EventArgs e)
        {
            string s2;
            s2 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(s2);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Update pb_city_data set mar_score =@a, eng_score=@b, reso_score=@c, gk_score=@d, histg_score=@e, w_flag=@f where application_Id='" + DropDownList2.Text + "'", conn);

            cmd.Parameters.AddWithValue("@a", null);
            cmd.Parameters.AddWithValue("@b", null);
            cmd.Parameters.AddWithValue("@c", null);
            cmd.Parameters.AddWithValue("@d", null);
            cmd.Parameters.AddWithValue("@e", null);
            cmd.Parameters.AddWithValue("@f", "0");
            cmd.ExecuteNonQuery();
            
                
            conn.Close();
            txtmar.Text = "";
            txteng.Text = "";
            txtren.Text = "";
            txtgca.Text = "";
            txthg.Text = "";
            lblres.ForeColor = Color.Red;
            lblres.Text = "Marked Absent";
            fill_data();
            findr();
        }
    }
}