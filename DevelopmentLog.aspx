<%@ Page Title="" Language="C#" MasterPageFile="~/HorizontalNav.Master" AutoEventWireup="true" CodeBehind="DevelopmentLog.aspx.cs" Inherits="WebApplication1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="content">
        <h1>Development Log</h1>
        <h5>Overview</h5>

        <p style="margin-right:10px">Theme choices:<br /> <br />
           We went with a checkered flag theme. The colours consisted of mostly black and white, which 
           seems a little bit plain, but we did a couple of things to offset that plainness. First, we 
           incorporated a checkered image into both the header and footer. Second, we used a deep red 
           menu that fades into black where the menu text is located. Lastly, we added a colourful logo 
           which we felt would stand out greatly in contrast to the black and white elements. Overall, 
           we feel that our theme can be described as "slick", which we felt was fairly synonymous with 
           racing in general.
        </p>

        <p>Pages: <br /> <br />
            Home: The home page is fairly basic. It includes the information from the original site that 
            was required, along with an image slideshow consisting of racing-related images. We implemented 
            this slideshow with a JQuery script that displays images on a timed interval. We felt that the 
            existing "list" information regarding the various marshal responsibilities would be easier to 
            read and understand if we displayed them in list format. However, we felt that the standard 
            bullets were pretty dull so added a checkered flag image in place of them. <br /> <br />

            Apply: N/A <br /> <br />

            Contact: ?? <br /> <br />

            Forum: This menu option links to the already existing forum located on the original site. <br /> <br />

            NewMarshals: Similar to the home page, the NewMarshals page consists mostly of the required 
            information from the original site. However, we changed the layout a little bit. We incorporated 
            the same checkered flag style bullets when listing the MMS membership benefits. We also felt that 
            the school dates should be in closer proximity to the section that starts off with "Think you might 
            want to to try it?", as opposed to being displayed before the user reads what an MMS membership 
            actually has to offer. In order to emphasize those dates, we included a neatly formatted border and 
            underlined the title. <br /> <br />

            Registration: N/A
        </p>

        <p>Browser Oddities: N/A</p>
    </div>
</asp:Content>
