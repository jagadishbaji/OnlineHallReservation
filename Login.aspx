<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <!-- App Favicon -->
       <title>Hall Reservation</title>
        <!-- App CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

</head>
<body>
    <form id="form1" runat="server">
     <div class="text-center logo-alt-box">
            <a href="index.html" class="logo"><span>Online Hall <span>Reservation</span></span></a>
            <h5 class="text-muted m-t-0">User Login Form</h5>
        </div>

        <div class="wrapper-page">

        	<div class="m-t-30 card-box">
                <div class="text-center">
                    <h4 class="text-uppercase font-bold m-b-0">Sign In</h4>
                </div>
                <div class="panel-body">
                   
						<div class="form-group ">
                            <div class="col-xs-12">
                               <asp:TextBox ID="txt_emailid" runat="server" class="form-control" Placeholder="Email ID"></asp:TextBox>
                            <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter EmailID" ControlToValidate="txt_emailid"></asp:RequiredFieldValidator>
  <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid EmailId" ForeColor="Red" Display="Dynamic" ControlToValidate="txt_emailid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
					 <br />

                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                           	<asp:TextBox ID="txt_password" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>                            
                                </div></div>

                    <div class="form-group">
                                            <br />                <br />                   <br />   <br />                    <br />
                         <div class="col-xs-12">
                            <label>Hall Owner :</label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="owner" runat="server" Checked="true" Text="Yes" GroupName="g" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton3" Text="No" runat="server" GroupName="g" />
                            <br />
                        </div>
                    </div>

						<div class="form-group text-center m-t-30">
                            <div class="col-xs-12">
                                <br />
                                <asp:LinkButton  ID="login" ValidationGroup="g1" class="btn btn-custom btn-bordred btn-block waves-effect waves-light text-uppercase" runat="server" OnClick="login_Click" >Sign</asp:LinkButton>
    
                               
                            </div>
                        </div>
                    <br />
                    
                                  <br />
                    <br />
                                        <br />
                    <a href="index.aspx">Home</a>
                        


                        

				

                </div>
            </div>
            <!-- end card-box -->

			<div class="row">
				<div class="col-sm-12 text-center">
					<p class="text-muted">Don't have an account? <a href="sign-up.aspx" class="text-primary m-l-5"><b>Sign Up</b></a></p>
				</div>
			</div>

        </div>
        <!-- end wrapper page -->
<script>
    var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/jquery.nicescroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

        
        <script src="assets/js/modernizr.min.js"></script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '../../../www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-77043005-1', 'auto');
        ga('send', 'pageview');

    </script>
    </form>
</body>
</html>
