<%@ Page Title="Voter Login" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="VoterLogin.aspx.cs" Inherits="Online_Election_System.VoterLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="LoginStyle.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:450px; padding-top:10%; background-image:url('/Images/adminlogin.jpg') ">
        
            <div class="login">
                <asp:TextBox ID="txt_email" placeholder="Email" runat="server" Required></asp:TextBox>
                <asp:TextBox ID="txt_password" placeholder="Password" runat="server" TextMode="Password" Required></asp:TextBox>
                <a href="#" class="forgot">forgot password?</a>
                <asp:Button ID="btn_login" runat="server" Text="Sign In" OnClick="btn_login_Click" />
            </div>        
     
     </div>

</asp:Content>
