<%@ Page Title="MostSalest" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MostSales.aspx.cs" Inherits="GroupWeb.MostSales" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Employee With The Most Sales" Font-Bold="True"></asp:Label>
        &emsp;
        <asp:TextBox ID="Sales" runat="server"></asp:TextBox> 
        &emsp;
        <asp:Button ID="Button1" runat="server" Text="Show Me" Font-Bold="True" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="&lt;&lt; Go Back" Font-Bold="True" Height="30px" OnClick="Button2_Click" />
    </div>
</asp:Content>
