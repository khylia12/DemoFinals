<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AmtEarned.aspx.cs" Inherits="GroupWeb.AmtEarned" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
    <br />
        <br />
        <br />
    <center>
        <h4>Amount Earned from Purchases</h4>
        <br />
        <br />
        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="true">
                           
                         </asp:GridView>
        <br />
        <br />
        </center>
</asp:Content>
