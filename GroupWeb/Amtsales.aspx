<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Amtsales.aspx.cs" Inherits="GroupWeb.Amtsales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
    <br />
        <br />
        <br />
    <center>
        <h4>Amount earned from Sales</h4>
        <br />
        <br />
        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="true">
                           
                         </asp:GridView>
        <br />
        <br />
        </center>
</asp:Content>
