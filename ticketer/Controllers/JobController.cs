using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data.SqlClient;
using System.Configuration;

namespace ticketer.Controllers
{
    public class JobController : ApiController
    {     

        [Route("api/Job/newCustomer")]
        [HttpPost]
        // POST: api/Job/newCustomer
        public string newCustomer(string cName, string cNumber)
        {
            string result;
            result = JobData.newCustomer(cName, cNumber);
            return result;
        }

        [Route("api/Job/CustomerList")]
        [HttpGet]
        // GET: api/CustomerList
        public List<string> Get()
        {
            List<JobData> jobDataList = JobData.getCustomerList();
            List<string> customerList = new List<string>();
            foreach (JobData k in jobDataList)
            {
                customerList.Add(k.customerName);
            }

            return customerList;
        }

        // GET: api/Job/5
        public string Get(int id)
        {
            return "value";
        }


        // POST: api/Job
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Job/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Job/5
        public void Delete(int id)
        {
        }


    }
}
