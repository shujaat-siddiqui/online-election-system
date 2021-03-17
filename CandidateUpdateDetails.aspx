<%@ Page Title="Update Details" Language="C#" MasterPageFile="~/Candidate.Master" AutoEventWireup="true" CodeBehind="CandidateUpdateDetails.aspx.cs" Inherits="Online_Election_System.CandidateUpdateDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:auto; width:100%; background-color:#c8b9b9">

        <div style="height:800px; margin-top:5px; padding-left:4px; padding-top:4px; color:black; font-size:22px; font-family:Tahoma; font:bold" >
            <table border="1" style="height:90%; border-color:black; width:80%; text-align:center" align="center" >
               <tr>
                   <td colspan="2" style="font-family:'Agency FB' ; font-size:25pt; color:black ">
                       <U>Enter into fields(Only those to update): -</U>
                   </td>
               </tr>
               <tr>
                    <td style="font-family:'Agency FB'; font-size:18pt; color:black ">Name :</td>
                    <td style="color:black">
                        <asp:TextBox ID="txt_name" runat="server" Width="200px" Height="20px"  BorderStyle="dotted"></asp:TextBox>
                    </td>
               </tr> 
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Address :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_address" runat="server" Width="200px" Height="20px" BorderStyle="dotted"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">DOB :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_DOB" runat="server"  Width="200px" Height="22px" TextMode="Date" MaxLength="8"  BorderStyle="dotted" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Gender :</td>
                   <td style="color:black">
                       <asp:RadioButton ID="rad_male" runat="server" GroupName="Gender" Text="Male" Font-Size="18pt" ForeColor="black"/>
                       &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                       <asp:RadioButton ID="rad_female" runat="server" GroupName="Gender" Text="Female" Font-Size="18pt" ForeColor="black"/>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Mobile :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_mobile" runat="server" Width="200px" Height="20px" MaxLength="10" BorderStyle="dotted"></asp:TextBox>
                   </td>
               </tr>               
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Party :</td>
                   <td style="color:black">
                       <asp:DropDownList ID="ddl_party" runat="server" Width="200px" Height="30px" Font-Bold="true" Font-Names="Tahoma" >
                           <asp:ListItem></asp:ListItem>
                           <asp:ListItem>INC</asp:ListItem>
                           <asp:ListItem>BJP</asp:ListItem>
                           <asp:ListItem>BSP</asp:ListItem>
                           <asp:ListItem>SP</asp:ListItem>
                           <asp:ListItem>AAP</asp:ListItem>
                           <asp:ListItem>TMC</asp:ListItem>
                           <asp:ListItem>SHIV SENA</asp:ListItem>
                           <asp:ListItem>AKALI DAL</asp:ListItem>
                       </asp:DropDownList>
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Photo :</td>
                   <td style="color:black">
                       
                       <asp:FileUpload ID="photoupload" runat="server" Height="20px" Width="200px" />
                       
                   </td>
               </tr>
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Document :</td>
                   <td style="color:black">
                       
                       <asp:FileUpload ID="documentupload" runat="server" Height="20px" Width="200px" />
                       
                   </td>
               </tr> 
               <tr>
                   <td style="font-family:'Agency FB'; font-size:18pt; color:black">Password :</td>
                   <td style="color:black">
                       <asp:TextBox ID="txt_password" runat="server" Height="20px" Width="200px" TextMode="Password"  BorderStyle="dotted"></asp:TextBox>
                   </td>

               </tr>
               <tr>
                   <td colspan="2" style="color:snow">
                       <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="200px" ForeColor="#CC3300" Font-Bold="True" Font-Names="Agency FB" Font-Size="20pt" OnClick="btn_submit_Click" />
                   </td>
               </tr>
            </table>
        </div>
    </div>

</asp:Content>
