<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register Src="~/navbar.ascx" TagPrefix="uc1" TagName="navbar" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hall Reservation</title>
    <!-- meta tags -->
 
 
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //meta tags -->
    <!-- custom Theme files -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/chocolat.css" rel="stylesheet" />
    <!-- //custom Theme files -->
    <!-- js -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <!-- web-fonts -->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css' />
    <link href="//fonts.googleapis.com/css?family=Niconne" rel="stylesheet" />
    <!-- //web-fonts -->
</head>
<body>
    <form id="form1" runat="server">
        <!-- header -->
        <uc1:navbar runat="server" ID="navbar" />

        <!-- banner -->
        <div class="banner">
            <div class="container">
                <script src="js/responsiveslides.min.js"></script>
                <script>
                    // You can also use "$(window).load(function() {"
                    $(function () {
                        // Slideshow 4
                        $("#slider3").responsiveSlides({
                            auto: true,
                            pager: true,
                            nav: false,
                            speed: 500,
                            namespace: "callbacks",
                            before: function () {
                                $('.events').append("<li>before event fired.</li>");
                            },
                            after: function () {
                                $('.events').append("<li>after event fired.</li>");
                            }
                        });
                    });
                </script>
                <div id="top" class="callbacks_container">
                    <ul class="rslides" id="slider3">
                        <li>
                            <div class="banner-agileinfo">
                                <h3>WELCOME</h3>
                                <h4>Event planning & wedding coordination</h4>
                            </div>
                        </li>
                        <li>
                            <div class="banner-agileinfo">
                                <h3>WELCOME</h3>
                                <h4>Fallow new ideas for your wedding</h4>
                            </div>
                        </li>
                        <li>
                            <div class="banner-agileinfo">
                                <h3>WELCOME</h3>
                                <h4>We help you plan your special day</h4>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //banner -->
        <!-- about -->
        <div id="about" class="about">
            <div class="container">
                <h3 class="w3ls-tittle">Search Hall</h3>

                <div class="col-md-12 abt-right">
                    <h4>Enter Area and Select Hall Type to  Get Nearby Halls</h4>
                    <br />
                    <asp:TextBox ID="txt_search" Placeholder="Enter Area" runat="server" Height="50" Width="190" Font-Bold="True" Font-Italic="True" Font-Size="Large" BorderColor="#00CCFF"></asp:TextBox>
                    &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;
            <asp:DropDownList ID="dd_cat" runat="server" Font-Italic="True" Font-Size="Large" Font-Bold="True" Height="50" Width="190">

                <asp:ListItem>Marriage Hall </asp:ListItem>
                <asp:ListItem>Event Hall </asp:ListItem>
                <asp:ListItem>Conference Hall </asp:ListItem>
        
                <asp:ListItem>Exhibition Hall </asp:ListItem>


            </asp:DropDownList>
                    &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;
     <asp:Button Style="outline: none; color: #fff; font-size: 20px; padding: 8px 0; width: 22%; border: 2px solid #ff322e; background: #ff322e; transition: .5s all; -webkit-transition: .5s all; -moz-transition: .5s all; -o-transition: .5s all; -ms-transition: .5s all;"
         ID="search" runat="server" Text="SEARCH" OnClick="search_Click"></asp:Button>

                </div>


                <div class="clearfix"></div>
            </div>

        </div>
        <!-- //about -->
        <!-- services -->
        <div id="services" class="services">
            <div class="container">
                <h2 class="w3ls-tittle">Servicesces</h2>
                <div class="services-grids w3layouts-grids">
                    <div class="col-md-6 services-left">
                        <div class="serw3agile-grid">
                            <span class="hi-icon hi-icon-archive glyphicon glyphicon-check"></span>
                        </div>
                        <div class="ser-agiletop">
                            <h4>Best Quality</h4>

                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 services-left">
                        <div class="serw3agile-grid">
                            <span class="hi-icon hi-icon-archive glyphicon glyphicon-music"></span>
                        </div>
                        <div class="ser-agiletop">
                            <h4>Rocking Music</h4>

                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 services-left">
                        <div class="serw3agile-grid">
                            <span class="hi-icon hi-icon-archive glyphicon glyphicon-picture"></span>
                        </div>
                        <div class="ser-agiletop">
                            <h4>Photography</h4>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-6 services-left">
                        <div class="serw3agile-grid">
                            <span class="hi-icon hi-icon-archive glyphicon glyphicon-heart-empty"></span>
                        </div>
                        <div class="ser-agiletop">
                            <h4>Catering</h4>

                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                    </div>
            </div>
        </div>
        </div>
        <!-- //services -->
        <!-- gallery -->
        <div id="gallery" class="gallery">
            <div class="container">
                <h3 class="w3ls-tittle">Gallery</h3>
                <div class="gallery-wthreegrids">
                    <!-- EIGHTH EXAMPLE -->
                    <div class="view view-eighth">
                        <a href="images/g1.jpg" title="Image Title">
                            <img src="images/g1.jpg" alt="" />
                            <div class="w3lmask">
                                <h4>Event Planner </h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales, leo vitae facilisis facilisis tristiq elit mauris posuere.</p>
                            </div>
                        </a>
                    </div>
                    <div class="view view-eighth">
                        <a href="images/g2.jpg" title="Image Title">
                            <img src="images/g2.jpg" alt="" />
                            <div class="w3lmask">
                                <h4>Event Planner </h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales, leo vitae facilisis facilisis tristiq elit mauris posuere.</p>
                            </div>
                        </a>
                    </div>
                    <div class="view view-eighth">
                        <a href="images/g3.jpg" title="Image Title">
                            <img src="images/g3.jpg" alt="" />
                            <div class="w3lmask">
                                <h4>Event Planner </h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales, leo vitae facilisis facilisis tristiq elit mauris posuere.</p>
                            </div>
                        </a>
                    </div>
                    <div class="view view-eighth">
                        <a href="images/g4.jpg" title="Image Title">
                            <img src="images/g4.jpg" alt="" />
                            <div class="w3lmask">
                                <h4>Event Planner </h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales, leo vitae facilisis facilisis tristiq elit mauris posuere.</p>
                            </div>
                        </a>
                    </div>
                    <div class="view view-eighth">
                        <a href="images/g5.jpg" title="Image Title">
                            <img src="images/g5.jpg" alt="" />
                            <div class="w3lmask">
                                <h4>Event Planner </h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales, leo vitae facilisis facilisis tristiq elit mauris posuere.</p>
                            </div>
                        </a>
                    </div>
                    <div class="view view-eighth">
                        <a href="images/g6.jpg" title="Image Title">
                            <img src="images/g6.jpg" alt="" />
                            <div class="w3lmask">
                                <h4>Event Planner </h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales, leo vitae facilisis facilisis tristiq elit mauris posuere.</p>
                            </div>
                        </a>
                    </div>
                    <div class="view view-eighth">
                        <a href="images/g7.jpg" title="Image Title">
                            <img src="images/g7.jpg" alt="" />
                            <div class="w3lmask">
                                <h4>Event Planner </h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales, leo vitae facilisis facilisis tristiq elit mauris posuere.</p>
                            </div>
                        </a>
                    </div>
                    <div class="view view-eighth">
                        <a href="images/g8.jpg" title="Image Title">
                            <img src="images/g8.jpg" alt="" />
                            <div class="w3lmask">
                                <h4>Event Planner </h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales, leo vitae facilisis facilisis tristiq elit mauris posuere.</p>
                            </div>
                        </a>
                    </div>
                    <div class="view view-eighth">
                        <a href="images/g2.jpg" title="Image Title">
                            <img src="images/g2.jpg" alt="" />
                            <div class="w3lmask">
                                <h4>Event Planner </h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sodales, leo vitae facilisis facilisis tristiq elit mauris posuere.</p>
                            </div>
                        </a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <script src="js/jquery.chocolat.js"></script>
                <!-- light-box-files -->
                <script type="text/javascript">
                    $(function () {
                        $('.gallery a').Chocolat();
                    });
                </script>
            </div>
        </div>
        <!-- //gallery -->
        <!-- team -->

        <!-- //team -->
       
        <!-- footer -->
        <div class="footer">
            <div class="container">
                <div class="footer-left agileits-w3layouts">
                    <p>&copy; 2018 Hall Reservation</p>
                </div>
                <div class="footer-right">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //footer -->
        <script src="js/smoothscroll.min.js"></script>
        <!-- start-smooth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();

                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
                });
            });
        </script>
        <!-- //end-smooth-scrolling -->
        <!-- smooth-scrolling-of-move-up -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear' 
                };
                */

                $().UItoTop({ easingType: 'easeOutQuart' });

            });
        </script>
        <!-- //smooth-scrolling-of-move-up -->
        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/bootstrap.js"></script>
    </form>
</body>
</html>
