using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sesja : System.Web.UI.Page
{
    BazaDanychDataContext BazaDanych = new BazaDanychDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
            
        if (Session["me"] != null)
        {
            if (!Page.IsPostBack)
            {
                try
                {

                    var uzyt= (from m in BazaDanych.Uzytkowniks
                               join n in BazaDanych.TabDosws on m.Poziom equals n.Poziom
                              where m.Login == Session["me"].ToString() && m.Poziom == n.Poziom
                              select m).First();
                    var poz = (from n in BazaDanych.TabDosws
                              join m in BazaDanych.Uzytkowniks on n.Poziom equals m.Poziom
                              select n).First();
                              
                    nick.Text = uzyt.Login;
                    LPoziom.Text = uzyt.Poziom.ToString();
                    LDosw.Text = uzyt.Doswiadczenie.ToString();
                    LMaxDosw.Text = poz.MaxDosw.ToString();
                    LSila.Text = uzyt.Sila.ToString();
                    LSzyb.Text = uzyt.Szybkosc.ToString();
                    LWytrz.Text = uzyt.Wytrzymalosc.ToString();
                    LZloto.Text = uzyt.Zloto.ToString();




                }
                catch (Exception)
                {
                    Response.Redirect("~/LogRej/Logowanie.aspx");
                }
            }
        }
        else
        {
            Response.Redirect("~/LogRej/Logowanie.aspx");
        }
    }
    protected void BWyloguj_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("~/LogRej/Logowanie.aspx");
    }

}