using Lab01.Ex02.WebMVCR1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Lab01.Ex02.WebMVCR1.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public string Index(string hel)
        {
            string Greeting = ModelClass.ModelHello() + ", " + hel;
            return Greeting;
        }
        public string ExeEnum()
        {
            AccountType goldAccount;
            AccountType platinumAccount;
            goldAccount = AccountType.Checking;
            platinumAccount = AccountType.Deposit;
            string res1 = String.Format("Тип банковского счета {0}",
                goldAccount);
            string res2 = String.Format("Тип банковского счета {0}",
                platinumAccount);
            string res = res1 + "<p>" + res2;
            return res;


        }
    }
}