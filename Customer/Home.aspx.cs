using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Customer"] == null)
        {
            Response.Redirect("../Login.aspx");
        }
    }
    protected void search_Click(object sender, EventArgs e)
    {
        Response.Redirect("searched.aspx?location='" + txt_search.Text + "'&category='" + dd_cat.Text + "'");
    }
}