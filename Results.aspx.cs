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
    public partial class Results : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineElectionSystem"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;
        String idnumber, path, status = "Yes";

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from Voting where resultdecl = '" + status + "' ", con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                resultsdecl.Visible = true;
                dr.Close();
                cmd = new SqlCommand("select * from Candidate where NoOfVotes = (select max(NoOfVotes) from Candidate)", con);
                dr = cmd.ExecuteReader();
                dr.Read();
                lbl_name.Text = dr["Name"].ToString();
                lbl_party.Text = dr["Party"].ToString();
                path = dr["Photo"].ToString();
                photo.ImageUrl = path;
                dr.Close();
            }
            else
            {
                resultsnotdecl.Visible = true;
                dr.Close();
            }
            con.Close();
        }
    }
}