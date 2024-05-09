using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
	public partial class AdminMemberManagement : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{
			GridView1.DataBind();
		}
		//Go Button
        protected void Button1_Click(object sender, EventArgs e)
        {
			getMemberByID(); 
        }
		//Active Button
		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			updateMemberStatusByID("active");
		}
		//Pending Button
		protected void LinkButton2_Click(object sender, EventArgs e)
		{
			updateMemberStatusByID("pending");
		}
		//Deactive Button
		protected void LinkButton3_Click(object sender, EventArgs e)
		{
			updateMemberStatusByID("deactive");
		}
		//Delete Button
		protected void Button3_Click(object sender, EventArgs e)
		{
			deleteMemberByID();
		}

		protected void SqlDataSource1_DataBinding(object sender, EventArgs e)
		{

		}

		//User defined methods
		bool checkMemberExists()
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_table WHERE member_id= '" + TextBox1.Text.Trim() + "' ;", con);
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
		void getMemberByID()
		{
			if(checkMemberExists())
			{
				try
				{
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == ConnectionState.Closed)
					{
						con.Open();
					}
					SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_table WHERE member_id= '" + TextBox1.Text.Trim() + "' ;", con);
					SqlDataReader dr = cmd.ExecuteReader();

					if (dr.HasRows)
					{
						while (dr.Read())
						{
							TextBox10.Text = dr.GetValue(0).ToString(); //Name
							TextBox2.Text = dr.GetValue(10).ToString(); //Account Status
							TextBox11.Text = dr.GetValue(1).ToString(); //DOB
							TextBox3.Text = dr.GetValue(2).ToString(); //Contact No
							TextBox4.Text = dr.GetValue(3).ToString(); //Email ID
							TextBox8.Text = dr.GetValue(4).ToString(); //State
							TextBox6.Text = dr.GetValue(5).ToString(); //City
							TextBox7.Text = dr.GetValue(6).ToString(); //Pincode
							TextBox5.Text = dr.GetValue(7).ToString(); //Address
						}
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
			else
			{
				Response.Write("<script>alert('Enter Valid Member ID')</script>");
			}

		}

		void updateMemberStatusByID(string status)
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				if (con.State == ConnectionState.Closed)
				{
					con.Open();
				}
				SqlCommand cmd = new SqlCommand("UPDATE member_master_table SET account_status='"+status+"' WHERE member_id= '" + TextBox1.Text.Trim() + "' ;", con);
				cmd.ExecuteNonQuery();
				con.Close();
				TextBox2.Text = status.ToString();
				Response.Write("<script>alert('Status Updated Successfully');</script>");
				GridView1.DataBind();
			}
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
			}
		}

		void deleteMemberByID()
		{
			if (checkMemberExists())
			{
				try
				{
					SqlConnection con = new SqlConnection(strcon);
					if (con.State == ConnectionState.Closed)
					{
						con.Open();
					}

					SqlCommand cmd = new SqlCommand("DELETE FROM member_master_table WHERE member_id='" + TextBox1.Text.Trim() + "';", con);

					cmd.ExecuteNonQuery();
					con.Close();
					Response.Write("<script>alert('Member Deleted Successfully')</script>");
					clearForm();
					GridView1.DataBind();
				}
				catch (Exception ex)
				{
					Response.Write("<script>alert(' " + ex.Message + " ')</script>");
				}
			}
			else
			{
				Response.Write("<script>alert('Enter Valid Member ID')</script>");
			}
		}

		void clearForm()
		{
			TextBox1.Text = "";
			TextBox10.Text = "";
			TextBox2.Text = "";
			TextBox11.Text = "";
			TextBox3.Text = "";
			TextBox4.Text = "";
			TextBox8.Text = "";
			TextBox6.Text = "";
			TextBox7.Text = "";
			TextBox5.Text = "";
		}
	}
}