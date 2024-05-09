﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace ELibraryManagement
{
	public partial class AdminPublisherManagament : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		//Go Button
		protected void Button1_Click(object sender, EventArgs e)
		{
			getPublisherByID();
		}

		//Add Button
		protected void Button2_Click(object sender, EventArgs e)
		{
			if (checkPublisherExists())
			{
				Response.Write("<script>alert('Publisher with this ID already exists. You cannot create another publisher with same ID.')</script>");
			}
			else
			{
				addNewPublisher();
			}
		}

		//Update Button
		protected void Button3_Click(object sender, EventArgs e)
		{
			if (checkPublisherExists())
			{
				updatePublisher();
			}
			else
			{
				Response.Write("<script>alert('Publisher doesn't exist')</script>");
			}
		}

		//Delete Button
		protected void Button4_Click(object sender, EventArgs e)
		{
			if (checkPublisherExists())
			{
				deletePublisher();
			}
			else
			{
				Response.Write("<script>alert('Publisher doesn't exist')</script>");
			}
		}

		//User defined function

		void addNewPublisher()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("INSERT INTO publisher_master_table(publisher_id,publisher_name) values(@publisher_id,@publisher_name)", con);

				cmd.Parameters.AddWithValue("@publisher_id", TextBox1.Text.Trim());
				cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());

				cmd.ExecuteNonQuery();
				con.Close();
				Response.Write("<script>alert('Publisher Added Successfully');</script>");
				GridView1.DataBind();
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert(' " + ex.Message + " ');</script>");
			}
		}

		void updatePublisher()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("UPDATE publisher_master_table SET publisher_name=@publisher_name where publisher_id='" + TextBox1.Text.Trim() + "';", con);

				cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());

				cmd.ExecuteNonQuery();
				con.Close();
				Response.Write("<script>alert('Publisher Updated Successfully');</script>");
				clearForm();
				GridView1.DataBind();
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert(' " + ex.Message + " ');</script>");
			}
		}

		void deletePublisher()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}

				SqlCommand cmd = new SqlCommand("DELETE FROM publisher_master_table WHERE publisher_id='" + TextBox1.Text.Trim() + "';", con);

				cmd.ExecuteNonQuery();
				con.Close();
				Response.Write("<script>alert('Publisher Deleted Successfully')</script>");
				clearForm();
				GridView1.DataBind();
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert(' " + ex.Message + " ')</script>");
			}
		}

		void getPublisherByID()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("SELECT * FROM publisher_master_table WHERE publisher_id= '" + TextBox1.Text.Trim() + "' ;", con);
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable();
				da.Fill(dt);

				if (dt.Rows.Count >= 1)
				{
					TextBox2.Text = dt.Rows[0]["publisher_name"].ToString();
				}
				else
				{
					Response.Write("<script>alert('Invalid Publisher ID')</script>");
				}

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

		bool checkPublisherExists()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("SELECT * FROM publisher_master_table WHERE publisher_id= '" + TextBox1.Text.Trim() + "' ;", con);
				SqlDataAdapter da = new SqlDataAdapter(cmd);
				DataTable dt = new DataTable();
				da.Fill(dt);

				if (dt.Rows.Count > 0)
				{
					return true;
				}
				else
				{
					return false;
				}

			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
				return false;
			}
		}

		void clearForm()
		{
			TextBox1.Text = "";
			TextBox2.Text = "";
		}

		
	}
}