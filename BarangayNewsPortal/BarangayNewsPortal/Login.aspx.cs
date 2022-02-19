using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace BarangayNewsPortal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
            SqlConnection Connect = new SqlConnection(constr);
            try
            {
                Connect.Open();
                SqlCommand cmd = new SqlCommand("SELECT * from usertable where Username = '" + Username.Text + "' AND Password = '" + Password.Text + "'", Connect);
                SqlDataReader SDR = cmd.ExecuteReader();
                int LoginCount = 0;
                string getUserType = "";
                while (SDR.Read())
                {
                    LoginCount += 1;
                    getUserType = SDR.GetValue(2).ToString();
                }
                if (LoginCount > 0)
                {
                    Username.Text = "";
                    Password.Text = "";
                    if (getUserType == "admin")
                    {
                        Response.Redirect("Adminpage.aspx");
                        Connect.Close();
                    }
                    else if (getUserType == "user")
                    {

                        Response.Redirect("newsfeed.aspx");
                        Connect.Close(); 
                    }
                }
                else
                {
                    Response.Write("<script> alert('Error Login!')</script>");
                   Username.Text = "";
                    Password.Text = "";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void reg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}