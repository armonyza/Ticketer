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
using System.IO;

namespace ticketer
{

    public class JobData
    {

        //public static int pageNUmber = 0;
        //public List<string> eventItem = new List<string>();
        //public List<string> dateItem = new List<string>();
        //public List<string> actionItem = new List<string>();
        //public List<string> JobID = new List<string>();
        //public List<string> currentDate = new List<string>();
        //public string updateSucess { get; set; }
        //public double temp { get; set; }
        //public int pressure { get; set; }
        //public int humidity { get; set; }
        //public double temp_min { get; set; }
        //public double temp_max { get; set; }

        public static string loggedinUser { get; set; }

        public static string errorMessage { get; set; }
        public string jobID { get; set; }
        public string JobSubject { get; set; }
        public string JobDescription { get; set; }
        public string jobStatus { get; set; }
        public string jobTime { get; set; }
        public string jobCustomer { get; set; }
        public string date { get; set; }
        public string userID { get; set; }
        public string itemBooked { get; set; }
        public string itemWorkLog { get; set; }
        public string itemResolution { get; set; }
        public string totalRows { get; set; }
        public string customerName { get; set; }
        public string customerNumber { get; set; }
        public event EventHandler eventTest;

        public void callTestEvent()
        {
            if (eventTest != null)
            {
                eventTest(this, EventArgs.Empty);
            }

        }


        public static List<JobData> getLimitedJobList(int pageNUmber)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            List<JobData> JobItemsList = new List<JobData>();
            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("getJobData", con);
                    cmd.CommandType = CommandType.StoredProcedure;


                    cmd.Parameters.AddWithValue("@pageNumber", pageNUmber);

                    //SqlCommand cmd = new SqlCommand("SELECT * FROM joblist ", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    JobData tableData = new JobData();
                    tableData.jobID = Convert.ToString(rdr["jobID"]);
                    tableData.JobDescription = Convert.ToString(rdr["jobDescription"]);
                    tableData.jobStatus = Convert.ToString(rdr["JobStatus"]);
                    tableData.JobSubject = Convert.ToString(rdr["jobSubject"]);
                    tableData.date = Convert.ToString(rdr["dayDate"]);
                    tableData.userID = Convert.ToString(rdr["userID"]);
                    tableData.jobCustomer = Convert.ToString(rdr["jobCustomer"]);
                    tableData.jobTime = Convert.ToString(rdr["jobTime"]);
                    tableData.itemBooked = Convert.ToString(rdr["itemBookedDetails"]);
                    tableData.itemWorkLog = Convert.ToString(rdr["itemWorkLog"]);
                    tableData.itemResolution = Convert.ToString(rdr["itemResolution"]);
                    tableData.totalRows = Convert.ToString(rdr["itemResolution"]);
                    tableData.customerName = Convert.ToString(rdr["cName"]);
                    tableData.customerNumber = Convert.ToString(rdr["cNumber"]);


                    JobItemsList.Add(tableData);
                }

