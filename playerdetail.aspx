<%@ Page Language="VB" AutoEventWireup="false" CodeFile="playerdetail.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> player details </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Player Detail</h1>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Players %>" DeleteCommand="DELETE FROM [Players] WHERE [plID] = @plID" InsertCommand="INSERT INTO [Players] ([plName], [plCollege], [plTeam], [plPosistion], [plPPG]) VALUES (@plName, @plCollege, @plTeam, @plPosistion, @plPPG)" SelectCommand="SELECT * FROM [Players] WHERE ([plID] = @plID)" UpdateCommand="UPDATE [Players] SET [plName] = @plName, [plCollege] = @plCollege, [plTeam] = @plTeam, [plPosistion] = @plPosistion, [plPPG] = @plPPG WHERE [plID] = @plID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="plID" QueryStringField="plID" Type="Int32" />
            </SelectParameters>
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
        <br />
        <a href="Default.aspx"> Go Home</a>
        &nbsp<a href="newplayer.aspx"> Add a New Player </a>
        &nbsp<a href="players.aspx"> View All Players </a>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="plID" DataSourceID="SqlDataSource1" Height="50px" Width="309px">
            <Fields>
                <asp:BoundField DataField="plName" HeaderText="Player Name" SortExpression="plName" />
                <asp:BoundField DataField="plCollege" HeaderText="College" SortExpression="plCollege" />
                <asp:BoundField DataField="plTeam" HeaderText="Current Team" SortExpression="plTeam" />
                <asp:BoundField DataField="plPosistion" HeaderText="Position" SortExpression="plPosistion" />
                <asp:BoundField DataField="plPPG" HeaderText="Season PPG" SortExpression="plPPG" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
