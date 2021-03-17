<%@ Page Title="Update Email" Language="C#" MasterPageFile="~/Voter.Master" AutoEventWireup="true" CodeBehind="VoterUpdateEmail.aspx.cs" Inherits="Online_Election_System.VoterUpdateEmail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:400px; width:100%; background-color:#c8b9b9">

        <div style="padding-top:50px; text-align:center; color:black; font-size:22px; font-family:Tahoma; font:bold" >
            <u>Update Email ID :-</u>
            <br /> <br /> <br />
            <table border="1" style="height:60px; border-color:black; width:400px; text-align:center" align="center" >
                <tr>
                   <td style="color:black">
                       <asp:TextBox ID="txt_newemail" runat="server" Height="25px" width="200px" BorderColor="Black" BorderStyle="Solid" Required Placeholder=" Enter New Email ID " ></asp:TextBox>
                   </td>
                   <td style="color:black" >
                       <asp:Button ID="btn_submit" runat="server" Text="Submit" BorderColor="Black" Font-Bold="True" ForeColor="#000099" Height="25px" Width="100px" OnClick="btn_submit_Click" />
                   </td>
               </tr>
            </table>
            <br /> <br /> <br /> <br /> 
            <asp:HyperLink ID="linktoupdate" runat="server" NavigateUrl="VoterUpdateDetails.aspx">Click Here to Update Other details!</asp:HyperLink>
        </div>

    </div>

</asp:Content>
