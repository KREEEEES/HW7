<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search3.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css" />
    
     <h1>Search Players</h1>
    <div id="search">
    
     <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:cs_Players %>" SelectCommand="SELECT * FROM [Players]"></asp:SqlDataSource>
   
    Search For Player:
     <asp:TextBox ID="playersTB" runat="server"></asp:TextBox>
    
    <asp:GridView ID="GridView1" runat="server" CssClass="grid-view" AutoGenerateColumns="False" DataKeyNames="plID" DataSourceID="SqlDataSource1" PageSize ="5" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="plName" HeaderText="Player Name" SortExpression="plName" />
            <asp:BoundField DataField="plCollege" HeaderText="College" SortExpression="plCollege" />
            <asp:BoundField DataField="plTeam" HeaderText="Current Team" SortExpression="plTeam" />
            <asp:BoundField DataField="plPosistion" HeaderText="Position" SortExpression="plPosistion" />
            <asp:BoundField DataField="plPPG" HeaderText="PPG" SortExpression="plPPG" />
        </Columns>
    
    </asp:GridView>
 </div>
</asp:Content>

