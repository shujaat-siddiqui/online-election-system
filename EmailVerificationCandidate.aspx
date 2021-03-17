<%@ Page Title="Email Verification Candidate" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="EmailVerificationCandidate.aspx.cs" Inherits="Online_Election_System.Verification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div style="height:450px; width:400px; background-color:#c8b9b9; margin-left:30%; margin-right: 30%; margin-top:10px; margin-bottom:30px; font-size:30px; font:bold">

            <br />
            <br />
            <u>Enter the OTP you received on your Email Id :</u>
            <br />
            <br />
            <asp:TextBox ID="txt_OTP" runat="server" height="25px" Width="200px" MaxLength="6" Required></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_verify" runat="server" Text="Verify" OnClick="btn_verify_Click" Font-Bold="True" Font-Size="20px" Width="100px"  />

        </div>
    
</asp:Content>