                return JobItemsList;

            }
        }

        public static Boolean checkLogin(string username, string password)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;


                using (SqlConnection con = new SqlConnection(CS))
                {

                    SqlCommand cmd = new SqlCommand("getLogin", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@pwd", password);
                    cmd.Parameters.Add("@returnValue", SqlDbType.Int);
                    cmd.Parameters["@returnValue"].Direction = ParameterDirection.Output;

                    con.Open();
                    cmd.ExecuteNonQuery();
                    int validDetails = Convert.ToInt32(cmd.Parameters["@returnValue"].Value);

                    if (validDetails == 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
            }

            catch(FileNotFoundException e)
            {
                errorMessage = e.Message.ToString();
                return false;
            }
            catch(NullReferenceException e)
            {
                errorMessage = "error connecting to log in data base : " + e.Message + " error logged please contact administrator";
                return false;
            }


        }

        public static string getTotalDatabaseRows()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(CS))
            {

                //connect to datbase
                using (SqlCommand cmd = new SqlCommand("getRowCount", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@returnValue", SqlDbType.VarChar, 255);
                    cmd.Parameters["@returnValue"].Direction = ParameterDirection.Output;

                    con.Open();
                    cmd.ExecuteNonQuery();
                    // use the returned message from sql to succeed or fail
                    string validDetails = cmd.Parameters["@returnValue"].Value.ToString();

                    return validDetails;
                }
            }
        }

        public static List<JobData> getFullJobList()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            List<JobData> JobItemsList = new List<JobData>();
            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("getFullJobData", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@currentUserID", JobData.loggedinUser);
                //SqlCommand cmd = new SqlCommand("SELECT * FROM joblist ", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    JobData tableData = new JobData();
                    tableData.jobID = Convert.ToString(rdr["jobID"]);
                    tableData.JobDescription = Convert.ToString(rdr["jobDescription"]);
                    tableData.jobStatus = Convert.ToString(rdr["JobStatus"]);
                    tableData.JobSubject = Convert.ToString(rdr["jobSubject"]);
                    tableData.date = Convert.ToString(rdr["dayDate"]);
                    tableData.userID = Convert.ToString(rdr["userID"]);
                    tableData.jobCustomer = Convert.ToString(rdr["jobCustomer"]);
                    tableData.jobTime = Convert.ToString(rdr["jobTime"]);
                    tableData.itemBooked = Convert.ToString(rdr["itemBookedDetails"]);
                    tableData.itemWorkLog = Convert.ToString(rdr["itemWorkLog"]);
                    tableData.itemResolution = Convert.ToString(rdr["itemResolution"]);
                    tableData.totalRows = Convert.ToString(rdr["itemResolution"]);
                    tableData.customerName = Convert.ToString(rdr["cName"]);
                    tableData.customerNumber = Convert.ToString(rdr["cNumber"]);


                    JobItemsList.Add(tableData);
                }
                JobItemsList.Reverse();
                return JobItemsList;

            }
        }

        public static string newCustomer(string cName, string cNumber)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("sp_addCustomer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@customerName", cName);
                cmd.Parameters.AddWithValue("@customerNumber", cNumber);
                cmd.Parameters.Add("@output", SqlDbType.VarChar,255);
                cmd.Parameters["@output"].Direction = ParameterDirection.Output;

                con.Open();
                cmd.ExecuteNonQuery();
                string validDetails = Convert.ToString(cmd.Parameters["@output"].Value);

                if (validDetails == "added")
                {
                    return "added";
                }
                else
                {
                    return "exists";
                }
            }
        }

        public static List<JobData> getCustomerList()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            List<JobData> customerList = new List<JobData>();
            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("getCustomerList", con);
                cmd.CommandType = CommandType.StoredProcedure;

                //SqlCommand cmd = new SqlCommand("SELECT * FROM joblist ", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    JobData tableData = new JobData();
                    tableData.customerName = Convert.ToString(rdr["cName"]);
                    tableData.customerNumber = Convert.ToString(rdr["cNumber"]);
                    customerList.Add(tableData);

                }
;                return customerList;

            }
        }



            public static void updateDatabaseCurrentJob(JobData updatedJobData)
        {

            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("updateTicket", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;


                    cmd.Parameters.AddWithValue("@jobID", updatedJobData.jobID);
                    cmd.Parameters.AddWithValue("@customerName", updatedJobData.customerName);
                    cmd.Parameters.AddWithValue("@subject", updatedJobData.JobSubject);
                    cmd.Parameters.AddWithValue("@description", updatedJobData.JobDescription);
                    cmd.Parameters.AddWithValue("@status", updatedJobData.jobStatus);
                    cmd.Parameters.AddWithValue("@Date", updatedJobData.date);
                    if(updatedJobData.jobTime != "")
                    {
                        cmd.Parameters.AddWithValue("@jobTime", Convert.ToInt32(updatedJobData.jobTime));
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@jobTime", 0);
                    }                    
                    cmd.Parameters.AddWithValue("@userID", updatedJobData.userID);
                    cmd.Parameters.AddWithValue("@itemBookedDetails", updatedJobData.itemBooked);
                    cmd.Parameters.AddWithValue("@itemWorkLog", updatedJobData.itemWorkLog);
                    con.Open();
                    cmd.ExecuteNonQuery();


                }
            }
        }


        public static void updateJobList(string jobStatus, int jobID)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection con = new SqlConnection(CS))
            {
                //connect to datbase
                string updateQuery = "UPDATE joblist SET jobStatus=@status WHERE jobID=@jobID";



                SqlCommand cmd = new SqlCommand(updateQuery, con);

                SqlParameter paramjobID = new SqlParameter("@jobID", jobID);
                cmd.Parameters.Add(paramjobID);
                SqlParameter paramJobStatus = new SqlParameter("@status", jobStatus);
                cmd.Parameters.Add(paramJobStatus);
                con.Open();
                cmd.ExecuteNonQuery();



            }
        }

        public static List<string> getCustomers()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            List<string> customerList = new List<string>();
            using (SqlConnection con = new SqlConnection(CS))
            {


                SqlCommand cmd = new SqlCommand("SELECT DISTINCT jobCustomer FROM joblist ", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    customerList.Add(Convert.ToString(rdr["jobCustomer"]));
                }

                return customerList;

            }
        }

        
    }
}