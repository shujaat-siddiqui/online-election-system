using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Election_System
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_testing_Click(object sender, EventArgs e)
        {
            String url = "CandidateLogin.aspx";
            Response.Write("<script type='text/javascript'>window.open('" + url + "');</script>");
        }
    }
}