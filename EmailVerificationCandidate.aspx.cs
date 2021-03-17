using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace Online_Election_System
{
    public partial class Verification : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineElectionSystem"].ToString());
        SqlCommand cmd;

        String otp, otp1, emailverify = "Yes", idnumber, email;
        int found = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            otp = Session["otp"].ToString();
            email = Session["email"].ToString();
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
                cmd = new SqlCommand("update Candidate set EmailVerification = '" +emailverify+ "' where idnumber = '" + idnumber + "'", con);
                cmd.ExecuteNonQuery();                
                con.Close();

                int port = 587;
                string host = "smtp.gmail.com";
                string username = "bazingahub@gmail.com";
                string password = "Bazinga@2020";
                string mailFrom = "bazingahub@gmail.com";
                string mailTo = email;
                string mailTitle = "Email Verified";
                string mailMessage = "Congratulations! You've successfully verified your Email.\n\nOne of our admin will look forward to your candidature and verify it according to eligiblity and documents submitted.\nIn the mean time you can login into your account and have a look around.\n\nThank You\nTeam Bazinga";

                using (SmtpClient client = new SmtpClient())
                {
                    MailAddress from = new MailAddress(mailFrom);
                    MailMessage message = new MailMessage
                    {
                        From = from
                    };
                    message.To.Add(mailTo);
                    message.Subject = mailTitle;
                    message.Body = mailMessage;
                    message.IsBodyHtml = true;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Host = host;
                    client.Port = port;
                    client.EnableSsl = true;
                    client.Credentials = new NetworkCredential
                    {
                        UserName = username,
                        Password = password
                    };
                    client.Send(message);
                    Response.Write("<script> alert('You have registered succesfully ')</script>");
                }
                
                Response.Redirect("CandidateLogin.aspx");
            }
        }
    }
}