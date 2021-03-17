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
    public partial class Voting : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineElectionSystem"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;
        String status = "Yes";
        String idnumber;
        int NoOfVotes;

        protected void Page_Load(object sender, EventArgs e)
        {
            idnumber = Session["idnumber"].ToString();
            votingcheck();
        }

        protected void btn_vote_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from Candidate where ActiveStatus = '" + status + "' and idnumber ='" + txt_vidnumber.Text + "' ", con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Close();
                votecount();
                cmd = new SqlCommand("update Candidate set NoOfVotes = '"+NoOfVotes+"' where idnumber = '"+txt_vidnumber.Text+"' ",con);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("update Voter set VotingStatus = '" + status + "' where idnumber = '" + idnumber + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                con.Close();
                Response.Write(@"<script language='javascript'>alert('Incorrect ID Number or Candidate Not Eligible.');</script>");
            }
            
        }

        private void votingcheck()
        {
            con.Open();
            cmd = new SqlCommand("select * from Voting where votingstatus = '" + status + "' ", con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Close();
                cmd = new SqlCommand("select * from Voter where ActiveStatus = '" + status + "' and idnumber ='" + idnumber + "' ", con);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Close();
                    cmd = new SqlCommand("select * from Voter where VotingStatus = '" + status + "' and idnumber ='" + idnumber + "' ", con);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        votingdone.Visible = true;
                    }
                    else
                    {
                        voting.Visible = true;
                    }
                }
                else
                {
                    voterineligible.Visible = true;
                }
                dr.Close();
            }
            else
            {
                dr.Close();
                cmd = new SqlCommand("select * from Voting where votingcompl = '" + status + "' ", con);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    votingcompleted.Visible = true;
                }
                else
                {
                    votingnotstarted.Visible = true;
                }
                dr.Close();
            }
            con.Close();

        }

        private void votecount()
        {
            cmd = new SqlCommand("select * from Candidate where idnumber = '" +txt_vidnumber.Text+"' ", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            String pn = dr["NoOfVotes"].ToString();
            NoOfVotes = Convert.ToInt32(pn);
            NoOfVotes++;
            dr.Close();
        }
    }
}