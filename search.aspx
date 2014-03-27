<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="PlayerDate" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Players %>" SelectCommand="SELECT * FROM [Players]"></asp:SqlDataSource>
        <br />
        <br />
        Search For a Player by Name<asp:TextBox ID="tbPlayer" runat="server"></asp:TextBox>
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
    </form>
</body>
</html>
