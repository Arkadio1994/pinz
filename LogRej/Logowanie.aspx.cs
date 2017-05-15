using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogRej_Logowanie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    BazaDanychDataContext BazaDanych = new BazaDanychDataContext();
    protected void TBLogowanie_Click(object sender, EventArgs e)
    {
        var uzyt = from m in BazaDanych.Uzytkowniks
                   where m.Login == TBLogin.Text && m.Haslo == TBHaslo.Text
                   select m;
        if (uzyt.Count() > 0)
        {
            if (uzyt.First().CzyAktywny.Value)
            {
                Session["me"] = TBLogin.Text;
                Response.Redirect("~/Sesja.aspx");
            }
            else
            {
                Response.Redirect("~/LogRej/Logowanie.aspx");
            }
        }
        else
        {
            LabelBlad.Text = "zle dane";
        }

    }
}