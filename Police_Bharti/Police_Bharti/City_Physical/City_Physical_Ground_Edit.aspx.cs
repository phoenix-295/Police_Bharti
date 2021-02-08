using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;

namespace Police_Bharti.City_Physical
{
    public partial class City_Physical_Ground_Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                get_date();
                get_cand();
                t1();
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
                string s2 = "SELECT application_Id,physical_date FROM pb_city_data where physical_date='" + DropDownList1.Text + "' and p_flag = 1 and race100 != 0";
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

        protected void t1()
        {
            int remain = 0, tot = 0;
            int ab = 0, dc = 0;
            try
            {
                string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
                MySqlConnection con = new MySqlConnection(s1);
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM pb_city_data where physical_date='" + DropDownList1.Text + "' and p_flag = 1", con);
                DataSet ds1 = new DataSet();
                da.Fill(ds1, "t1");
                foreach (DataRow r1 in ds1.Tables["t1"].Rows)
                {
                    tot++;
                    if ((r1["g_flag"].ToString() != "1"))
                    {
                        remain++;
                    }
                    if ((r1["race1600"].ToString() == ""))
                    {
                        ab++;
                    }
                }
                dc = tot - remain;
                lbltotal.Text = tot.ToString();
                lbldone.Text = dc.ToString();
                lblremaning.Text = remain.ToString();
                lblabs.Text = ab.ToString();
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
                if (DropDownList2.Text != "")
                {
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
                            lbl16.Text = r1["r16m"].ToString();

                            txt800m.Text = r1["race800"].ToString();
                            lbl8.Text = r1["r8m"].ToString();

                            txt100m.Text = r1["race100"].ToString();
                            lbl10.Text = r1["r1m"].ToString();

                            txtlj.Text = r1["longjump"].ToString();
                            lbllj.Text = r1["ljm"].ToString();

                            txtsp.Text = r1["shotput"].ToString();
                            lblsp.Text = r1["spm"].ToString();

                            txtpull.Text = r1["pullups"].ToString();
                            lblpu.Text = r1["pum"].ToString();
                        }

                    }
                }
                else
                {
                    lblname.Text = "";
                    lbldob.Text = "";
                    lblg.Text = "";
                    lblcast.Text = "";
                    lblcategory.Text = "";

                    txt1600m.Text = "";
                    lbl16.Text = "";

                    txt800m.Text = "";
                    lbl8.Text = "";

                    txt100m.Text = "";
                    lbl10.Text = "";

                    txtlj.Text = "";
                    lbllj.Text = "";

                    txtsp.Text = "";
                    lblsp.Text = "";

                    txtpull.Text = "";
                    lblpu.Text = "";
                }
                if (lblname.Text == "")
                {
                    btnsub.Enabled = false;
                    btnabs.Enabled = false;
                }
                else
                {
                    btnsub.Enabled = true;
                    btnabs.Enabled = true;
                }
                con.Close();
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
                //hide 1600m score
                lbl16.Visible = false;
                lblpu.Visible = false;

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

                lbl16.Visible = true;
                lblpu.Visible = true;

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
            t1();
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
            MySqlCommand cmd = new MySqlCommand("Update pb_city_data set race1600 =@r16, r16m=@r16m, race800=@r800, race100=@r100, r8m=@r8m, r1m=@r1m, longjump=@lj, ljm=@ljm, shotput=@sp, spm=@spm, pullups=@pu, pum=@pum, g_flag=@flag, ground_total=@total where application_Id='" + DropDownList2.Text + "'", conn);
            if (lblg.Text == "M")
            {
                cmd.Parameters.AddWithValue("@r16", txt1600m.Text);
                cmd.Parameters.AddWithValue("@r16m", Convert.ToInt32(r16.Value));

                cmd.Parameters.AddWithValue("@r800", "0");
                cmd.Parameters.AddWithValue("@r8m", "0");

                cmd.Parameters.AddWithValue("@r100", txt100m.Text);
                cmd.Parameters.AddWithValue("@r1m", Convert.ToInt32(r100.Value));

                cmd.Parameters.AddWithValue("@lj", txtlj.Text);
                cmd.Parameters.AddWithValue("@ljm", Convert.ToInt32(hlj.Value));

                cmd.Parameters.AddWithValue("@sp", txtsp.Text);
                cmd.Parameters.AddWithValue("@spm", Convert.ToInt32(hsp.Value));

                cmd.Parameters.AddWithValue("@pu", txtpull.Text);
                cmd.Parameters.AddWithValue("@pum", Convert.ToInt32(hpu.Value));

                cmd.Parameters.AddWithValue("@total", res);
                cmd.Parameters.AddWithValue("@flag", "1");          // flag true
                cmd.ExecuteNonQuery();
            }
            if (lblg.Text == "F")
            {
                cmd.Parameters.AddWithValue("@r16", "0");
                cmd.Parameters.AddWithValue("@r16m", "0");

                cmd.Parameters.AddWithValue("@r800", txt800m.Text);
                cmd.Parameters.AddWithValue("@r8m", Convert.ToInt32(r8.Value));

                cmd.Parameters.AddWithValue("@r100", txt100m.Text);
                cmd.Parameters.AddWithValue("@r1m", Convert.ToInt32(r100.Value));

                cmd.Parameters.AddWithValue("@lj", txtlj.Text);
                cmd.Parameters.AddWithValue("@ljm", Convert.ToInt32(hlj.Value));

                cmd.Parameters.AddWithValue("@sp", txtsp.Text);
                cmd.Parameters.AddWithValue("@spm", Convert.ToInt32(hsp.Value));

                cmd.Parameters.AddWithValue("@pu", "0");
                cmd.Parameters.AddWithValue("@pum", "0");

                cmd.Parameters.AddWithValue("@total", res);
                cmd.Parameters.AddWithValue("@flag", "1");          //flag true
                cmd.ExecuteNonQuery();
            }
            conn.Close();
        }

        protected void upd_city_physical()
        {
            string s2;
            s2 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(s2);
            conn.Open();
            //MySqlCommand cmd = new MySqlCommand("Insert into pb_city_data (race1600,r16m,race800,race100,r8m,r1m,longjump,ljm,shotput,spm,pullups,pum,g_flag,ground_total     (=@r16, =@r16m, =@r800, =@r100, =@r8m, =@r1m, =@lj, =@ljm, =@sp, =@spm, =@pu, =@pum, =@flag, =@total) where application_Id='" + DropDownList2.Text + "'", conn);
        }
    }
}