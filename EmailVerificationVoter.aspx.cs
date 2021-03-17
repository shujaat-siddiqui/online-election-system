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
    public partial class Email_Verification_Voter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineElectionSystem"].ToString());
        SqlCommand cmd;

        String otp, otp1, emailverify = "Yes", idnumber;
        int found = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            otp = Session["otp"].ToString();
            idnumber = Session["idnumber"].ToString();
        }

        protected void btn_verify_Click(object sender, EventArgs e)
        {
            otp1 = txt_OTP.Text;
            if (otp.Equals(otp1) == true)
            {
                found = 1;
                Response.Write("<script> alert('OTP Verified')</script>");
            }
            else
            {
                Response.Write("<script> alert('Invalid OTP')</script>");
            }

            if (found == 1)
            {
                con.Open();
                cmd = new SqlCommand("update Voter set EmailVerification = '" + emailverify + "' where idnumber = '" + idnumber + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('You have registered succesfully ')</script>");
                Response.Redirect("VoterLogin.aspx");
            }
        }
    }
}
