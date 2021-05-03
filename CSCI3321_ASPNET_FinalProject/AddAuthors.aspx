<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAuthors.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddAuthors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <h3>Add Author</h3>
    <div class ="row">
        <div class="col-md-3">Lastname:</div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>
            <br />
            </div>
        <div class="col-md-3">Firstname:</div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
            <br />
            </div>
        <div class="col-md-3">Gender:</div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
            <br />
            </div>
        <div class="col-md-3">Date of Birth (yyyy-mm-dd):</div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
            <br />
            </div>
        <div class="col-md-12">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        </div>
    </div>
</asp:Content>
