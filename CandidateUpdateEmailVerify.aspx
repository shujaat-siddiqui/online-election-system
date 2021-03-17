<%@ Page Title="OTP Verification" Language="C#" MasterPageFile="~/Candidate.Master" AutoEventWireup="true" CodeBehind="CandidateUpdateEmailVerify.aspx.cs" Inherits="Online_Election_System.CandidateUpdateEmailVerify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:350px; padding-top:15%; background-color:#c8b9b9; color:black; font-size:22px; font-family:Tahoma; font:bold" >

            <table border="1" style="height:60px; border-color:black; width:400px; text-align:center" align="center" >
                <tr>
                   <td style="color:black">
                       <asp:TextBox ID="txt_otp" runat="server" Height="25px" width="200px" BorderColor="Black" BorderStyle="Solid" MaxLength="6" Required Placeholder=" Enter OTP " ></asp:TextBox>
                   </td>
                   <td style="color:black" >
                       <asp:Button ID="btn_submit" runat="server" Text="Submit" BorderColor="Black" Font-Bold="True" ForeColor="#000099" Height="25px" Width="100px" OnClick="btn_submit_Click" />
                   </td>
               </tr>
            </table>
        </div>

</asp:Content>
