using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;
using System.Web.Configuration;

namespace BarangayNewsPortal
{
    public partial class News : System.Web.UI.Page
    {
        public static News instance;
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

            SqlCommand loadcmd = new SqlCommand("SELECT * from imageup", Connect);
            SqlDataAdapter SDA = new SqlDataAdapter(loadcmd);
            DataSet myDataSet = new DataSet();
            Connect.Open();
            DataTable DT = new DataTable();
            SDA.Fill(DT);
            data.DataSource = DT;
            data.DataBind();
            Connect.Close();

        }

        protected void up_Click(object sender, EventArgs e)
        {

            string path = Server.MapPath("Image/");
            if (upload.HasFile)
            {
                string ext = Path.GetExtension(upload.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    upload.SaveAs(path + upload.FileName);
                    string name = "Image/" + upload.FileName;
                    string ss = "insert into imageup (Title, Description, Image)values('" + title.Text + "','" + descrip.Text + "','" + name + "')";
                    SqlCommand cmd = new SqlCommand(ss, Connect);
                    Connect.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("News.aspx");
                    Connect.Close();


                }
            }
        }
       
    }
}