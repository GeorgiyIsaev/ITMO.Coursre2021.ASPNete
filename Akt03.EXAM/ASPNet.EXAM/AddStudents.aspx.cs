using ASPNet.EXAM.Models;
using Lab01.Ex01.EmptyWebSite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNet.EXAM
{
    public partial class AddStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                /*Проверка на валидацию*/
                Page.Validate();
                if (!Page.IsValid) return;

                double tempAverageMark = Convert.ToDouble(averageMark.Text); 


                Student student = new Student(name.Text, 
                    surname.Text, group.Text, tempAverageMark);
          
                ResponseRepository.GetRepository().AddResponse(student);
                try
                {
                    SampleContext context = new SampleContext();
                    context.GuestResponses.Add(student);
                    context.SaveChanges();
                }
                catch (Exception ex)
                {
                    Response.Redirect("Ошибка " + ex.Message);
                }                
            }
        }
    }
}