<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="playerDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Players %>" SelectCommand="SELECT * FROM [Players]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="plID" DataSourceID="playerDataSource">
            <Columns>
                <asp:BoundField DataField="plID" HeaderText="plID" InsertVisible="False" ReadOnly="True" SortExpression="plID" />
                <asp:BoundField DataField="plName" HeaderText="plName" SortExpression="plName" />
                <asp:BoundField DataField="plCollege" HeaderText="plCollege" SortExpression="plCollege" />
                <asp:BoundField DataField="plTeam" HeaderText="plTeam" SortExpression="plTeam" />
                <asp:BoundField DataField="plPosistion" HeaderText="plPosistion" SortExpression="plPosistion" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
