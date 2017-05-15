using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class walka_Walka : System.Web.UI.Page
{
    BazaDanychDataContext BazaDanych = new BazaDanychDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        Int32 id = Convert.ToInt32(Request["id"]);
        var uzyt = (from m in BazaDanych.Uzytkowniks
                    where m.Login == Session["me"].ToString()
                    select m).First();

        nazwaPrzeciw.Text = BazaDanych.Przeciwniks.Single(p=>p.ID==id).Nazwa;

        NazwaUzyt.Text = uzyt.Login;
    }
}