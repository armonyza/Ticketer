using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ticketer.Controllers
{
    public class apitestController : ApiController
    {
        // GET: api/apitest
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/apitest/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/apitest
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/apitest/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/apitest/5
        public void Delete(int id)
        {
        }
    }
}
