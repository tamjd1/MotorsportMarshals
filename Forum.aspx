<%--
Title: Forum.aspx
Date Created: 24/01/2014
Author: Cory Hall
Description: This page links the users to the currently existing MMS forum
--%>

<%@ Page Title="Forum" Language="C#" MasterPageFile="~/HorizontalNav.Master" AutoEventWireup="true" CodeBehind="Forum.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content" style="text-align:center">
         Click <a href="http://www.motorsportmarshalling.on.ca/index.php/forum/index">here</a> to visit the existing forum!
    </div>
</asp:Content>
