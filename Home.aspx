<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/HorizontalNav.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderId="MainContent" runat="server">
  
    <script type="text/javascript">
        $(function () {
            var imgsarray = [
                    './Images/banner1.jpg',
                    './Images/banner2.jpg',
                    './Images/banner3.jpg',
                    './Images/banner4.jpg',
                    './Images/banner5.jpg',
                    './Images/banner6.jpg',
                    './Images/banner7.jpg'];

            var counter = imgsarray.length;
            var $SlideShow = $('img[id$=SlideShow]');

            $SlideShow.attr('src', imgsarray[counter - 1]);
            setInterval(Slider, 5000);
            function Slider() {
                $SlideShow.fadeOut("slow", function () {
                    $(this).attr('src', imgsarray[(imgsarray.length++) % counter])
                    .fadeIn("slow");
                });
            }

            $("#banner").width(imgsarray[0].clienWidth);
            $("#banner").height(imgsarray[0].clienHeight);
            $("#banner").addClass("float-right");

        });
    </script>

    <div id="banner">
         <asp:Image ID="SlideShow" runat="server" />
    </div>

    <div>

    </div>

</asp:Content>