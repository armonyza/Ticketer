using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace ticketer
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loginMessage.Visible = false;

            if (Session["currentUser"] != null)
            {
                Session["currentUser"] = null;
            }

            if (Session["selectedJobID"] != null)
            {
                Session["selectedJobID"] = null;
            }

        }

        protected void loginSubmit_Click(object sender, EventArgs e)
        {
            bool success = JobData.checkLogin(usernameTextbox.Text, passwordTextbox.Text);

            if(success == true)
            {
                loginMessage.Visible = false;                
                Session["currentUser"] = usernameTextbox.Text;
                JobData.loggedinUser = Convert.ToString(Session["currentUser"]);
                Response.Redirect("main.aspx");
            }

            else
            {
                loginMessage.Visible = true;

                if (JobData.errorMessage != "")
                {
                    loginMessage.Text = JobData.errorMessage;
                    JobData.errorMessage = "";
                }
                else
                {
                    loginMessage.Text = "log in detais incorrect";
                }
            }
        }

        protected void ForgotPasswordBtn_Click(object sender, EventArgs e)
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
        }
    }
}