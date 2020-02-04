using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;

namespace ticketer
{
    public partial class Job : System.Web.UI.Page
    {
        JobData selectedJob;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["currentUser"] == null)
            //{
            //    Response.Redirect("login.aspx");
            //}
            if (Session["currentUser"] == null)
            {
                Response.Redirect("login.aspx");
            }

            selectedJob = (JobData)Session["selectedJobID"];


            if (!IsPostBack)
            {
                

                DateTime todayDate = DateTime.Today;
                statusDropDown.SelectedValue = "open";
                dateTextbox.Text = todayDate.ToString("dd/MM/yyyy");

            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(CS))
            {
                if (Page.IsValid)
                {


                    if (selectedJob == null)
                    {
                        //connect to datbase
                        using (SqlCommand cmd = new SqlCommand("addTicket", con))
                        {

                            cmd.CommandType = CommandType.StoredProcedure;

                            //cmd.Parameters.AddWithValue("@customer", customerDropdown.SelectedValue);
                            cmd.Parameters.AddWithValue("@subject", subjectTextbox.Text);
                            cmd.Parameters.AddWithValue("@description", descriptionTextbox.Text);
                            cmd.Parameters.AddWithValue("@status", statusDropDown.SelectedValue);
                            cmd.Parameters.AddWithValue("@Date", dateTextbox.Text);
                            cmd.Parameters.AddWithValue("@jobTime", LabourTimeInput.Text);
                            cmd.Parameters.AddWithValue("@username", Session["currentUser"]);
                            cmd.Parameters.AddWithValue("@customer", customerTextbox.Text);


                            con.Open();
                            cmd.ExecuteNonQuery();

                            //submitBtn.Text = Request["LabourHoursInput"];

                            //cmd.Parameters.Add("@returned", SqlDbType.VarChar, 255);
                            //cmd.Parameters["@returned"].Direction = ParameterDirection.Output;

                            //// use the returned message from sql to succeed or fail
                            //string validDetails = cmd.Parameters["@returned"].Value.ToString();

                            //if (validDetails != "success")
                            //{
                            //    Response.Write("<script language=javascript>alert('Failed to add job.')</script>");


                            //}
                            //else
                            //{
                            //    Response.Write("<script language=javascript>alert('job added')</script>");
                            //    Response.Redirect("Main.aspx");
                            //}

                        }
                    }

                   
                }

                Response.Redirect("main.aspx");

            }
        }


        protected void emailBtn_Click(object sender, EventArgs e)
        {

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

            smtpClient.Credentials = new System.Net.NetworkCredential("derpidav@gmail.com", "!Q@W#E$R!Q@W#E$R");
            //smtpClient.UseDefaultCredentials = false;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            MailMessage mail = new MailMessage();

            //Setting From , To and CC
            mail.From = new MailAddress("derpidav@gmail.com", "smidav07@gmail.com");
            mail.To.Add("smidav07@gmail.com");
            //mail.CC.Add(new MailAddress("MyEmailID@gmail.com"));
            mail.Subject = "test mail";
            mail.Body = "test mail test mail";
            smtpClient.Send(mail);
           // emailBtn.Text = e.ToString();
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {

        }

        protected void testbtn_Click(object sender, EventArgs e)
        {


        }

        protected void customerTextbox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void dateTextbox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void timeInput_TextChanged(object sender, EventArgs e)
        {
                                   
        }
    }
}