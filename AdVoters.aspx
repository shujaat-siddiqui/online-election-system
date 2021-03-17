<%@ Page Title="Voters" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdVoters.aspx.cs" Inherits="Online_Election_System.AdVoters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:auto; width:auto; background-color:#c8b9b9">

        <div style="height:40px; width:200px; padding-left:4px; padding-top:4px; color:black; font-size:25px; font-family:Tahoma; font:bold">
             <u>Voters :-</u>
        </div>

         <div style=" width:auto; margin-top:5px; margin-bottom:5%">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idnumber" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="Both" Width="700px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />            
            
            <Columns>
                <asp:BoundField DataField="idnumber" HeaderText="ID Number" SortExpression="idnumber" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />       
                <asp:BoundField DataField="ActiveStatus" HeaderText="Active Status" SortExpression="ActiveStatus" />  
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-SNGIH0I\SHUJAAT;Initial Catalog=OnlineElectionSystem;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [idnumber], [Name], [Gender], [DOB], [ActiveStatus] FROM [Voter]"></asp:SqlDataSource>

        </div>

        <div style="height:200px; width:700px; margin-top:5px; padding-left:4px; padding-top:4px; color:black; font-size:25px; font-family:Tahoma; font:bold">
             <u>For more details about Voter and to Verify Voter :-</u>
             <br /> <br /> 
            <table border="1" style="height:60px; border-color:black; width:400px; text-align:center" align="center" >
            <tr>
                   <td style="color:black">
                       <asp:TextBox ID="txt_idnumber" runat="server" Height="25px" MaxLength="3" BorderColor="Black" BorderStyle="Solid" Required Placeholder="ID number" ></asp:TextBox>
                   </td>
                   <td style="color:black">
                       <asp:Button ID="btn_search" runat="server" Text="Search" BorderColor="Black" Font-Bold="True" ForeColor="#000099" Height="25px" Width="100px" OnClick="btn_search_Click" />
                   </td>
               </tr>
            </table>
        </div>

    </div>

</asp:Content>
