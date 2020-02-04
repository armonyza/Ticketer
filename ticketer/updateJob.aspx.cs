using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ticketer
{
    public partial class newJobCard : System.Web.UI.Page
    {
        JobData selectedJob;
        List<JobData> customerList = new List<JobData>();
        

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["currentUser"] == null)
            {
                Response.Redirect("login.aspx");
            }
            selectedJob = (JobData)Session["selectedJobID"];
            customerList = JobData.getCustomerList();

            if (!IsPostBack)
            {
                DateTime todayDate = DateTime.Today;
                dateLabel.Text = todayDate.ToString("dd/MM/yyyy");

                if(selectedJob!= null)
                {
                    jobStatusDropDown.SelectedValue = selectedJob.jobStatus;
                    dateLabel.Text = selectedJob.date;
                    clientNumberLabel.Text = selectedJob.customerNumber;
                    bookInTextbox.Text = selectedJob.itemBooked;
                    workLogTextbox.Text = selectedJob.itemWorkLog;
                    jobCompleteDropDown.SelectedValue = selectedJob.jobStatus;
                    jobDescriptionTextbox.Text = selectedJob.JobDescription;
                    jobSubjectTextbox.Text = selectedJob.JobSubject;
                    hoursWorkedTextbox.Text = selectedJob.jobTime;                    
                    customerDropdown.SelectedValue = selectedJob.customerName;

                }
            }

        }

        protected void jobCompleteUpdate_Click(object sender, EventArgs e)
        {
            if (selectedJob.jobID == null || selectedJob.jobID == "")
            {

            }

            else
            {
                JobData updatedJob = new JobData();

                updatedJob.jobID = selectedJob.jobID;
                updatedJob.JobSubject = jobSubjectTextbox.Text;
                updatedJob.JobDescription = jobDescriptionTextbox.Text;
                updatedJob.jobStatus = jobStatusDropDown.SelectedValue;
                updatedJob.jobTime = hoursWorkedTextbox.Text;
                updatedJob.jobCustomer = selectedJob.jobCustomer;
                updatedJob.date = dateLabel.Text;
                updatedJob.userID = selectedJob.userID;
                updatedJob.itemBooked = bookInTextbox.Text;
                updatedJob.itemWorkLog = workLogTextbox.Text;
                updatedJob.customerNumber = selectedJob.customerNumber;
                updatedJob.customerName = selectedJob.customerName;
                JobData.updateDatabaseCurrentJob(updatedJob);
                Response.Redirect("main.aspx");
            }
            
    }

        protected void jobStatusDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void jobStatusDropDown_TextChanged(object sender, EventArgs e)
        {

        }

        protected void customerDropdown_SelectedIndexChanged(object sender, EventArgs e)
        {

            int count = 0;
            foreach (JobData k in customerList)
            {
                if (k.customerName == customerDropdown.SelectedValue)
                {
                    clientNumberLabel.Text = k.customerNumber;
                    return;
                }
                count++;

            }


        }

        protected void customerDropdown_TextChanged(object sender, EventArgs e)
        {
            int count = 0;
            foreach (JobData k in customerList)
            {
                if (k.customerName == customerDropdown.SelectedValue)
                {
                    clientNumberLabel.Text = k.customerNumber;
                    return;
                }
                count++;

            }
        }


    }
}