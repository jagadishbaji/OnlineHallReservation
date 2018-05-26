<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="owner_dashboard" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hall Reservation</title>
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/chocolat.css" rel="stylesheet"/>
<!-- //custom Theme files -->
<!-- js -->
    <link href="card.css" rel="stylesheet" />
<script src="../js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- web-fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>
<link href="//fonts.googleapis.com/css?family=Niconne" rel="stylesheet"/>
<!-- //web-fonts --> 
     <style type="text/css">
        /* More Features Section
--------------------------------*/
        #more-features
        {
            padding: 60px 0 60px 0;
        }

            #more-features .box
            {
                padding: 40px;
                margin-bottom: 10px;
                box-shadow: 0px 0px 30px rgba(73, 78, 92, 0.15);
                background: #fff;
                transition: 0.4s;
            }

            #more-features .icon
            {
                float: left;
            }

                #more-features .icon i
                {
                    color: #666666;
                    font-size: 40px;
                    transition: 0.5s;
                    line-height: 0;
                }

                    #more-features .icon i:before
                    {
                        background: #1dc8cd;
                        background: linear-gradient(45deg, #1dc8cd 0%, #55fabe 100%);
                        background-clip: border-box;
                        -webkit-background-clip: text;
                        -webkit-text-fill-color: transparent;
                    }

            #more-features h4
            {
                margin-left: 100px;
                font-weight: 700;
                margin-bottom: 15px;
                font-size: 18px;
            }

                #more-features h4 a
                {
                    color: #111;
                }

            #more-features p
            {
                font-size: 14px;
                margin-left: 100px;
                margin-bottom: 0;
                line-height: 24px;
            }

        @media (max-width: 767px)
        {
            #more-features .box
            {
                margin-bottom: 20px;
            }

            #more-features .icon
            {
                float: none;
                text-align: center;
                padding-bottom: 15px;
            }

            #more-features h4, #more-features p
            {
                margin-left: 0;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <!-- //web-fonts -->
<div class="header">
    <div class="container">
        <div class="header-w3left">
        </div>
        <div class="header-w3right">
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //header -->

<!-- navigation -->
<div class="navigation">
    <div class="container">
        <div class="agileits-logo">
            <h1><a href="index.html"><span>Hall</span>Reservation</a></h1>
        </div>
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="hvr-bounce-to-bottom button"><a href="../index.aspx" >Home<span class="sr-only">(current)</span></a></li>
                    <li class="hvr-bounce-to-bottom button"><a href="dashboard.aspx" >Dashboard</a></li>
                    <li class="hvr-bounce-to-bottom button"><a href="add.aspx" >Add-Hall</a></li>
                    <li class="hvr-bounce-to-bottom button"><a href="view-booked.aspx" >Viwe-Booked</a></li>
                </ul>
                <div class="social-icons">
                    <ul>
                        <li>
                            <h3>Welcome &nbsp;<%= (Session["Ownerlogin_details"] as Ownerlogin_details).fullname%> &nbsp;&nbsp;</h3>
                        </li>
                        <li><a class="glyphicon glyphicon-log-out" href="logout.aspx">Logout</a></li>
                    </ul>

                </div>
              
                <div class="clearfix"></div>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
    </div>
</div>
<!-- //navigation -->

    <form id="form1" runat="server">
      
 <br /><br />
   
			<h3 class="w3ls-tittle">Owner Dashboard</h3>
		   <!--==========================
      More Features Section
    ============================-->
                <section id="more-features" class="section-bg">
                    <div class="container">

                        <div class="section-header">
                            <h3 class="section-title">Your Halls</h3>
                            <br />
                        </div>

                        <div class="row">
                            <asp:Panel ID="pnl_rpt" runat="server">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <div class="col-lg-12">
                                            <div class="box" data-aos="fade-right">
                                                <div class="icon">
                                                    <image width="70%" height="60%" src="../Image/<%#Eval("image")%>" />
                                                </div>
                                                <h4 style="margin-left: 350px;"><%#Eval("hall_name")%></h4>
                                                <p style="margin-left: 350px;" class="description">
                                                    <span class="glyphicon glyphicon-map-marker"></span>
                                                    Address: <%#Eval("address")%><br />
                                                    <span class="glyphicon glyphicon-tag"></span>
                                                    Category :<%#Eval("category") %>
                                                    <br />
                                                    <span class="glyphicon glyphicon-user"></span>
                                                    Capasity :<%#Eval("range") %>
                                                    <br />
                                                    <br />
                                                </p>

                                                <h4 style="margin-left: 350px; color: #5AE5A8">Price/Day :<%#Eval("price") %></h4>
                                                <asp:LinkButton ID="edit" CommandArgument='<%#Eval("id") %>' OnClick="edit_Click" runat="server">Edit</asp:LinkButton>
                                                </p>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </asp:Panel>








                        </div>
                    </div>
                </section>
                <!-- #more-features -->

                    <div class="clearfix"></div>
                


        <script src="../js/smoothscroll.min.js"></script>
	<!-- start-smooth-scrolling -->
	<script type="text/javascript" src="../js/move-top.js"></script>
	<script type="text/javascript" src="../js/easing.js"></script>	
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
    <script src="../js/bootstrap.js"></script>
    </form>
</body>
</html>
