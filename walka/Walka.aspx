<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Walka.aspx.cs" Inherits="walka_Walka" MasterPageFile="~/Wyglad2.master" %>

<asp:Content ID ="Content1" ContentPlaceHolderID=ContentGlowny runat=server >


    <div>
    
        <asp:LinqDataSource ID="LinqUzytkownik" runat="server" 
            ContextTypeName="BazaDanychDataContext" EntityTypeName="" 
            TableName="Uzytkowniks">
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="LinqPrzeciwnik" runat="server" 
            ContextTypeName="BazaDanychDataContext" EntityTypeName="" 
            TableName="Przeciwniks">
        </asp:LinqDataSource>
        <center>
        <asp:Label ID="NazwaUzyt" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="nazwaPrzeciw" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
    </center>
    </div>
</asp:Content>
