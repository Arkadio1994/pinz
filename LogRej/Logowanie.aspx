<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logowanie.aspx.cs" Inherits="LogRej_Logowanie" MasterPageFile="~/Wyglad2.master" %>

<asp:Content ID ="Content1" ContentPlaceHolderID=ContentGlowny runat=server >
    
    <div>
       <h3>
        <table class="style1">
            <tr>
                <td class="style2">
                    Login:</td>
                <td class="style3">
                    <asp:TextBox ID="TBLogin" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TBLogin" ErrorMessage="Podaj logind." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Hasło:</td>
                <td class="style3">
                    <asp:TextBox ID="TBHaslo" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TBHaslo" ErrorMessage="Podaj hasło." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="TBLogowanie" runat="server" onclick="TBLogowanie_Click" 
                        Text="Logowanie" Width="250px" />
                </td>
                <td>
                    <asp:Label ID="LabelBlad" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LogRej/Rejestracja.aspx">Jestes nowy? Zarejestruj się tutaj!</asp:HyperLink>
                </td>
                <td>
    
        <asp:LinqDataSource ID="LDS" runat="server" ContextTypeName="linqDataContext" 
            EntityTypeName="" TableName="Uzytkowniks">
        </asp:LinqDataSource>
    
                </td>
            </tr>
        </table>   
        </h3>
    </div>
</asp:Content>