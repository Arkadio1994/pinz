<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sesja.aspx.cs" Inherits="Sesja" MasterPageFile="~/Wyglad2.master" %>

<asp:Content ID ="Content1" ContentPlaceHolderID=ContentGlowny runat=server >




    <div>
    <div>
    
        <asp:Label ID="LWitaj" runat="server" Text="Witaj "></asp:Label>
        <asp:Label ID="nick" runat="server" Text="Label"></asp:Label>
        <br />
        Poziom: <asp:Label ID="LPoziom" runat="server" Text="Label"></asp:Label>

        <br />
        Doświadczenie: <asp:Label ID="LDosw" runat="server" Text="Label"></asp:Label>
        /<asp:Label ID="LMaxDosw" runat="server" Text="Label"></asp:Label>
        <br />
        Siła: <asp:Label ID="LSila" runat="server" Text="Label"></asp:Label>
        <br />
        Szybkość: <asp:Label ID="LSzyb" runat="server" Text="Label"></asp:Label>
        <br />
        Wytrzymałość: <asp:Label ID="LWytrz" runat="server" Text="Label"></asp:Label>
        <br />
        Złoto: <asp:Label ID="LZloto" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="BWyloguj" runat="server" onclick="BWyloguj_Click" 
            Text="Wyloguj" />
        
    
        <br />
        
    </div>
    
    </div>
</asp:Content>
