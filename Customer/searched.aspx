<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searched.aspx.cs" Inherits="searched" %>

<%@ Register Src="~/Customer/header.ascx" TagPrefix="uc1" TagName="header" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hall Reservation</title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../owner/card.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />

        <!-- services -->

        <div class="container">

            <div class="services-top-grids">





                <!--==========================
      More Features Section
    ============================-->
                <section id="more-features" class="section-bg">
                    <div class="container">

                        <div class="section-header">
                            <h3 class="section-title">Searched Results</h3>
                            <br />
                        </div>

                        <div class="row">
                            <asp:Panel ID="pnl_rpt" runat="server">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <div class="col-lg-12">
                                            <div class="box" data-aos="fade-right">
                                                <div class="icon">
                                                    <image width="100%" height="60%" src="../Image/<%#Eval("image")%>" />
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

                                                <h4 style="margin-left: 350px; color: #5AE5A8">Price :<%#Eval("price") %></h4>
                                                <div style="margin-top:-37px;  margin-left:540px;"><asp:LinkButton  ID="details" CommandArgument='<%#Eval("id") %>' OnClick="details_Click" runat="server"> Details</asp:LinkButton>
                                                </div>

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
            </div>
            <br />
            <br />
          
        </div>

        <!-- //services -->
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
    </form>
</body>
</html>
