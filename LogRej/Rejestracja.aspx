<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rejestracja.aspx.cs" Inherits="LogRej_Rejestracja" MasterPageFile="~/Wyglad2.master" %>

<asp:Content ID ="Content1" ContentPlaceHolderID=ContentGlowny runat=server >
    <div>
    
        <asp:LinqDataSource ID="LDS" runat="server" ContextTypeName="BazaDanychDataContext" 
            EntityTypeName="" TableName="Uzytkowniks">
        </asp:LinqDataSource>
    
    </div>
    <center>
    <table class="style1">
        <tr>
            <td class="style1">
                Login:</td>
            <td class="style3">
                <asp:TextBox ID="TBLogin" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RFVLogin" runat="server" 
                    ControlToValidate="TBLogin" ErrorMessage="Login jest wymagany" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                E-mail:</td>
            <td class="style3">
                <asp:TextBox ID="TBEmail" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RFVEmail" runat="server" 
                    ControlToValidate="TBEmail" ErrorMessage="E-mail jest wymagany." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REVPEmail" runat="server" 
                    ControlToValidate="TBEmail" ErrorMessage="Podaj poprawny email." ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Hasło:</td>
            <td class="style3">
                <asp:TextBox ID="TBHaslo" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RFVHaslo" runat="server" 
                    ControlToValidate="TBHaslo" ErrorMessage="Hasło jest wymagane." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                Powtórz hasło:</td>
            <td class="style3">
                <asp:TextBox ID="TBPHaslo" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:CompareValidator ID="CVPiCP" runat="server" ControlToCompare="TBHaslo" 
                    ControlToValidate="TBPHaslo" ErrorMessage="Hasła muszą być takie same." 
                    ForeColor="Red"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="RFVPHaslo" runat="server" 
                    ControlToValidate="TBPHaslo" ErrorMessage="Podaj hasło ponownie." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="BRjestruj" runat="server" onclick="BRjestruj_Click" 
                    Text="Zarejestruj" Width="250px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
        <asp:Label ID="LabelError" runat="server" Enabled="False" Visible="False"></asp:Label>
    </center>   
    
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            text-align: right;
        }
        .style2
        {
            text-align: justify;
        }
        .style3
        {
            text-align: left;
        }
    </style>
</asp:Content>
