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

public partial class Customer_Details : System.Web.UI.Page
{
    mydb db = new mydb();
    string st = "";
    DataTable dt;
    static int g_t=0;
    string cat = "";
    string feature  ;
    String j;
    static int total=0,price=0;
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Customer"] != null)
        {
            id = Convert.ToInt16(Request.QueryString["id"].ToString());
            st = "select * from hall where id=" + id + "";
              dt = db.get_datatable(st);
               if (dt.Rows.Count > 0)
               {
                  
                 
                 
                   cat = dt.Rows[0]["area"].ToString();

               }
              

            db.fill_rptr_ret_sqlda(st, Repeater1);
            if (Repeater1.Items.Count > 0)
                pnl_rpt.Visible = true;
            else
                pnl_rpt.Visible = false;

            string s = "select * from hall inner join booking on hall.id=booking.hall_id  where hall.id=" + id + "";
            db.fill_rptr_ret_sqlda(s, dd_rpt);
            if (dd_rpt.Items.Count > 0)
                panel2.Visible = true;
            else
                panel2.Visible = false;

            if (!IsPostBack)
            {
                fill();

            }
            
        }
        else
        {
            Response.Redirect("../Login.aspx");
        }
    }
    
   

    public void fill()
    {
        st = "select * from feature where hall_id= " + Request.QueryString["id"] + "";
        db.fill_rptr_ret_sqlda(st, Repeater4);
        if (Repeater4.Items.Count > 0)
            pnl_up.Visible = true;
        else
            pnl_up.Visible = false;
    }
  

    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
       
            //      LinkButton l = sender as LinkButton;
            st = "select price from hall where id=" + id + "";
            dt = db.get_datatable(st);
            int p = Convert.ToInt16(dt.Rows[0]["price"]);
            total = 0;
            foreach (RepeaterItem item in Repeater4.Items)
            {
                CheckBox cb = (CheckBox)item.FindControl("cbox");
                LinkButton lnk_feature = (LinkButton)item.FindControl("Feture");
                LinkButton lnk = (LinkButton)item.FindControl("LinkButton2");
                if (cb.Checked)
                {
                    Label lbl_it_price = (Label)item.FindControl("Lable2");
                    price = Convert.ToInt16(lnk.CommandArgument);
                    // price = Convert.ToInt16(l.CommandArgument);
                    total += price;
                    feature += "/" + lnk_feature.CommandArgument;


                }
            }
            Label1.Text = total.ToString();
           g_t = p + total;
           Label2.Text = g_t.ToString();
           Label3.Text = feature.ToString();
           Session["Selected"] = feature.ToString();   
      
 
    }
   
   protected void cbox_CheckedChanged(object sender, EventArgs e)
    {
 /*       //      LinkButton l = sender as LinkButton;
        st = "select price from hall where id=" + id + "";
        dt = db.get_datatable(st);
        int p = Convert.ToInt16(dt.Rows[0]["price"]);
        foreach (RepeaterItem item in Repeater4.Items)
        {
            CheckBox cb = (CheckBox)item.FindControl("cbox");
            LinkButton lnk = (LinkButton)item.FindControl("LinkButton2");
            if (cb.Checked)
            {
                Label lbl_it_price = (Label)item.FindControl("Lable2");
                price = Convert.ToInt16(lnk.CommandArgument);
                // price = Convert.ToInt16(l.CommandArgument);
                total +=   price;
              
                Label1.Text = total.ToString();
            }
          
           
        }
      */ 
 
    }
   protected void book_Click(object sender, EventArgs e)
   {
      
       Response.Redirect("book.aspx?id=" + Request.QueryString["id"] + "&total=" + g_t + "");
 
   }
}