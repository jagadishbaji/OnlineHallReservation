using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Drawing;
using System.IO;

using System.Xml;

public partial class searched : System.Web.UI.Page
{
    mydb db = new mydb();
    string st = "";
    DataTable dt;
    string add = "";
    string cat = "";
   HiddenField hf_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Customer"]!= null)
        {
            add = Request.QueryString["location"].ToString();
            cat = Request.QueryString["category"].ToString();
            st = "select * from hall where area = " + add + " and category =" + cat + "";
            /*   dt = db.get_datatable(st);
               if (dt.Rows.Count > 0)
               {
                   string ur = "~/Image/";
                   Image1.ImageUrl = ur + dt.Rows[0]["image"].ToString();
                   name.Text = dt.Rows[0]["hall_name"].ToString();
                   Label1.Text = dt.Rows[0]["owner_name"].ToString();
                   Label2.Text = dt.Rows[0]["address"].ToString();

               }
               else
               {
                   Label3.Text = "Such Hall Not Found";
               }*/

            db.fill_rptr_ret_sqlda(st, Repeater1);
            if (Repeater1.Items.Count > 0)
                pnl_rpt.Visible = true;
            else
                pnl_rpt.Visible = false;

        }
        else
        {
            Response.Redirect("../Login.aspx");
        }
    }


    protected void details_Click(object sender, EventArgs e)
    {
        LinkButton lnk = sender as LinkButton;
            Response.Redirect("Details.aspx?id="+lnk.CommandArgument+"");
    }
}