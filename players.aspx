<%@ Page Language="VB" AutoEventWireup="false" CodeFile="players.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="playerDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Players %>" SelectCommand="SELECT * FROM [Players]" DeleteCommand="DELETE FROM [Players] WHERE [plID] = @plID" InsertCommand="INSERT INTO [Players] ([plName], [plCollege], [plTeam], [plPosistion], [plPPG]) VALUES (@plName, @plCollege, @plTeam, @plPosistion, @plPPG)" UpdateCommand="UPDATE [Players] SET [plName] = @plName, [plCollege] = @plCollege, [plTeam] = @plTeam, [plPosistion] = @plPosistion, [plPPG] = @plPPG WHERE [plID] = @plID">
            <DeleteParameters>
                <asp:Parameter Name="plID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="plName" Type="String" />
                <asp:Parameter Name="plCollege" Type="String" />
                <asp:Parameter Name="plTeam" Type="String" />
                <asp:Parameter Name="plPosistion" Type="String" />
                <asp:Parameter Name="plPPG" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="plName" Type="String" />
                <asp:Parameter Name="plCollege" Type="String" />
                <asp:Parameter Name="plTeam" Type="String" />
                <asp:Parameter Name="plPosistion" Type="String" />
                <asp:Parameter Name="plPPG" Type="String" />
                <asp:Parameter Name="plID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="plID" DataSourceID="playerDataSource" Width="564px" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="plName" HeaderText="Player Name" SortExpression="plName" />
                <asp:BoundField DataField="plCollege" HeaderText="College" SortExpression="plCollege" />
                <asp:HyperLinkField DataNavigateUrlFields="plID" DataNavigateUrlFormatString="playerdetail.aspx?plID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
