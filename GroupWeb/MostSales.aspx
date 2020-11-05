<%@ Page Title="MostSalest" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MostSales.aspx.cs" Inherits="GroupWeb.MostSales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
<div>
        <br />
        <br />
        <br />
        <h4>Employee With The Most Sales</h4>
        &emsp;
        <asp:TextBox Class="form-control" ID="Sales" runat="server"></asp:TextBox> 
        
        <asp:Button ID="Button1" runat="server" Text="Show Me" Font-Bold="True" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="true">
                           
                         </asp:GridView>
        <br />
        <br />
    </div>
</asp:Content>
