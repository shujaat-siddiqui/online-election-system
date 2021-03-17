using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Election_System
{
    public partial class CandidateUpdateEmailVerify : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineElectionSystem"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;
        String otp, otp1, idnumber, email;
        int found = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            otp = Session["otp"].ToString();
            email = Session["newemail"].ToString();
            idnumber = Session["idnumber"].ToString();
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            otp1 = txt_otp.Text;
            if (otp1.Equals(otp))
            {
                found = 1;
            }
            else
            {
                Response.Write("<script> alert('Invalid OTP' + otp1)</script>");
                txt_otp.Text = "";
            }

            if (found == 1)
            {
                con.Open();
                cmd = new SqlCommand("update Candidate set Email = '" + email + "' where idnumber = '" + idnumber + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Session["email"] = email;
                Response.Redirect("CandidateProfile.aspx");
            }
        }
    }
}