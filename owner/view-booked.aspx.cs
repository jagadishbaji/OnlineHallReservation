using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class owner_view_booked : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["owner"] == null)
        {
            Response.Redirect("../Login.aspx");
        }
        else
        {
            fill_repeater();
        }
    }
    public void fill_repeater()
    {
        st = "select * from booking where owner_id=" + Session["owner"] + "";
        db.fill_rptr_ret_sqlda(st, Repeater1);
        if (Repeater1.Items.Count > 0)
            pnl_rpt.Visible = true;
        else
            pnl_rpt.Visible = false;

    }
}