<%@ Page Title="OTP Verification" Language="C#" MasterPageFile="~/Voter.Master" AutoEventWireup="true" CodeBehind="VoterUpdateEmailVerify.aspx.cs" Inherits="Online_Election_System.VoterEmailUpdateVerify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:400px; margin-top:5px; padding-left:4px; padding-top:15%; color:black; font-size:22px; font-family:Tahoma; font:bold" >

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
