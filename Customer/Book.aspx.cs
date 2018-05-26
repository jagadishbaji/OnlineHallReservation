using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Text;

public partial class Book : System.Web.UI.Page
{
    string st = "";
    DataTable dt;
    int own_id;

    mydb db = new mydb();
    int id;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Customer"] == null)
        {
            Response.Redirect("../login.aspx");
        }
        else
        {
            // id = Convert.ToInt16(Request.QueryString["id"]);
            details();
            personal_details();

        }



    }
    public void details()
    {
        st = "Select * from hall where id=" + Request.QueryString["id"] + "";
        dt = db.get_datatable(st);
        if (dt.Rows.Count > 0)
        {
            name.Text = dt.Rows[0]["owner_name"].ToString();
            H_name.Text = dt.Rows[0]["hall_name"].ToString();
            own_mob.Text = dt.Rows[0]["mobile"].ToString();
            Hall_cat.Text = dt.Rows[0]["category"].ToString();
            own_id = Convert.ToInt32(dt.Rows[0]["owner_id"].ToString());

        }
        /*st = "select email   from owner inner join hall on hall.owner_id=owner.id where hall.Id=" + Request.QueryString["id"] + " ";
        db.get_datatable(st);
        if (dt.Rows.Count > 0)
        {
            emailid = dt.Rows[0]["email"].ToString();
        }*/
    }
    public void personal_details()
    {
        st = "Select * from Customer where id=" + Session["Customer"] + "";
        dt = db.get_datatable(st);
        if (dt.Rows.Count > 0)
        {
            C_name.Text = dt.Rows[0]["name"].ToString();
            C_email.Text = dt.Rows[0]["email"].ToString();
            C_mob.Text = dt.Rows[0]["mobile"].ToString();
            C_add.Text = dt.Rows[0]["address"].ToString();


        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        int c = 0;
        st = "Select * from booking where hall_id=" + Request.QueryString["id"] + "";
        dt = db.get_datatable(st);
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
               
                
            if (txt_date.Text ==dt.Rows[i]["from"].ToString() )
            {
                Response.Write("<script>alert('Hall Already Booked on this date')</script>");
                c++;
                break;

            }

                }
            if (c > 0)
            {
                Response.Write("<script>alert('Hall Already Booked on this date')</script>");
            }

            else
            {
                st = "insert into booking values(" + Request.QueryString["id"] + "," + Session["Customer"] + ",'" + H_name.Text + "'," + own_mob.Text + ",'" + Hall_cat.Text + "','" + txt_date.Text + "','" + txt_date1.Text + "'," + C_mob.Text + ",'" + C_name.Text + "','" + C_add.Text + "'," + own_id + ",'"+Session["Selected"]+"',"+Request.QueryString["total"]+")";
                int x = db.ExeQuery(st);
                if (x > 0)
                {
                    String result;
                    string apiKey = "tqVqMWIp0G4-3KEbGW4xElG4dBnvujyg4zRx1YHX6C";
                    string numbers; // in a comma seperated list
                    //    string message = "This is your message";
                    string senders = "TXTLCL";
                    string mobile = own_mob.Text;
                    string msg = "New Service Booked \n Name : '" + C_name.Text + "'\n Mobile:" + C_mob.Text + "\n Address :'" + C_add.Text + "'\n HallName:'" + H_name.Text + "'\n Additional Features :" + Session["Selected"] + "\n Grand Total:" + Request.QueryString["total"] + "";
                    String url = "https://api.textlocal.in/send/?apikey=" + apiKey + "&numbers=" + mobile + "&message=" + msg + "&sender=" + senders;
                    //refer to parameters to complete correct url string

                    StreamWriter myWriter = null;
                    HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(url);

                    objRequest.Method = "POST";
                    objRequest.ContentLength = Encoding.UTF8.GetByteCount(url);
                    objRequest.ContentType = "application/x-www-form-urlencoded";
                    try
                    {
                        myWriter = new StreamWriter(objRequest.GetRequestStream());
                        myWriter.Write(url);
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.ToString() + "')</script>");
                    }
                    finally
                    {
                        myWriter.Close();
                    }

                    HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
                    using (StreamReader sr = new StreamReader(objResponse.GetResponseStream()))
                    {
                        result = sr.ReadToEnd();
                        // Close and clean up the StreamReader
                        sr.Close();
                    }
                    Response.Write("<script>alert('" + result.ToString() + "')</script>");




                    ScriptManager.RegisterStartupScript(this, this.GetType(),
                                    "alert",
                                        "alert('Hall Booked sucessfully');window.location ='Home.aspx';",
                                                true);
                    //   Response.Write("<script>alert('Hall Booked Succesfully,Thank you');window.location href='home.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('Failed')</script>");
                }

            }

        }
        else
        {
            st = "insert into booking values(" + Request.QueryString["id"] + "," + Session["Customer"] + ",'" + H_name.Text + "'," + own_mob.Text + ",'" + Hall_cat.Text + "','" + txt_date.Text + "','" + txt_date1.Text + "'," + C_mob.Text + ",'" + C_name.Text + "','" + C_add.Text + "'," + own_id + ",'" + Session["Selected"] + "'," + Request.QueryString["total"] + ")";
            int x = db.ExeQuery(st);
            if (x > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                                   "alert",
                                       "alert('Hall Booked sucessfully');window.location ='Home.aspx';",
                                               true);
                    
            }
            else
            {
                Response.Write("<script>alert('Failed')</script>");
            }
           
        }




    }
}