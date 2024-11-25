<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="masterpage3.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    
    <!--Fading Slideshow with Numbered Dots -->
    <head>
        <style>

            /* Slideshow container */
            .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
            }


            /* Caption text */
            .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
            }


            /* Number text (1/3 etc) */
            .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
            }


            /* The dots/bullets/indicators */
            .dot {
            height: 13px;
            width: 13px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
            }


            .active {
            background-color:#D1D0CE;
            }


            /* Fading animation */
            .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
            }


            @-webkit-keyframes fade {
            from {opacity: .4} 
            to {opacity: 1}
            }

            @keyframes fade {
            from {opacity: .4} 
            to {opacity: 1}
            }

            /* On smaller screens, decrease text size */
            @media only screen and (max-width: 300px) {
            .text {font-size: 11px}
            }
        </style>
    </head>

    <body>
        <div class="slideshow-container">


            <div class="mySlides fade">
                <div class="numbertext">1 / 3
                </div>
                <img src="410.jpg" style="width: 1100px; height: 160px;"/>
                

            </div>


            <div class="mySlides fade">
                <div class="numbertext">2 / 3
                </div>
                <img src="408.jpg" style="width: 1100px; height: 160px;"/>
               
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 3
                </div>
                <img src="409.jpg" style="width: 1100px; height: 160px;"/>

            </div>


        </div>


        <div style="text-align:center">
            <span class="dot">
            </span> 
            <span class="dot">
            </span> 
            <span class="dot">
            </span> 
        </div>


        <script>
            var slideIndex = 0;
            showSlides();

            function showSlides()
            {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++)
                {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) { slideIndex = 1 }
                for (i = 0; i < dots.length; i++)
                {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                setTimeout(showSlides, 2000); // Change image every 2 seconds
            }
        </script>
     </body>




    <!-- Marquee Section -->
    <div class="marquee">
        <p>Welcome To Shopping Website</p>
    </div>
    <style>
        .marquee {
            width: 1587px;
            overflow: hidden;
            white-space: nowrap;
        }
        .marquee p {
            display: inline-block;
            font-family: Algerian;
            font-size: 24px;
            color: red;
            margin: 0;
            padding: 0;
            animation: marquee 10s linear infinite;
        }
        @keyframes marquee {
            0% { transform: translateX(100%); }
            100% { transform: translateX(-100%); }
        }
    </style>

    

    <marquee direction="left" scrollamount="10">
    <div class="advertisement">
        <!-- Add your ad code here -->
        <!-- Replace this comment with your actual ad code -->
        <img src="Dell 14 Laptop.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
        <img src="Infinix Zero 30 5G.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
        <img src="Lenovo IdeaPad.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
        <img src="OPPO Find X2.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
        <img src="ASUS Vivobook 16.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
        <img src="2.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
    </div></marquee>



    <style>

        /* Change the background color of the body */
        body 
        {
            background-color: #A0D5E8; /* Set your desired background color */
        }
        .advertisement img {
        margin-right: 10px; /* Adjust horizontal spacing between images */
        width: 200px; /* Adjust width of the images */
        height: auto; /* Maintain aspect ratio */
        background-color: #FFFFFF; /* Set background color */
        border: 1px solid #CCCCCC; /* Add a border */
        border-radius: 4px; /* Add border radius */
        padding: 5px; /* Add padding */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Add shadow */
        }
    </style>



    
    <marquee direction="right" scrollamount="10">
    <div class="advertisement">
        <img src="OnePlus 12R.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
        <img src="Redmi Note 13 5G.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
        <img src="HP ENVY AMD Ryzen.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
        <img src="HP ZBook Firefly.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
        <img src="ASUS TUF Gaming F15.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
        <img src="1.jpg" alt="Advertisement" style="width: 300px; height: 200px;" />
    </div></marquee>



    <style>
        .advertisement img {
    margin-right: 10px; /* Adjust horizontal spacing between images */
    width: 200px; /* Adjust width of the images */
    height: auto; /* Maintain aspect ratio */
    background-color: #FFFFFF; /* Set background color */
    border: 1px solid #CCCCCC; /* Add a border */
    border-radius: 4px; /* Add border radius */
    padding: 5px; /* Add padding */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Add shadow */
    }
    </style>




    <div class="advertisement-video">
        <video controls autoplay loop muted>
            <!-- Add the source of your video file -->
            <source src="video.mp4" type="video/mp4">
            <!-- Add other video sources if needed (e.g., different formats for compatibility) -->
            <!-- <source src="your-advertising-video.webm" type="video/webm"> -->
            <!-- <source src="your-advertising-video.ogg" type="video/ogg"> -->
            <!-- Add a fallback message if the browser doesn't support HTML5 video -->
            Your browser does not support the video tag.
        </video>
    </div>


    <style>
        .advertisement-video {
        max-width: 400px; /* Set maximum width for the video container */
        float: right; /* Align the video container to the right */
        margin-top: 20px; /* Adjust top margin as needed */
        margin-left: 20px; /* Add left margin to create space between video and other content */
        }

        .advertisement-video video {
        width: 100%; /* Make the video fill its container */
        display: block; /* Ensure video is displayed as a block element */
        border-radius: 8px; /* Add border-radius for rounded corners */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add box shadow for a subtle effect */
        }
    </style>

    
        <!-- Inserting current date and time -->
        <div>
            <p style="font-weight: bold; color: blue; margin: 0;"><%= DateTime.Now.ToString("hh:mm tt") %></p>
            <p style="font-weight: bold; color: red; margin: 0;"><%= DateTime.Now.ToString("dd/MM/yyyy") %></p>
        </div>
</asp:Content>

