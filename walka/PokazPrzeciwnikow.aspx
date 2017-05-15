<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PokazPrzeciwnikow.aspx.cs" Inherits="walka_PokazPrzeciwnikow" MasterPageFile="~/Wyglad2.master" %>

<asp:Content ID ="Content1" ContentPlaceHolderID=ContentGlowny runat=server >
    <div>
    
        <asp:LinqDataSource ID="LinqPrzecinik" runat="server" 
            ContextTypeName="BazaDanychDataContext" EntityTypeName="" 
            TableName="Przeciwniks">
        </asp:LinqDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="LinqPrzecinik" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Nazwa" HeaderText="Nazwa" SortExpression="Nazwa" />
                <asp:BoundField DataField="Poziom" HeaderText="Poziom" 
                    SortExpression="Poziom" />
                <asp:BoundField DataField="DaDosw" HeaderText="DaDosw" 
                    SortExpression="DaDosw" />
                <asp:BoundField DataField="DaZlot" HeaderText="DaZlot" 
                    SortExpression="DaZlot" />
                <asp:BoundField DataField="Sila" HeaderText="Sila" SortExpression="Sila" />
                <asp:BoundField DataField="Szybkosc" HeaderText="Szybkosc" 
                    SortExpression="Szybkosc" />
                <asp:BoundField DataField="Wytrzymalosc" HeaderText="Wytrzymalosc" 
                    SortExpression="Wytrzymalosc" />
           


           <asp:TemplateField>
            <HeaderTemplate>
                <asp:Label ID="Walka" runat="server" Text="Walcz"></asp:Label>
            </HeaderTemplate>
            <ItemTemplate>
                <asp:Button id="BWalka" PostBackUrl='<%# String.Format("Walka.aspx?id={0}", Eval("Id")) %>' Text="Walka" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>



            </Columns>
        </asp:GridView>
        <br />
    
    </div>

</asp:Content>
