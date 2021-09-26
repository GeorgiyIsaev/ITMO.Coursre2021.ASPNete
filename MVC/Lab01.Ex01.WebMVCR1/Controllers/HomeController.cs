﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Lab01.Ex01.WebMVCR1.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public string Index() 
        { 
            int hour = DateTime.Now.Hour; 
            string Greeting = hour < 12 ? "Доброе утро" : "Добрый день"; 
            return Greeting; 
        }
    }
}