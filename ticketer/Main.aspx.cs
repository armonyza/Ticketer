using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace ticketer
{
    public partial class Main : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["currentUser"] == null)
            {
                Response.Redirect("login.aspx");
            }

            if (!IsPostBack)
            {
                Session["selectedJobID"] = null;


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            JobData testobject = new JobData();
            testobject.eventTest += btnTest_Click;
            testobject.callTestEvent();
            btnTest_Click(this, EventArgs.Empty);


        }



 


        protected void btnTest_Click(object sender, EventArgs e)
        {
            //JobTable.UpdateRow(currentSelectedRow, true);
            Response.Write("<script language=javascript>alert('test button pressed')</script>");            
        }

        protected void JobGrid_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowIndex != currentSelectedRow)
            //{
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(JobGrid, "Select$" + e.Row.RowIndex);
                    e.Row.ToolTip = "Click to select this row.";
                    
                }

                


        }

        protected void JobGrid_SelectedIndexChanged1(object sender, EventArgs e)
        {
                

            List<JobData> CurrentJobList = JobData.getFullJobList();


            Session["selectedJobID"] = CurrentJobList[JobGrid.SelectedRow.RowIndex];
            CurrentJobList.Clear();
            //Page.Response.Write("<script>console.log('" + selectedJob.JobSubject + "');</script>");
            Response.Redirect("updateJob.aspx");

        }

        protected void JobGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("Job.aspx");
        }


        protected void olderBtn_Click(object sender, EventArgs e)
        {
            //currentTablePage = currentTablePage + 1;

            //List<JobData> mainData = new List<JobData>();
            //mainData = JobData.getLimitedJobList(currentTablePage);
            //ObjectDataSource1 = mainData;
            ////JobGrid.DataSource = mainData;
            //JobGrid.DataBind();

        }
    }




}