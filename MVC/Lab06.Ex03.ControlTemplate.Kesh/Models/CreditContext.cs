﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Lab05.Ex01.MvcCreditApp1.Models
{
    public class CreditContext : DbContext 
    {
        public DbSet<Credit> Credits { get; set; } 
        public DbSet<Bid> Bids { get; set; }
    }
}