using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogRej_Rejestracja : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    BazaDanychDataContext BazaDanych = new BazaDanychDataContext();
    protected void BRjestruj_Click(object sender, EventArgs e)
    {
        try
        {
            
            var nick = from m in BazaDanych.Uzytkowniks
                       where m.Login == TBLogin.Text
                       select m;
            var email = from m in BazaDanych.Uzytkowniks
                       where m.Email == TBEmail.Text
                       select m;
            if (nick.Count() == 0)
            {
                if (email.Count() == 0)
                {
                    Uzytkownik uzytkownik = new Uzytkownik();
                    uzytkownik.Login = TBLogin.Text;
                    uzytkownik.Haslo = TBHaslo.Text;
                    uzytkownik.Email = TBEmail.Text;
                    uzytkownik.Poziom = 1;
                    uzytkownik.Doswiadczenie = 0;
                    uzytkownik.Sila = 10;
                    uzytkownik.Szybkosc = 10;
                    uzytkownik.Wytrzymalosc = 10;
                    uzytkownik.Zloto = 0;
                    uzytkownik.CzyAktywny = true;
                    BazaDanych.Uzytkowniks.InsertOnSubmit(uzytkownik);
                    BazaDanych.SubmitChanges();
                    LabelError.Visible=true;
                    LabelError.ForeColor = System.Drawing.Color.Red;
                    LabelError.Text = "zarejestrowano";


                }
                else
                {
                    LabelError.Visible = true;
                    LabelError.ForeColor = System.Drawing.Color.Red;
                    LabelError.Text = "Ten Email jest zajety";
                }
            }
            else
            {
                LabelError.Visible = true;
                LabelError.ForeColor = System.Drawing.Color.Red;
                LabelError.Text = "Ten Login jest zajety";
            }


        }
        catch (Exception ex)
        {
            LabelError.Text = ex.Message;
        }
    }
}