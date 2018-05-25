<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="owner_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hall Reservation</title>
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../css/chocolat.css" rel="stylesheet" />
    <!-- //custom Theme files -->
    <!-- js -->
    <script src="../js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <!-- web-fonts -->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css' />
    <link href="//fonts.googleapis.com/css?family=Niconne" rel="stylesheet" />
    <!-- //web-fonts -->

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
                        <li class="hvr-bounce-to-bottom button"><a href="../index.aspx">Home<span class="sr-only">(current)</span></a></li>
                        <li class="hvr-bounce-to-bottom button"><a href="dashboard.aspx">Dashboard</a></li>
                        <li class="hvr-bounce-to-bottom button"><a href="add.aspx">Add-Hall</a></li>
                        <li class="hvr-bounce-to-bottom button"><a href="view-booked.aspx">Viwe-Booked</a></li>
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
        <div id="about" class="about">
            <div class="container ">
                <h3 class="w3ls-tittle">Add New Hall</h3>
                <asp:Panel ID="main" runat="server">               <div style="margin-left: 140px;">
                    <div class="col-md-4">
                        <label>Hall Name : &nbsp;</label>
                        <asp:TextBox ID="txt_name" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Enter Characters Only" ForeColor="Red" ControlToValidate="txt_name" ValidationExpression="[a-z A-Z]+"></asp:RegularExpressionValidator>
                    </div>

                    <div class="col-md-4">
                        <label>Owner Name : &nbsp;</label>
                        <asp:TextBox ID="txt_owner" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter OwnerName" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_owner"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator2" Display="Dynamic" runat="server" ErrorMessage="Enter Characters Only" ForeColor="Red" ControlToValidate="txt_owner" ValidationExpression="[a-z A-Z]+"></asp:RegularExpressionValidator>

                    </div>
                    <div class="col-md-4">
                        <label>Hall Address : &nbsp;</label>


                        <asp:TextBox ID="txt_address" CssClass="form-control" TextMode="MultiLine" placeholder="Enter Address" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter address" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_address"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </div>

                    <div class="col-md-4">
                        <label>Area (Landmark) : &nbsp;</label>


                        <asp:TextBox ID="txt_area" CssClass="form-control" placeholder="Enter Area" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Area" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_area"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-4">
                        <label>Hall Category : &nbsp;</label>

                        <asp:DropDownList CssClass="form-control" ID="dd_hall" runat="server">
                            <asp:ListItem>Marriage Hall </asp:ListItem>
                            <asp:ListItem>Event Hall </asp:ListItem>
                            <asp:ListItem>Conference Hall </asp:ListItem>
                            <asp:ListItem>Party Hall  </asp:ListItem>
                            <asp:ListItem>Exhibition Hall </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <label>Upload Image  : </label>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <br />
                        <br />
                    </div>
                    <div class="col-md-4">
                        <label>Mobile : </label>

                        <asp:TextBox ID="txt_mobile" CssClass="form-control" placeholder="Enter Number" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Number" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_mobile"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator4" Display="Dynamic" runat="server" ErrorMessage="Enter 10 digits" ForeColor="Red" ControlToValidate="txt_mobile" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-md-4">
                        <label>Capasity : </label>



                        <asp:DropDownList CssClass="form-control" ID="dd_range" runat="server">
                                   <asp:ListItem>50</asp:ListItem>
                            <asp:ListItem>100-200</asp:ListItem>
                            <asp:ListItem>250-500</asp:ListItem>
                            <asp:ListItem>500-800</asp:ListItem>
                            <asp:ListItem>800-1000</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <label>Price : </label>

                        <asp:TextBox ID="txt_price" CssClass="form-control" placeholder="Enter price" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="g1" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter price" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_price"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ErrorMessage="Enter digits" ForeColor="Red" ControlToValidate="txt_price" ValidationExpression="[0-9]{5}"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                    </div>

                    <div class="col-md-4">
                        <label>Description</label>
                        <asp:TextBox ID="txt_desc" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </div>
                 <!--   <div class="col-md-4">
                        <label>Catering</label>
                        <asp:DropDownList CssClass="form-control" ID="dd_cat" runat="server">

                            <asp:ListItem>Available</asp:ListItem>
                            <asp:ListItem>Not-Available</asp:ListItem>
                            <asp:ListItem>Nothing </asp:ListItem>



                        </asp:DropDownList>

                    </div>
                    <br />
                    <div class="col-md-4">
                        <label>Decoration</label>
                        <asp:DropDownList CssClass="form-control" ID="dd_decor" runat="server">

                            <asp:ListItem>Available</asp:ListItem>
                            <asp:ListItem>Not-Available</asp:ListItem>
                            <asp:ListItem>Nothing </asp:ListItem>



                        </asp:DropDownList>
                        <br />
                        <br />
                    </div>

                    <div class="col-md-4">
                        <label>Food Type: &nbsp;</label>

                        <asp:DropDownList CssClass="form-control" ID="dd_food" runat="server">
                            <asp:ListItem>Veg </asp:ListItem>
                            <asp:ListItem>Non-Veg</asp:ListItem>
                            <asp:ListItem>Not-Available</asp:ListItem>

                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <label>Photography: &nbsp;</label>

                        <asp:DropDownList CssClass="form-control" ID="dd_photo" runat="server">
                            <asp:ListItem>Available </asp:ListItem>

                            <asp:ListItem>Not-Available</asp:ListItem>
                            <asp:ListItem>Nothing</asp:ListItem>

                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <label>Sound And Lightings: &nbsp;</label>

                        <asp:DropDownList CssClass="form-control" ID="dd_sound" runat="server">
                            <asp:ListItem>Available </asp:ListItem>

                            <asp:ListItem>Not-Available</asp:ListItem>
                            <asp:ListItem>Nothing</asp:ListItem>


                        </asp:DropDownList>
                        <br />
                    </div>
                    <div class="col-md-4">
                        <label>Projectors And Screeing: &nbsp;</label>

                        <asp:DropDownList CssClass="form-control" ID="dd_pro" runat="server">
                            <asp:ListItem>Available </asp:ListItem>

                            <asp:ListItem>Not-Available</asp:ListItem>
                            <asp:ListItem>Nothing</asp:ListItem>


                        </asp:DropDownList>
                       
                    </div>
                      <div class="col-md-4">
                        <label>AC: &nbsp;</label>

                        <asp:DropDownList CssClass="form-control" ID="dd_ac" runat="server">
                            <asp:ListItem>Available </asp:ListItem>

                            <asp:ListItem>Not-Available</asp:ListItem>
                            <asp:ListItem>Nothing</asp:ListItem>


                        </asp:DropDownList>
                       
                    </div>-->
                    
                  
                  <div class="col-md-6">
                      <br /><br /><br /><br />
                    <asp:Button Style="outline: none; color: #fff; font-size: 20px;  padding:8px 0; width: 22%; border: 2px solid #ff322e; background: #ff322e; transition: .5s all; -webkit-transition: .5s all; -moz-transition: .5s all; -o-transition: .5s all; -ms-transition: .5s all;"
                        ID="search" runat="server" ValidationGroup="g1" Text="Submit" OnClick="search_Click"></asp:Button>
                   </div>
                    </asp:Panel>
   <asp:Panel ID="add" runat="server">
       <h2>Add Additional Features to Hall</h2>
                        <div class="col-md-4">
                          <label>Select Services</label>  <asp:DropDownList ID="DropDownList1" runat="server">
                              <asp:ListItem>Catering</asp:ListItem>
                              <asp:ListItem>Decoration</asp:ListItem>
                              <asp:ListItem>AC</asp:ListItem>
                              <asp:ListItem>Sounds and Lightings</asp:ListItem>
                              <asp:ListItem>Projector and Screens</asp:ListItem>
                              <asp:ListItem>Photography</asp:ListItem>
                          
                                                          </asp:DropDownList>
                            </div>

       <div class="col-md-4"> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </div>
       <div class="col-md-4">
           <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button" /></div>
                       <br />   <br /></asp:Panel>




                
             
   <asp:Panel ID="pnl_up" runat="server">
    <div class="col-md-4">   <h2>Additional Features of Hall</h2></div>
       <br />
                     
                          <table class="table table-hover table-bordered">
                                        <thead>
                                            <tr>
                                                <td>Featurea</td>

                                                <td>Price</td>
                                                <td>Delete</td>
                                               
                                          
                                              
                                            </tr>
                                        </thead>
                                        <asp:Repeater ID="Repeater4" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                       <%# Eval("feature") %></td>
                                                    
                                                 <td>
                                                  <%#Eval("price") %></td>

                                                  <td>
                                                      <asp:LinkButton  ID="delete" OnClick="delete_Click" CommandArgument='<%#Eval("Id") %>' runat="server"><i class="	glyphicon glyphicon-remove"></i></asp:LinkButton>
                                                  </td>
                                                  
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>


                        

    
                    </asp:Panel>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
