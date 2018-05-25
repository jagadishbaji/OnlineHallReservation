using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Web.Security;
using System.Drawing;


public partial class Login : System.Web.UI.Page
{
    string st = "";
    string login_type = "";
    mydb db = new mydb();
    SqlCommand cm;
    int x;
    SqlDataAdapter sqlda;
 
    DataSet ds;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, System.EventArgs e)
    {
        login_type = (string)(this.owner.Checked ? "owner" : "customer");
        if (owner.Checked)
        {
            if (txt_emailid.Text.Length > 0 && txt_password.Text.Length > 0)
            {

                st = "select * from owner where Email='" + txt_emailid.Text + "' and Password='" + txt_password.Text + "'";
                dt = get_datatable(st);

                if (dt.Rows.Count > 0)
                {
                    int session_own = dt.Rows[0]["Id"].GetHashCode();
                    Session["session_own"] = session_own;
                    Session["owner"] = dt.Rows[0][0].ToString();
                    Ownerlogin_details obj = new Ownerlogin_details();

                    obj.fullname = dt.Rows[0]["name"].ToString();
                    Session["Ownerlogin_details"] = obj;

                    Response.Redirect("owner/dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Failed')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Enter Login Credentials')</script>");
            }

        }
        else
        {
            if (txt_emailid.Text.Length > 0 && txt_password.Text.Length > 0)
            {

                st = "select * from customer where Email='" + txt_emailid.Text + "' and Password='" + txt_password.Text + "'";
                dt = get_datatable(st);

                if (dt.Rows.Count > 0)
                {
                    int session_cust = dt.Rows[0]["Id"].GetHashCode();
                    Session["session_cust"] = session_cust;
                    Session["customer"] = dt.Rows[0][0].ToString();
                    Customerlogin_details obj = new Customerlogin_details();

                    obj.fullname = dt.Rows[0]["name"].ToString();
                    Session["Customerlogin_details"] = obj;

                    Response.Redirect("Customer/Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Failed')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Enter Login Credentials')</script>");
            }

        }

    }
    public DataTable get_datatable(string st)
    {

        try
        {

            cm = new SqlCommand(st, db.db);
            sqlda = new SqlDataAdapter(cm);
            ds = new DataSet();
            ds.Tables.Clear();
            sqlda.Fill(ds, "recordset");
            db.db.Close();

        }
        catch (Exception) { }
        return ds.Tables["recordset"];
    }
}