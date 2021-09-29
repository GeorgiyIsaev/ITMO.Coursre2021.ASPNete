using Lab05.Ex01.MvcCreditApp1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Lab05.Ex01.MvcCreditApp1.Controllers
{
    public class HomeController : Controller
    {
        private CreditContext db = new CreditContext();
        public ActionResult Index()
        {
            var allCredits = db.Credits.ToList<Credit>();
            ViewBag.Credits = allCredits;
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}