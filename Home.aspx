<%@ Page Title="Home" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Election_System.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        .mySlides {
            display: none
        }

        .w3-left, .w3-right, .w3-badge {
            cursor: pointer
        }

        .w3-badge {
            height: 13px;
            width: 13px;
            padding: 0
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height: 1500px; width: auto">

        <div style="height: 22px; width: 100%; background-color: rgba(128, 128, 128, 0.48)">
            <marquee behavior="scroll" direction="left" scrollamount="10">Welcome to the Online Election System!! </marquee>
        </div>

        <div style="height: 300px; width=900px; padding-left: 10px;">

            <div style="height: 300px; width: 500px; float: left">
                <u>
                    <h1 style="font-family: SohoGothicPro-Regular; text-align: center">Online Voting </h1>
                </u>
                <p style="font-family: Roboto-Regular; font-size: 18.5px; color: #690949; text-align: left">
                    A Voting channel to increase voter participation, reduce election costs while upholding the highest security, verifiability and integrity standards. Our election solutions are designed to improve the efficiency, security,  transparency and auditability of each election phase: Pre-Election, Election Day and Post-Election. Voter privacy, election integrity, end-to-end security, vote correctness and full verifiability (individual and universal) are guaranteed via advanced cryptographic protocols.
                </p>
            </div>

            <div style="float: right; padding-top: 10px">
                <iframe width="530px" height="290px" src="https://www.youtube.com/embed/nRp1CK_X_Yw?autoplay=1" allow="autoplay" frameborder="0" allow="fullscreen"></iframe>
            </div>

        </div>

        <div style="margin-top: 5%; width: 100%; text-align: center;">
            <asp:Image ID="votingworks" runat="server" ImageUrl="/Images/votingworks.jpg" />
        </div>

        <div style="margin-top: 2%; width: 100%; text-align: center;">
            <asp:Image ID="electionsolutions" runat="server" ImageUrl="/Images/electionsolutions.jpg" />
        </div>

        
    </div>

</asp:Content>
