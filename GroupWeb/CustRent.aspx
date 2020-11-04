<%@ Page Title="CustRent" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustRent.aspx.cs" Inherits="GroupWeb.CustRent" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Details About The Customer Who Have The Most Rentals" Font-Bold="True"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <br /><br />
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" Text="SHOW ME" Font-Bold="True" Height="32px" Width="110px" OnClick="Button1_Click" />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="<< Go Back" Font-Bold="True" Height="33px" OnClick="Button2_Click" Width="110px" />

</div>
</asp:Content>
