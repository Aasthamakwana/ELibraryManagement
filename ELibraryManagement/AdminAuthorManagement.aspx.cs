using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
	public partial class AdminAuthorManagement : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{
			GridView1.DataBind();
		}

		//Add Button
        protected void Button2_Click(object sender, EventArgs e)
        {
			if (checkAuthorExists())
			{
				Response.Write("<script>alert('Author with this ID already exists. You cannot create another author with same ID.')</script>");
			}
			else
			{
				addNewAuthor();
			}
        }

		//Update Button
		protected void Button3_Click(object sender, EventArgs e)
		{
			if (checkAuthorExists())
			{
				updateAuthor();
			}
			else
			{
				Response.Write("<script>alert('Author doesn't exist')</script>");
			}
		}

		//Delete Button
		protected void Button4_Click(object sender, EventArgs e)
		{
			if (checkAuthorExists())
			{
				deleteAuthor();
			}
			else
			{
				Response.Write("<script>alert('Author doesn't exist')</script>");
			}
		}

		//Go Button
		protected void Button1_Click(object sender, EventArgs e)
		{
			getAuthorByID();
		}

		//User defined function

		void addNewAuthor()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if(con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("INSERT INTO author_master_table(author_id,author_name) values(@author_id,@author_name)", con);

				cmd.Parameters.AddWithValue("@author_id",TextBox1.Text.Trim());
				cmd.Parameters.AddWithValue("@author_name",TextBox2.Text.Trim());

				cmd.ExecuteNonQuery();
				con.Close();
				Response.Write("<script>alert('Author Added Successfully');</script>");
				GridView1.DataBind();
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert(' " + ex.Message + " ');</script>");
			}
		}

		void updateAuthor()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if(con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("UPDATE author_master_table SET author_name=@author_name where author_id='"+TextBox1.Text.Trim()+"';", con);

				cmd.Parameters.AddWithValue("@author_name",TextBox2.Text.Trim());

				cmd.ExecuteNonQuery();
				con.Close();
				Response.Write("<script>alert('Author Updated Successfully');</script>");
				clearForm();
				GridView1.DataBind();
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert(' " + ex.Message + " ');</script>");
			}
		}

		void deleteAuthor()
		{
			try
			{
				SqlConnection con = new SqlConnection (strcon);
				if(con.State == ConnectionState.Closed) { 
					con.Open();
				}

			SqlCommand cmd = new SqlCommand("DELETE FROM author_master_table WHERE author_id='"+TextBox1.Text.Trim()+"';", con);

				cmd.ExecuteNonQuery();
				con.Close();
				Response.Write("<script>alert('Author Deleted Successfully')</script>");
				clearForm();
				GridView1.DataBind();
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert(' " + ex.Message + " ')</script>");
			}
		}

		void getAuthorByID()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_table WHERE author_id= '" + TextBox1.Text.Trim() + "' ;", con);
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable();
				da.Fill(dt);

				if (dt.Rows.Count >= 1)
				{
					TextBox2.Text = dt.Rows[0]["author_name"].ToString();
				}
				else
				{
					Response.Write("<script>alert('Invalid Author ID')</script>");
				}

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

		bool checkAuthorExists()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if(con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_table WHERE author_id= '"+TextBox1.Text.Trim()+"' ;", con);
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable();
				da.Fill(dt);

				if(dt.Rows.Count > 0 )
				{
					return true;
				}
				else
				{
					return false;
				}

			}catch (Exception ex)
			{
				Response.Write("<script>alert('"+ ex.Message +"');</script>");
				return false;
			}
		}

		void clearForm()
		{
			TextBox1.Text = "";
			TextBox2.Text = "";
		}

		protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
		{
			
		}
	}
}