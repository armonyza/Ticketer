using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ticketer
{
    public partial class lab : System.Web.UI.Page
    {

        public EventHandler VideoEncoded;

        public void encode(People person)
        {
            onComplete(person);
        }

        protected virtual void onComplete(object person)
        {
            if (VideoEncoded != null)
                VideoEncoded(person, EventArgs.Empty);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            var people = new People() { name = "bob" };
            var mail = new MailClass();
            var message = new MessageClass();
            //Page.Response.Write("<script>console.log('" + people.name + "');</script>");
              VideoEncoded += mail.SendEmail;
            VideoEncoded += message.SendMessage;
            encode(people);
            
        }

       

    }


    //public class encoder
    //{
    //    public event EventHandler VideoEncoding;

    //    public Array encode (People person)
    //    {
    //        onComplete();
    //    }

    //    protected virtual void onComplete()
    //    {
    //        if (VideoEncoding != null)
    //            VideoEncoding(this, EventArgs.Empty);
    //    }

    //}

    public class MailClass
    {
        public string target { get; set; }

        public string MailResult { get; set; }
        public void SendEmail(object sender, EventArgs e)
        {
            People person = (People)sender;
            MailResult = "mail sent";
            HttpContext.Current.Response.Write("<script>console.log('" + MailResult + person.name+"');</script>");

        }

    }


    public class MessageClass
    {
        public string number { get; set; }
        public string MessageResult { get; set; }
        public void SendMessage(object sender, EventArgs e)
        {
            People person = (People)sender;
            MessageResult = "message sent";
            HttpContext.Current.Response.Write("<script>console.log('" + MessageResult + person.name + "');</script>");

        }

    }

    public class People
    {
        public string name { get; set; }
        public int age { get; set; }
        public string Gender { get; set; }

    }
}