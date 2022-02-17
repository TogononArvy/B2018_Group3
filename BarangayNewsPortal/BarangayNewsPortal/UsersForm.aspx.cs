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
    public partial class UsersForm : System.Web.UI.Page
    {
        public static string constr = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        SqlConnection Connect = new SqlConnection(constr);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTables();
            }
        }
        void LoadTables()
        {

            SqlCommand loadcmd = new SqlCommand("SELECT * from usertable where UserType <>'admin'", Connect);
            SqlDataAdapter SDA = new SqlDataAdapter(loadcmd);
            DataSet myDataSet = new DataSet();
            Connect.Open();
            DataTable DT = new DataTable();
            SDA.Fill(DT);
            user_grid.DataSource = DT;
            user_grid.DataBind();
        }
    }
}