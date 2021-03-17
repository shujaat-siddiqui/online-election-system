<%@ Page Title="Candidate Login" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="CandidateLogin.aspx.cs" Inherits="Online_Election_System.CandidateLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="LoginStyle.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:450px; padding-top:10%; background-image:url('/Images/adminlogin.jpg') ">
        
            <div class="login">
                <asp:TextBox ID="txt_email" placeholder="Email ID" runat="server" Required></asp:TextBox>
                <asp:TextBox ID="txt_password" placeholder="password" runat="server" TextMode="Password" Required></asp:TextBox>
                <a href="#" class="forgot">forgot password?</a>
                <asp:Button ID="btn_login" runat="server" Text="Sign In" OnClick="btn_login_Click" />
            </div>        
     
     </div>

</asp:Content>
