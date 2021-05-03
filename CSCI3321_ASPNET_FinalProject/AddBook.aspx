<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">
        <div class="col-md-3">Title:</div>
        <div class="col-md-9">
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>         
        </div>
        <br />
        <div class="col-md-3">Author:</div>
        <div class="col-md-9">
            <asp:DropDownList ID="drpAuthor" runat="server" DataSourceID="sqlAuthors" DataTextField="Fullname" DataValueField="AuthorID"></asp:DropDownList> 
            <asp:SqlDataSource ID="sqlAuthors" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID,FirstName + ' ' + LastName AS FullName
 FROM Authors"></asp:SqlDataSource>
        </div>
        <br />
        <div class="col-md-3">Price:</div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>         
        </div>
        <br />
        <div class="col-md-3">Date Published (yyyy-mm-dd):</div>
        <div class="col-md-9">
            <asp:TextBox ID="txtDatePub" runat="server"></asp:TextBox>         
        </div>
        <br />
        <div class="col-md-3">Publisher:</div>
        <div class="col-md-9">
            <asp:DropDownList ID="drpPublisher" runat="server" DataSourceID="sqlPublishers" DataTextField="PublisherName" DataValueField="PublisherID"></asp:DropDownList> 
            <asp:SqlDataSource ID="sqlPublishers" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID,PublisherName FROM Publishers"></asp:SqlDataSource>
        </div>
        <br />
        <div class="col-md-3">Genre:</div>
        <div class="col-md-9">
            <asp:DropDownList ID="drpGenre" runat="server" DataSourceID="sqlGenre" DataTextField="GenreName" DataValueField="GenreID"></asp:DropDownList> 
            <asp:SqlDataSource ID="sqlGenre" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID,GenreName FROM Genres"></asp:SqlDataSource>
        </div>
        <br />
        <div class="col-md-3">Word Count:</div>
        <div class="col-md-9">
            <asp:TextBox ID="txtWordCount" runat="server"></asp:TextBox>         
        </div>
        <br />
        <div class="col-md-12">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        </div>
    </div>
</asp:Content>
