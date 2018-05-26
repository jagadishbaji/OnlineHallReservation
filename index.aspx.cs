using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class index : System.Web.UI.Page
{
    mydb db = new mydb();
    string st = "";
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void search_Click(object sender, EventArgs e)
    {
        Response.Redirect("customer/searched.aspx?location='"+txt_search.Text+"'&category='"+dd_cat.Text+"'");
    }
}