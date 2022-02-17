using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BarangayNewsPortal
{
    public partial class newsfeed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetDataFromSession();
        }
        private void GetDataFromSession()
        {
            //lbl.Text = Session["Title"].ToString();
           // lbl2.Text = Session["Description"].ToString();

        }

    }
}