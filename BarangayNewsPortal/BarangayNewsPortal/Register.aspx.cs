using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BarangayNewsPortal
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
            SqlConnection Connect = new SqlConnection(constr);

            try
            {
                Connect.Open();
                string usertype = "user";
                SqlCommand cmd = new SqlCommand("insert into usertable values('" + username.Text + "','" + password.Text + "','" + usertype + "','" + email.Text + "')", Connect);
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
            catch(Exception x)
            {
                
            }
        }
    }
}