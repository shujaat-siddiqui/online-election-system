<%@ Page Title="Candidate" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdCandidateView.aspx.cs" Inherits="Online_Election_System.AdCandidateView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:1200px; background-color:#c8b9b9; padding-top:5%; padding-bottom:5%">
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
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Party :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_party" runat="server"  Width="200px" Height="22px" BorderColor="Black" BorderStyle="Outset" Font-Bold="True" ForeColor="#000099" ReadOnly="True" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Photo :</td>
                   <td style="color:black">
                       <asp:Image ID="photo" runat="server" Width="180px" Height="200px" BorderColor="Black" BorderStyle="Solid"  />
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Document :</td>
                   <td style="color:black">
                       <asp:Image ID="document" runat="server" Width="200px" Height="300px" BorderColor="Black" BorderStyle="Solid"  />
                   </td>
               </tr> 
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Email Verification :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_emailverify" runat="server"  Width="200px" Height="22px" BorderColor="Black" BorderStyle="Outset" Font-Bold="True" ForeColor="#000099" ReadOnly="True" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Active Status :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_activestatus" runat="server"  Width="200px" Height="22px" BorderColor="Black" BorderStyle="Outset" Font-Bold="True" ForeColor="#000099" ReadOnly="True" ></asp:TextBox>
                   </td>
               </tr> 
               <tr>
                   <td colspan="2" style="font-family:'Agency FB' ; color:black ">
                       <asp:Button ID="btn_verify" runat="server" Text="Verify" BorderStyle="Solid" Font-Bold="True" Font-Names="Broadway" ForeColor="#0000CC" Height="30px" OnClick="btn_verify_Click" Width="200px" />
                   </td>
               </tr> 
        </table>
    </div>

</asp:Content>
