using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Online_Election_System
{
    public partial class CandidatesList : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineElectionSystem"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from Candidate where idnumber = '" + txt_idnumber.Text + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {

                dr.Read();
                Session["idnumber"] = dr["idnumber"].ToString();
                Response.Redirect("CandidateView.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Id number. Please try again.')</script>");
            }
            dr.Close();
            con.Close();
        }
    }
}