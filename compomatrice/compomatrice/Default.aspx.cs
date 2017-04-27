using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=library;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        //DisplayGridView();
    }

    public void DisplayGridView()
    {
        SqlCommand cmd = new SqlCommand("select * from Book_Demo", con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlCommand cmd = new SqlCommand("insert into Book_Demo values ('"+Book_Id.Text+"','"+Book_Name.Text+"','"+Author.Text+"','"+Publisher.Text+"','"+Price.Text+"')",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('The Values Submitted Into Database')</script>");
        Clear();
       // DisplayGridView();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("delete from Book_Demo where Book_Id ='"+Convert.ToInt32(Book_Id.Text)+"'",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('The Value Is Deleted From Database')</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update Book_Demo Set Book_Name='"+Book_Name.Text+"',author='"+Author.Text+"',publisher='"+Publisher.Text+"',price='"+Convert.ToInt32(Price.Text)+"' where Book_Id='"+Book_Id.Text+"'",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('The Values Are Updated In Database')</script>");
    }
    public void Clear()
    {
        Book_Id.Text = "";
        Book_Name.Text = "";
        Author.Text = "";
        Publisher.Text = "";
        Price.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Clear();
    }
}