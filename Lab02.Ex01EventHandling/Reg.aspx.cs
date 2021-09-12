﻿using Lab01.Ex01.EmptyWebSite.Models;
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
                GuestResponse rsvp = new GuestResponse(name.Text, email.Text, phone.Text, CheckBoxYN.Checked);
                ResponseRepository.GetRepository().AddResponse(rsvp);




            }
        }
    }
}