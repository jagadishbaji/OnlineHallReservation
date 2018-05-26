<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" %>

<%@ Register Src="~/Customer/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hall Reservation</title>
    <script type="application/x-javascript">
		addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
	</script>
	<!-- Meta tags -->
	<!--stylesheets-->
	<link href="css/style.css" rel='stylesheet' type='text/css' media="all"/>
	<!--//style sheet end here-->
	<!-- Calendar -->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<!-- //Calendar -->
	<link href="css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
    <link href="css/pikaday.css" rel="stylesheet" />
	<!-- Time-script-CSS -->
    <style type="text/css">
        .body
        {
        
          background: url(../images/bg4.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    min-height: 100vh;}
        .btn
        { font-family: 'Roboto', sans-serif;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
        }
    </style>
	<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet"/>
</head>
<body >
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
  
        <div class="body">
	<div class="appointment-w3 ">
		
			<div class="personal">
				<h2>Hall Details</h2>
				<div class="main">
					<div class="form-left-w3l">
                        <label>Owner Name</label><asp:TextBox ID="name" ReadOnly="true" runat="server"></asp:TextBox>
						
					</div>
					<div class="form-right-w3ls ">
                         <label>Hall Name</label> <asp:TextBox ID="H_name" ReadOnly="true" runat="server"></asp:TextBox>
					
						<div class="clearfix"></div>
					</div>

				</div>
				<div class="main">
					<div class="form-left-w3l">
                         <label>Mobile</label>  <asp:TextBox ID="own_mob" ReadOnly="true" runat="server"></asp:TextBox>
					
						
					</div>
					<div class="form-right-w3ls ">
                         <label>Category</label> <asp:TextBox ID="Hall_cat" ReadOnly="true" runat="server"></asp:TextBox>
					
						
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
            <div class="personal">
				<h2>Personal Details</h2>
				<div class="main">
					<div class="form-left-w3l">
                       <label>Name</label>  <asp:TextBox ID="C_name" runat="server"></asp:TextBox>
						
					</div>
					<div class="form-right-w3ls ">
                       <label>Email</label>  <asp:TextBox ID="C_email" runat="server"></asp:TextBox>
					
						<div class="clearfix"></div>
					</div>

				</div>
				<div class="main">
					<div class="form-left-w3l">
                        <label>Mobile</label>  <asp:TextBox ID="C_mob" runat="server"></asp:TextBox>
					
						
					</div>
					<div class="form-right-w3ls ">
                    <label>Address</label>      <asp:TextBox ID="C_add" runat="server"></asp:TextBox>
					
						
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="information">
				<h3>Booking Details</h3>
				<div class="main">

					<div class="form-left-w3l">
					
					</div>
					<div class="form-right-w3ls">
						
					</div>
				</div>
				<div class="main">

				
				</div>
				<div class="main">
					<div class="form-left-w3l">
                    <span style="color:red">*</span>    <asp:TextBox Placeholder="From Date" ID="txt_date" runat="server"></asp:TextBox>
						   <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator6" runat="server"
                                        ErrorMessage="Enter Date" ValidationGroup="g1" ForeColor="Red" ControlToValidate="txt_date"></asp:RequiredFieldValidator>
						<div class="clear"></div>
					</div>
					<div class="form-right-w3ls">
                    <span style="color:red">*</span>    <asp:TextBox ID="txt_date1" Placeholder="To Date" runat="server"></asp:TextBox>
						
						   <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server"
                                        ErrorMessage="Enter Date" ValidationGroup="g1" ForeColor="Red" ControlToValidate="txt_date1"></asp:RequiredFieldValidator>
						<div class="clear"></div>
					</div>
				</div>
				
				</div>
			
			
			<div class="btnn">
				<asp:Button CssClass="btn" OnClick="Button1_Click" ID="Button1" ValidationGroup="g1" runat="server" Text="Submit" />
			</div>
		
	</div>
            </div>

	<!-- js -->
	<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
	<!-- //js -->
	<!-- Calendar -->
	<script src="js/jquery-ui.js"></script>
	<script>
	    $(function () {
	        $("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
	    });
	</script>
	<!-- //Calendar -->
        <script src="js/pikaday.jquery.js"></script>
        <script src="js/pikaday.js"></script>
	<!-- Time -->
	<script type="text/javascript" src="js/wickedpicker.js"></script>
	<script type="text/javascript">
	    $('.timepicker,.timepicker1').wickedpicker({ twentyFour: false });
	</script>

        <script type="text/javascript">

            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 1; //January is 0!
            var yyyy = today.getFullYear();
            today = mm + '/' + dd + '/' + yyyy;
            var picker = new Pikaday(
             {

                 field: document.getElementById('txt_date'),
                 firstDay: 1,
                 minDate: new Date(today),
                 maxDate: new Date('2018-12-30'),
                 yearRange: [1950, 1995],
                 dateFormat: 'DD-MM-YYYY'
             });
        </script>
         <script type="text/javascript">

             var today = new Date();
             var dd = today.getDate();
             var mm = today.getMonth() + 1; //January is 0!
             var yyyy = today.getFullYear();
             today = mm + '/' + dd + '/' + yyyy;
             var picker = new Pikaday(
              {

                  field: document.getElementById('txt_date1'),
                  firstDay: 1,
                  minDate: new Date(today),
                  maxDate: new Date('2018-12-30'),
                  yearRange: [1950, 1995],
                  dateFormat: 'DD-MM-YYYY'
              });
        </script>
	<!-- //Time -->
    </form>
</body>
</html>
