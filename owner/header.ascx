﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="owner_header" %>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/chocolat.css" rel="stylesheet" />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css' />
<link href="//fonts.googleapis.com/css?family=Niconne" rel="stylesheet" />
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
                    <li class="hvr-bounce-to-bottom button"><a href="../index.aspx" class="scroll">Home<span class="sr-only">(current)</span></a></li>
                    <li class="hvr-bounce-to-bottom button"><a href="dashboard.aspx" class="scroll">Dashboard</a></li>
                    <li class="hvr-bounce-to-bottom button"><a href="add.aspx" class="scroll">Add-Hall</a></li>
                    <li class="hvr-bounce-to-bottom button"><a href="view-booked.aspx" class="scroll">Viwe-Booked</a></li>
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

