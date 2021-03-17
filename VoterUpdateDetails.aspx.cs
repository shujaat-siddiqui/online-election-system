using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace Online_Election_System
{
    public partial class VoterUpdateDetials : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineElectionSystem"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;

        String idnumber, gender;

        int status = 0;
        String ActiveStatus = "No";

        protected void Page_Load(object sender, EventArgs e)
        {
            idnumber = Session["idnumber"].ToString();
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (!(txt_name.Text.Equals("")))
            {
                con.Open();
                cmd = new SqlCommand("update Voter set Name = '" + txt_name.Text + "' , ActiveStatus = '" + ActiveStatus + "' where idnumber = '" + idnumber + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                status = 1;
            }

            if (!(txt_address.Text.Equals("")))
            {
                con.Open();
                cmd = new SqlCommand("update Voter set Address = '" + txt_address.Text + "' , ActiveStatus = '" + ActiveStatus + "' where idnumber = '" + idnumber + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                status = 1;
            }

            if (!(txt_DOB.Text.Equals("")))
            {
                con.Open();
                cmd = new SqlCommand("update Voter set DOB = '" + txt_DOB.Text + "' , ActiveStatus = '" + ActiveStatus + "' where idnumber = '" + idnumber + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                status = 1;
            }

            if ((rad_male.Checked == true) || (rad_female.Checked == true))
            {
                if (rad_male.Checked == true)
                {
                    gender = "Male";
                }
                else
                {
                    gender = "Female";
                }

                con.Open();
                cmd = new SqlCommand("update Voter set Gender = '" + gender + "' , ActiveStatus = '" + ActiveStatus + "' where idnumber = '" + idnumber + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                status = 1;
            }

            if (!(txt_mobile.Text.Equals("")))
            {
                con.Open();
                cmd = new SqlCommand("update Voter set Mobile = '" + txt_mobile.Text + "' , ActiveStatus = '" + ActiveStatus + "' where idnumber = '" + idnumber + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                status = 1;
            }

            if (photoupload.HasFiles)
            {
                string photo = "~/VoterPhotos/" + photoupload.FileName;
                photoupload.SaveAs(Server.MapPath(photo).ToString());
                con.Open();
                cmd = new SqlCommand("update Voter set Photo = '" + photo + "' , ActiveStatus = '" + ActiveStatus + "' where idnumber = '" + idnumber + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                status = 1;
            }

            if (documentupload.HasFiles)
            {
                string document = "~/VoterDocuments/" + documentupload.FileName;
                documentupload.SaveAs(Server.MapPath(document).ToString());
                con.Open();
                cmd = new SqlCommand("update Voter set Document = '" + document + "' , ActiveStatus = '" + ActiveStatus + "' where idnumber = '" + idnumber + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                status = 1;
            }

            if (!(txt_password.Text.Equals("")))
            {
                con.Open();
                cmd = new SqlCommand("update Voter set Password = '" + txt_password.Text + "' , ActiveStatus = '" + ActiveStatus + "' where idnumber = '" + idnumber + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                status = 1;
            }

            if (status == 1)
            {
                Response.Redirect("VoterProfile.aspx");
            }
            else
            {
                Response.Write(@"<script language='javascript'>alert('Please Enter Details.');</script>");
            }
        }
    }
}