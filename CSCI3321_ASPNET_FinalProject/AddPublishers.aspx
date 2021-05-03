<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPublishers.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddPublishers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>Add Publisher</h3>
    <div class ="row">
        <div class="col-md-3">Publisher Name:</div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtPublisherName" runat="server"></asp:TextBox>
            <br />
            </div>
        <div class="col-md-3">Address:</div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            <br />
            </div>
        <div class="col-md-3">City:</div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            <br />
            </div>
        <div class="col-md-3">Postal Code:</div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
            <br />
            </div>
        <div class="col-md-3">Country:</div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            <br />
            </div>
        <div class="col-md-3">Phone:</div>
        <div class="col-mid-9">
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            <br />
        </div>
        <div class="col-md-12">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </div>
</asp:Content>
