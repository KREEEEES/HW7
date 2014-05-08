<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact1.aspx.vb" Inherits="contact1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />

    <div id="contact">
    <h2> Contact Our Website </h2>

        <br />

    <p> Phone: 111-222-3333 </p>
       <p> Email: nbastats@nba.org </p>

        <br />
    <p> Email:</p>
    <p> 
        <asp:TextBox ID="EmailTB" runat="server" Width="255px"></asp:TextBox>
    </p>
    <p> Message:</p>
    <p> 
        <asp:TextBox ID="MessageTB" runat="server" Height="90px" Width="253px"></asp:TextBox>
    </p>
        <p> 
            <asp:Button ID="Button1" runat="server" Text="Send " Width="92px" />
    </p>
        <p> 
            <asp:Label ID="confirmSent" runat="server"></asp:Label>
    </p>

    </div>



</asp:Content>




