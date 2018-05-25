<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view-booking.aspx.cs" Inherits="Customer_view_booking" %>

<%@ Register Src="~/Customer/header.ascx" TagPrefix="uc1" TagName="header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hall Reservation</title>
      <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../owner/card.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <uc1:header runat="server" ID="header" />
   <!-- services -->
        <div style="margin-top: -100px;" class="service">
            <div class="container">
                <br /><br /><br /><br /><br />
                <div class="services-top-grids">


                    <asp:Panel ID="pnl_rpt" runat="server">
                        <table class="table table-hover table-bordered">
                                        <thead>
                                            <tr>
                                                <td>Hall Nname</td>

                                                <td>Owner Mobile Number</td>
                                                <td>Category</td>
                                                <td>From Date </td>
                                                <td>To Date</td>
                                                <td>Additional Features</td>
                                                <td>Grand Total</td>
                                                <td>Delete</td>
                                            </tr>
                                        </thead>
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("hall_name") %></td>
                                                    <td><%# Eval("owner_mob") %></td>
                                                    <td><%# Eval("category") %></td>
                                                    <td><%# Eval("from") %></td>
                                                    <td><%# Eval("to") %></td>
                                                     <td><%# Eval("features") %></td>
                                                     <td><%# Eval("total") %></td>

                                                    <td>
                                                            <asp:LinkButton ID="lnk_delete" ToolTip="Delete" CommandArgument='<%# Eval("hall_id") %>' OnClick="lnk_delete_Click"  runat="server"><i class="glyphicon glyphicon-trash"></i></asp:LinkButton>
                                                        </td>

                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>
                    </asp:Panel>


                    <div class="clearfix"></div>
                </div><br /><br />
               
                <div class="services-bottom-grids">

                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- //services -->
    </form>
</body>
</html>
