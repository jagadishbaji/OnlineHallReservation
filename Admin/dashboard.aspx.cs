using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Admin_dashboard : System.Web.UI.Page
{
    mydb db = new mydb();
    SqlCommand cm;
    SqlDataAdapter sqlda;
    DataTable dt;
    string cust, owners;
    DataSet ds;
  
    string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            st = "select count(*) from customer";
            dt = get_datatable(st);
            if (dt.Rows.Count > 0)
            {
                cust = dt.Rows[0][0].ToString();
            }
            customer.Text = cust;
            st = "select count(*) from owner";
            dt = get_datatable(st);
            if (dt.Rows.Count > 0)
            {
                owners = dt.Rows[0][0].ToString();
            }
            owner.Text = owners;

            st = "select count(*) from hall";
            dt = get_datatable(st);
            if (dt.Rows.Count > 0)
            {
                hall.Text= dt.Rows[0][0].ToString();
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