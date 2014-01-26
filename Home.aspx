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

    <div id="homecontent">
        <h1>Welcome to MMS</h1>

        <p>Motorsport Marshalling Services, a member club of Canadian Automobile Sport Clubs - Ontario Region (CASC), has been training 
            and organizing marshalling services for amateur and professional motorsport events since 1978. Most of our contracted events take 
            place on the main road <br /> course at Mosport International Raceway, a 4 kilometer road-racing course located about one hour's drive 
            north-east of Toronto Ontario. We also organize marshals for each summer's IndyCar street race in Toronto.</p>

        <p>Dressed in white, equipped with communications gear, flags, and fire extinguishers, our corner marshals are positioned at strategic 
            intervals <br /> around the race track to proactively promote a safe competition environment by:</p>

        <ul style="list-style-image: url('./images/flaglisticon.png');">
            <li>Inspecting the track and safety barriers for deficiencies prior to the start of daily on-track activities, and again continually during and between race sessions.</li>
            <li>Observing driving behaviour and condition of race vehicles continually during race sessions. </li>
            <li>Informing competitors, through flags or other signals, of potential on-track hazards ahead of them or other situations affecting the running of the current race session.</li>
            <li>Reporting to Race Control any potential problems with race track or vehicle conditions, driving behaviour, or other situations requiring decision or actions by race officials.</li>
            <li>Displaying flags or signals to competitors, or taking other actions, as directed by Race Control. </li>
        </ul>

        <p>Our marshals also have a reactive role to fulfill. When a crash or breakdown occurs on the race track, corner marshals are usually the first on the scene providing immediate first-level response by: </p>

        <ul style="list-style-image: url('./images/flaglisticon.png');">
            <li>Immediately displaying warning flags to competitors approaching the incident.</li>
            <li>Informing Race Control of the incident.</li>
            <li>Handling the incident with local corner marshals if it is possible to do so quickly and in safety, and if not, contacting Race Control to request second-level response (towing, fire/rescue, and/or medical) as necessary to handle the situation.</li>
        </ul>

        <p>Things happen fast with race traffic approaching 200 and even 300 kmph. Our members are trained to promote the safety of competitors, spectators, and their fellow marshals by instinctively reacting and making the right decisions under pressure, even while racing continues at their feet.</p>
    </div>

</asp:Content>