<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search1.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="seach box">
    
        <asp:SqlDataSource ID="PlayerDate" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Players %>" SelectCommand="SELECT * FROM [Players]"></asp:SqlDataSource>
        <br />
        <br />
        Search For a Player by Name <asp:TextBox ID="tbPlayer" runat="server"></asp:TextBox>
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="plID" DataSourceID="PlayerDate">
            <Columns>
                <asp:BoundField DataField="plName" HeaderText="Player Name" SortExpression="plName" />
                <asp:BoundField DataField="plCollege" HeaderText="College" SortExpression="plCollege" />
                <asp:BoundField DataField="plTeam" HeaderText="Current Team" SortExpression="plTeam" />
                <asp:BoundField DataField="plPosistion" HeaderText="Position" SortExpression="plPosistion" />
                <asp:BoundField DataField="plPPG" HeaderText="Season PPG" SortExpression="plPPG" />
            </Columns>
        </asp:GridView>
        <br />
 
</asp:Content>

