<%--
Title: DevelopmentLog.aspx
Date Created: 24/01/2014
Author: Cory Hall
Description: This page records the technical details of the website as it is developed. 
    This page is updated in an ongoing fashion as work are added or edited. 
--%>


<%@ Page Title="" Language="C#" MasterPageFile="~/HorizontalNav.Master" AutoEventWireup="true" CodeBehind="DevelopmentLog.aspx.cs" Inherits="WebApplication1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="content">
        <h1>Development Log</h1>
        <h4>Theme Choices</h4>

        <p>
           We went with a checkered flag theme. The colours consisted of mostly black and white, which 
           seems a little bit plain, but we did a couple of things to offset that. First, we 
           incorporated a checkered image into both the header and footer. Second, we used a deep red 
           menu that fades into black where the menu text is located. On link hover and active, we decided
           to use yellow and green. Lastly, we added a colourful logo 
           which we felt would stand out greatly in contrast to the black and white elements. Overall, 
           we feel that our theme can be described as "slick", which we felt was fairly synonymous with 
           racing in general.
        </p>

        <h4>Page Overview</h4>
        <p>
            We decided to use the ASP Menu control for our navigation bar due to its simplicity of use 
            as well as ease of maintenance during future development. If we need to add more links to
            the navigation bar, we simple have to go to Web.sitemap file and add them there and they will
            appear on each master page that is using the Menu control. <br /> <br />

            Home: The home page is fairly basic. It includes the information from the original site that 
            was required, along with an image slideshow consisting of racing-related images. We implemented 
            this slideshow with a JQuery script that displays images on a timed interval. We felt that the 
            existing "list" information regarding the various marshal responsibilities would be easier to 
            read and understand if we displayed them in list format. However, we felt that the standard 
            bullets were pretty dull so added a checkered flag image in place of them. <br /> <br />

            Apply: The content section of this page is currently empty. <br /> <br />

            Forum: This menu option links to the already existing forum located on the original site. <br /> <br />

            NewMarshals: Similar to the home page, the NewMarshals page consists mostly of the required 
            information from the original site. However, we changed the layout a little bit. We incorporated 
            the same checkered flag style bullets when listing the MMS membership benefits. We also felt that 
            the school dates should be in closer proximity to the section that starts off with "Think you might 
            want to to try it?", as opposed to being displayed before the user reads what an MMS membership 
            actually has to offer. In order to emphasize those dates, we included a neatly formatted border and 
            underlined the title. <br /> <br />

            Registration: The content section of this page is currently empty aside from a link to the "Apply"
            page.
        </p>

        <p>Browser Oddities: N/A</p>

        <h4 style="text-decoration:underline">Major Technical Issues</h4>

        <p>2:10pm 01/26/2014: Fixed an issue where the checkered flag image was no longer displaying in the header
            or footer. The issue was that the filepath had been inadvertently changed after introducing a theme. We 
            moved the image to a more appropriate location to fix this problem.
        </p>
        <p>4:37pm 01/26/2014: Fixed an issue where content was overlapping the footer and even going beneath it
            on smaller screens. The fix involved changing a style attribute in the #body ID from height to min-height.
        </p>
    </div>
</asp:Content>
