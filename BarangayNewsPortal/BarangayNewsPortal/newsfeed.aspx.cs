using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

namespace BarangayNewsPortal
{
    public partial class newsfeed : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
string main = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(main);
            string sqlquery = "select * from [dbo].[imageup]";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = sqlcomm;
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Datalist1.DataSource = ds;
            Datalist1.DataBind();
            sqlconn.Close();
           
        }
    }
 }
       