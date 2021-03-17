<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Voter.Master" AutoEventWireup="true" CodeBehind="VoterProfile.aspx.cs" Inherits="Online_Election_System.VoterProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:600px; background-color:#c8b9b9; padding-top:5%; padding-bottom:5%">
        <table border="1" style="height:90%; border-color:black; width:80%; text-align:center" align="center" >
               <tr>
                   <td colspan="2" style="font-family:'Agency FB' ; font-size:25pt; color:black ">
                       <U><asp:Label ID="lbl_name" runat="server" Text="Name" Font-Bold="True" Font-Underline="True" ForeColor="Black"></asp:Label></U>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Address :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_address" runat="server" Width="300px" Height="30px" BorderColor="Black" BorderStyle="Outset" Font-Bold="True" ReadOnly="True" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">DOB :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_DOB" runat="server"  Width="200px" Height="22px" BorderColor="Black" BorderStyle="Outset" Font-Bold="True" ReadOnly="True" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Gender :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_gender" runat="server"  Width="200px" Height="22px" BorderColor="Black" BorderStyle="Outset" Font-Bold="True" ReadOnly="True" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Mobile :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_mobile" runat="server"  Width="200px" Height="22px" BorderColor="Black" BorderStyle="Outset" Font-Bold="True" ReadOnly="True" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Email :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_email" runat="server"  Width="200px" Height="22px" BorderColor="Black" BorderStyle="Outset" Font-Bold="True" ReadOnly="True" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Photo :</td>
                   <td style="color:black">
                       <asp:Image ID="photo" runat="server" Width="180px" Height="200px" BorderColor="Black" BorderStyle="Solid"  />
                   </td>
               </tr>
        </table>
    </div>

</asp:Content>
