using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Collections.Generic;


public partial class owner_add : System.Web.UI.Page
{
    mydb db = new mydb();
    string st = "";
    DataTable dt;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
       add.Visible = false;
       pnl_up.Visible = false;
        if (Session["owner"] == null)
        {
            Response.Redirect("../login.aspx");
        }
        else if (Request.QueryString["id"]!=null)
        {
            string st = "select * from hall where id=" + Request.QueryString["id"] + "";
            dt = db.get_datatable(st);
            if(dt.Rows.Count>0)
            {
                search.Text = "Update";
                txt_name.Text = dt.Rows[0]["hall_name"].ToString();
                txt_owner.Text = dt.Rows[0]["owner_name"].ToString();
                txt_address.Text = dt.Rows[0]["address"].ToString();
                txt_area.Text = dt.Rows[0]["area"].ToString();
                txt_desc.Text = dt.Rows[0]["desc"].ToString();
                txt_mobile.Text = dt.Rows[0]["mobile"].ToString();
                txt_price.Text = dt.Rows[0]["price"].ToString();
            /*    dd_ac.Text = dt.Rows[0]["ac"].ToString();
                dd_cat.Text = dt.Rows[0]["cat"].ToString();
                dd_decor.Text=dt.Rows[0]["decoration"].ToString();
                dd_food.Text = dt.Rows[0]["foodtype"].ToString();
                dd_hall.Text = dt.Rows[0]["category"].ToString();
                dd_photo.Text = dt.Rows[0]["photo"].ToString();
                dd_pro.Text = dt.Rows[0]["projector"].ToString();
                dd_range.Text = dt.Rows[0]["range"].ToString();
                dd_sound.Text = dt.Rows[0]["sound"].ToString();*/

                fill_repeater();
                pnl_up.Visible = true;
            }

        }
        
    }
    protected void search_Click(object sender, EventArgs e)
    {
        if (search.Text == "Submit")
        {

            if (FileUpload1.HasFile)
            {
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Image/") + fileName);
                st = "insert into hall values('" + txt_name.Text + "','" + txt_owner.Text + "'," + Session["owner"] + ",'" + txt_address.Text + "','" + txt_area.Text + "','" + dd_hall.Text + "','" + fileName + "'," + txt_mobile.Text + ",'" + dd_range.Text + "'," + txt_price.Text + ",'" + txt_desc.Text + "')";
                x = db.ExeQuery(st);
                if (x > 0)
                {

                    Response.Write("<script>alert('Failed')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Failed')</script>");
                }
                txt_address.Text = txt_mobile.Text = txt_name.Text = txt_owner.Text = "";
               
            }
            main.Visible = false;
            add.Visible = true;
        }
        else
        {
           string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Image/") + fileName);
            st = "update hall set hall_name='" + txt_name.Text + "',owner_name='" + txt_owner.Text + "',address='" + txt_address.Text + "',area='" + txt_area.Text + "',category='" + dd_hall.Text + "',image='" + fileName + "',mobile='" + txt_mobile.Text + "',range='" + dd_range.Text + "',price='" + txt_price.Text + "' where id="+Request.QueryString["id"]+"";
            x = db.ExeQuery(st);
            if (x > 0)
            {
  Response.Write("<script>alert('Updated')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed')</script>");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        st = "select MAX(id) as hall_id from hall";
        dt = db.get_datatable(st);
        int h = Convert.ToInt16(dt.Rows[0]["hall_id"]);
        string str="insert into feature values('"+DropDownList1.Text+"',"+TextBox1.Text+","+h+")";
        int j=db.ExeQuery(str);
        if (j > 0)
        {
            Response.Write("<script>alert('added')</script>");
        }
        main.Visible = false;
        add.Visible = true;
    }


    public void fill_repeater()
    {
        st = "select * from feature where hall_id= " + Request.QueryString["id"] + "";
        db.fill_rptr_ret_sqlda(st, Repeater4);
      
         

    }
    protected void delete_Click(object sender, EventArgs e)
    {
        LinkButton del = sender as LinkButton;
        string delete = "delete from feature where hall_id=" + Request.QueryString["id"] + " and Id=" + del.CommandArgument;
        int d=db.ExeQuery(delete);
        if (d > 0) { Response.Write("<script>alert('Deleted')</script>"); fill_repeater(); }
    }
   
}