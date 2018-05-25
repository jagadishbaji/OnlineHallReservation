using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class owner_dashboard : System.Web.UI.Page
{
    mydb db = new mydb();
    string st = "";
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["owner"] == null)
        {
            Response.Redirect("../Login.aspx");
        }
        else
        {
            st = "select * from hall where owner_id=" + Session["owner"] + "";
            db.fill_rptr_ret_sqlda(st, Repeater1);
            if (Repeater1.Items.Count > 0)
                pnl_rpt.Visible = true;
            else
                pnl_rpt.Visible = false;
        }
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        LinkButton lnk=sender as LinkButton;
        Response.Redirect("add.aspx?id=" + lnk.CommandArgument + "");
    }
}