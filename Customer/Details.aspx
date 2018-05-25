<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Customer_Details" %>

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
                width: 55em;
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
                    <div class="col-lg-12">
                        <div class="box" data-aos="fade-right">
                            <asp:Panel ID="pnl_rpt" runat="server">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>


                                        <div class="icon">
                                            <image width="750px" height="300px" src="../Image/<%#Eval("image")%>" />
                                            <br />
                                            <br />
                                        </div>
                                        <h4>About: <%#Eval("hall_name")%></h4>
                                        <p style="font-size: 20px;" class="description">

                                            <%#Eval("desc") %>
                                            <br />
                                            <br />
                                        </p>
                                        <h3>Hall Information</h3>
                                        <p style="font-size: 20px;" class="description">
                                            <span class="glyphicon glyphicon-map-marker"></span>
                                            Address: <%#Eval("address")%><br />
                                            <span class="glyphicon glyphicon-tag"></span>
                                            Category :<%#Eval("category") %>
                                            <br />
                                            <span class="glyphicon glyphicon-user"></span>
                                            Capasity :<%#Eval("range") %>
                                            <br />
                                            <br />
                                            <p style="color: green; font-size: 30px;">Price: <%#Eval("price") %></p>
                                            *(with basic facilities)

                                        </p>

                                        <br />

                                        <h3>Owner Information</h3>
                                        <br />
                                        <p style="font-size: 20px;" class="description">
                                            <span class="glyphicon glyphicon-user"></span>
                                            Name: <%#Eval("owner_name")%><br />
                                            <br />
                                            <span class="glyphicons glyphicons-phone"></span>
                                            Mobile :<%#Eval("mobile") %>
                                            <br />

                                            <br />
                                            <br />
                                        </p>

                                    </ItemTemplate>
                                </asp:Repeater>
                            </asp:Panel>
                            <br />
                            <h3>Hall Booked Dates</h3>
                            <br />
                            <asp:Panel ID="panel2" runat="server">
                                <asp:Repeater ID="dd_rpt" runat="server">
                                    <ItemTemplate>
                                        <p style="font-size: 20px; color: red;" class="description">
                                            <span class="glyphicon glyphicon-calender"></span>

                                            From : &nbsp;&nbsp;&nbsp;<%#Eval("from") %> 
                                                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                                   To:&nbsp;&nbsp;&nbsp;<%#Eval("to") %>
                                            <br />
                                            <br />

                                        </p>
                                    </ItemTemplate>

                                </asp:Repeater>
                            </asp:Panel>






                            <asp:Panel ID="pnl_up" runat="server">
                                <div class="col-md-4">
                                    <h2>Additional Features of Hall</h2>
                                </div>
                                <br />

                                <table class="table table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <td>Features</td>

                                            <td>Price</td>
                                            <td>Take</td>



                                        </tr>
                                    </thead>
                                    <asp:Repeater ID="Repeater4" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:LinkButton ID="Feture" CommandArgument='<%# Eval("feature") %>' runat="server"><%# Eval("feature") %></asp:LinkButton> </td>

                                                <td>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%#Eval("price") %>'><%#Eval("price") %></asp:LinkButton></td>


                                                <td>
                                                    <asp:CheckBox ID="cbox"  runat="server" />
                                                </td>

                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </table>


                                   <div  class="col-md-12">
                                <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server" Font-Bold="True" Font-Size="Larger">Check</asp:LinkButton>
                             <br />
                                 <label>Additional Total:</label>   <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Larger" ForeColor="#00CC99"></asp:Label>
                              <br />  <br />
                                       <label>Grand Total :</label> <asp:Label ID="Label2" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#00CC99" runat="server"></asp:Label> <br />  </div>
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>

                           

                            <asp:LinkButton Style="outline: none; color: #fff; font-size: 20px; padding: 8px 0; width: 22%; border: 2px solid #47F498; background: #47F498; transition: .5s all; -webkit-transition: .5s all; -moz-transition: .5s all; -o-transition: .5s all; -ms-transition: .5s all;" ID="book" OnClick="book_Click" runat="server">Book Now</asp:LinkButton>
                            &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;
                                        <asp:Button Style="outline: none; color: #fff; font-size: 20px; padding: 8px 0; width: 22%; border: 2px solid #ff322e; background: #ff322e; transition: .5s all; -webkit-transition: .5s all; -moz-transition: .5s all; -o-transition: .5s all; -ms-transition: .5s all;" ID="backButton" runat="server" Text="Back"
                                            OnClientClick="JavaScript:window.history.back(1);return false;"></asp:Button>
                        </div>
                    </div>
                </div>






            </div>
        </section>
        <!-- #more-features -->

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

        <script type="text/javascript">
            navigateurl = "javascript:history.go(-1);"
        </script>
    </form>
</body>
</html>
