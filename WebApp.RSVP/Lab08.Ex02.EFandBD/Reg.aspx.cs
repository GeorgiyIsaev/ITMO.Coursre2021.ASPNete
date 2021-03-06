using Lab01.Ex01.EmptyWebSite.Models;
using Lab01.Ex01.EmptyWebSite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Lab01.Ex01.EmptyWebSite
{
    public partial class Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (IsPostBack)
            {
                /*Проверка на валидацию*/
                Page.Validate(); 
                if (!Page.IsValid) return;

                GuestResponse rsvp = new GuestResponse(name.Text, email.Text, phone.Text, CheckBoxYN.Checked);                
                if (CheckBoxYN.Checked)
                {
                    Report report1 = new Report(TextBoxTitle.Text, TextBoxTextAnnot.Text); 
                    rsvp.Reports.Add(report1);
                }
                if (TextBoxTitle2.Text != "" || TextBoxTextAnnot2.Text != "") 
                {
                    Report report2 = new Report(TextBoxTitle2.Text, TextBoxTextAnnot2.Text); 
                    rsvp.Reports.Add(report2);
                }
                ResponseRepository.GetRepository().AddResponse(rsvp);
                try 
                {                 
                    SampleContext context = new SampleContext();
                    context.GuestResponses.Add(rsvp);
                    context.SaveChanges();
                } 
                catch (Exception ex) 
                {
                    Response.Write("Ошибка " + ex.Message); 
                }
               
                if (rsvp.WillAttend.HasValue && rsvp.WillAttend.Value)
                {
                    Response.Redirect("seeyouthere.html");
                }
                else
                {
                    Response.Redirect("sorryyoucantcome.html");
                }
            }
        }
    }
}