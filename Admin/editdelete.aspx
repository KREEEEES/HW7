<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="editdelete.aspx.vb" Inherits="editdelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <link rel="stylesheet" type="text/css" href="StyleSheet2.css" />
    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="grid-view" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="plID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="plName" HeaderText="Name" SortExpression="plName" />
            <asp:BoundField DataField="plCollege" HeaderText="College" SortExpression="plCollege" />
            <asp:BoundField DataField="plTeam" HeaderText="Team" SortExpression="plTeam" />
            <asp:BoundField DataField="plPosistion" HeaderText="Position" SortExpression="plPosistion" />
            <asp:BoundField DataField="plPPG" HeaderText="PPG" SortExpression="plPPG" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Players %>" DeleteCommand="DELETE FROM [Players] WHERE [plID] = @plID" InsertCommand="INSERT INTO [Players] ([plName], [plCollege], [plTeam], [plPosistion], [plPPG]) VALUES (@plName, @plCollege, @plTeam, @plPosistion, @plPPG)" SelectCommand="SELECT * FROM [Players]" UpdateCommand="UPDATE [Players] SET [plName] = @plName, [plCollege] = @plCollege, [plTeam] = @plTeam, [plPosistion] = @plPosistion, [plPPG] = @plPPG WHERE [plID] = @plID">
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
</asp:Content>

