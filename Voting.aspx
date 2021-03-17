<%@ Page Title="Voting" Language="C#" MasterPageFile="~/Voter.Master" AutoEventWireup="true" CodeBehind="Voting.aspx.cs" Inherits="Online_Election_System.Voting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:auto; width:auto; background-color:#c8b9b9">

        <div id="votingnotstarted" runat="server" visible="false" style="height:300px; width:100%; color:red; font-family:'Bell MT'; font-size:30px; padding-top:15%">
            <marquee behavior="scroll" direction="left" scrollamount="12">Voting has not been Started Yet!! Please Come Back Later!!</marquee>
        </div>

        <div id="votingcompleted" runat="server" visible="false" style="height:300px; width:100%; color:red; font-family:'Bell MT'; font-size:30px; padding-top:15%">
            <marquee behavior="scroll" direction="left" scrollamount="12">Voting is over! Go to results page to find more!!!</marquee>
        </div>

        <div id="voterineligible" runat="server" visible="false" style="height:300px; width:100%; color:red; font-family:'Bell MT'; font-size:30px; padding-top:15%">
            <marquee behavior="scroll" direction="left" scrollamount="12">Sorry!! You're Not Eligible to Vote...!!</marquee>
        </div>

        <div id="votingdone" runat="server" visible="false" style="height:300px; width:100%; color:red; font-family:'Bell MT'; font-size:30px; padding-top:15%">
            <marquee behavior="scroll" direction="left" scrollamount="12">Thanku!! You have voted.</marquee>
        </div>

        <div id="voting" runat="server" visible="false">

            <div style="height:40px; width:200px; padding-left:4px; padding-top:4px; color:black; font-size:25px; font-family:Tahoma; font:bold">
                <u>Candidates :-</u>
            </div>

            <div style=" width:auto; margin-top:5px; margin-bottom:5%">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idnumber" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="Both" Width="700px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />            
            
                <Columns>
                    <asp:BoundField DataField="idnumber" HeaderText="ID Number" SortExpression="idnumber" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Party" HeaderText="Party" SortExpression="Party" />   
                    <asp:BoundField DataField="ActiveStatus" HeaderText="Eligibility" SortExpression="ActiveStatus" />
                        
                </Columns> 
            
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-SNGIH0I\SHUJAAT;Initial Catalog=OnlineElectionSystem;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [idnumber], [Name], [Gender], [ActiveStatus], [Party] FROM [Candidate]"></asp:SqlDataSource>

            </div>

            <div style="height:200px; width:100%; margin-top:5px; padding-left:4px; padding-top:4px; color:black; font-size:25px; font-family:Tahoma; font:bold">
                <marquee>Please Confirm the Candidate's Eligiblity before Voting!!</marquee>
                <br />
                <u>Enter the ID number of Candidate :-</u>
                <br /> <br /> 
                <table border="1" style="height:60px; border-color:black; width:400px; text-align:center" align="center" >
                    <tr>
                       <td style="color:black">
                           <asp:TextBox ID="txt_vidnumber" runat="server" Height="25px" MaxLength="3" BorderColor="Black" BorderStyle="Solid" Required Placeholder="ID number" ></asp:TextBox>
                       </td>
                       <td style="color:black">
                           <asp:Button ID="btn_vote" runat="server" Text="Vote Now" BorderColor="Black" Font-Bold="True" ForeColor="#000099" Height="25px" Width="100px" OnClick="btn_vote_Click" />
                       </td>
                   </tr>
                </table>
            </div>

        </div>

    </div>

</asp:Content>
