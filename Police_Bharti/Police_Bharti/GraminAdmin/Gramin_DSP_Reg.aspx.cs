using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Web.Security;

namespace Police_Bharti.GraminAdmin
{
    public partial class Gramin_DSP_Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void areg()
        {
            try
            {
                string conn = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
                MySqlConnection ocon = new MySqlConnection(conn);
                ocon.Open();
                string mUserName = CreateUserWizard1.UserName;
                string pass = CreateUserWizard1.Password;
                string mailid = CreateUserWizard1.Email;
                MySqlCommand cmd = new MySqlCommand("INSERT into pb_gramin_dsp (police_id,buckle_no,name,birth_date,joining_date,address) values(@a,@b,@c,@d,@e,@f)", ocon);
                cmd.Parameters.AddWithValue("@a", txtid.Text);
                cmd.Parameters.AddWithValue("@b", txtbklno.Text);
                cmd.Parameters.AddWithValue("@c", txtname.Text);
                cmd.Parameters.AddWithValue("@d", txtbdate.Text);
                cmd.Parameters.AddWithValue("@e", txtjdate.Text);
                cmd.Parameters.AddWithValue("@f", txtadd.Text);
                cmd.ExecuteNonQuery();
                ocon.Close();
            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            string newRole = "GDSP";
            Roles.AddUserToRole(CreateUserWizard1.UserName, newRole);
            areg();
        }
    }
}