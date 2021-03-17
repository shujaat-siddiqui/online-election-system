<%@ Page Title="Results" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="Online_Election_System.Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:auto; width:auto; background-color:#c8b9b9; padding-top:10px; padding-left:10px; padding-bottom:5%">

        <div id="resultsnotdecl" runat="server" visible="false" style="height:300px; width:auto; color:red; font-family:'Bell MT'; font-size:30px; padding-top:15%">
            <marquee behavior="scroll" direction="left" scrollamount="12">Results have not been declared Yet!! Please Come Back Later!!</marquee>
        </div>

        <div id="resultsdecl" runat="server" visible="false" style="height:auto; width:100%">

            <div style="height:auto; width:100%; margin-top:5px; margin-bottom:5px; padding-left:4px; padding-top:4px; color:black; font-size:25px; font-family:Tahoma; font:bold">
                
                <u>The Election is Won by :-</u>
                <br /> <br />
                <table border="1" style="height:220px; border-color:black; width:600px; text-align:center" align="center" >
                    <tr>
                       <td style="width:300px">
                           <asp:Image ID="photo" runat="server" Height="200px" Width="200px" />
                       </td>
                       <td >
                           <table border="1" style="text-align:center" align="center">
                               <tr>
                                   <td style="width:200px">
                                       <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
                                   </td>
                               </tr>
                               <tr style="width:200px; margin-top:2%">
                                   <td>
                                       <asp:Label ID="lbl_party" runat="server" Text="Label"></asp:Label>
                                   </td>
                               </tr>
                           </table>
                       </td>
                   </tr>
                </table>
            </div>

            <div style="height:40px; width:200px; padding-left:4px; padding-top:4px; color:black; font-size:25px; font-family:Tahoma; font:bold">
                <u>Full Result :-</u>
            </div>

            <div style=" width:auto; margin-top:3px">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idnumber" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="Both" Width="700px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />            
            
                <Columns>
                    <asp:BoundField DataField="idnumber" HeaderText="ID Number" SortExpression="idnumber" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Party" HeaderText="Party" SortExpression="Party" />   
                    <asp:BoundField DataField="NoOfVotes" HeaderText="Number of Votes" SortExpression="NoOfVotes" />
                        
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-SNGIH0I\SHUJAAT;Initial Catalog=OnlineElectionSystem;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [idnumber], [Name], [Gender], [NoOfVotes], [Party] FROM [Candidate]"></asp:SqlDataSource>

            </div>

        </div>

    </div>

</asp:Content>
