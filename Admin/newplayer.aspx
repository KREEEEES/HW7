﻿<%@ Page Language="VB" MasterPageFile="~/MasterPage.Master" AutoEventWireup="false" CodeFile="newplayer.aspx.vb" Inherits="detailsview" %>
 

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .Grid-View {}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
         <link rel="stylesheet" type="text/css" href="StyleSheet2.css" />
<div id="addplayer">
    
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
      
        <asp:DetailsView ID="DetailsView1" runat="server" CssClass="Grid-View" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="plID" DataSourceID="SqlDataSource1" Height="50px" Width="299px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="plName" HeaderText="Player Name" SortExpression="plName" />
                <asp:BoundField DataField="plCollege" HeaderText="College" SortExpression="plCollege" />
                <asp:BoundField DataField="plTeam" HeaderText="Current Team" SortExpression="plTeam" />
                <asp:BoundField DataField="plPosistion" HeaderText="Position" SortExpression="plPosistion" />
                <asp:BoundField DataField="plPPG" HeaderText="Season PPG" SortExpression="plPPG" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </div>


    

</asp:Content>