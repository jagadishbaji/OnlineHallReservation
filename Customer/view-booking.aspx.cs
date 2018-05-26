using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer_view_booking : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Customer"] == null)
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
        st = "select * from booking where customer_id=" + Session["customer"] + "";
        db.fill_rptr_ret_sqlda(st, Repeater1);
        if (Repeater1.Items.Count > 0)
            pnl_rpt.Visible = true;
        else
            pnl_rpt.Visible = false;

    }
    protected void lnk_delete_Click(object sender, EventArgs e)
    {
        LinkButton lnk = sender as LinkButton;
        st = "delete from booking where customer_id="+Session["customer"]+" and hall_id=" + lnk.CommandArgument+"";
        db.ExeQuery(st);
        Response.Write("<script>alert('Hall Deleted')</script>");
        fill_repeater();
    }
}