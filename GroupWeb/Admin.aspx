<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GroupWeb.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
<div class=container>
        <h3> Admin Procedure List </h3>
        <br />
        <br />
    <h4 style="font-family:'Times New Roman';color:red">VIEWS</h4>
                <asp:LinkButton class="nav-link" ID="LinkButton1" runat="server" Visible="true" OnClick="ViewRent"> View Customers and their Rentals </asp:LinkButton>
                <br />
                <asp:LinkButton class="nav-link" ID="LinkButton2" runat="server" Visible="true" OnClick="ValueRent"> Total Value of rent on specific days </asp:LinkButton>
                 <br />
                <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server" Visible="true" OnClick="AmtEarned"> Amount earned from purchases </asp:LinkButton>
                <br />    
                <asp:LinkButton class="nav-link" ID="LinkButton4" runat="server" Visible="true" OnClick="AmtPurchases"> Amount earned from Rent</asp:LinkButton>
                <br />
                <asp:LinkButton class="nav-link" ID="LinkButton5" runat="server" Visible="true" OnClick="Amtsales">  Jewel that got most sales  </asp:LinkButton>
                <br />
                <h4 style="font-family:'Times New Roman';color:red">PROCEDURES</h4>
                <asp:LinkButton class="nav-link" ID="Customers" runat="server" Visible="true" OnClick="Customers_Click"> Add and Update Jewellery information</asp:LinkButton>
                <br />
                <asp:LinkButton class="nav-link" ID="UpdateSal" runat="server" Visible="true" OnClick="UpdateSalary">Update Salary </asp:LinkButton>
                 <br />
                <asp:LinkButton class="nav-link" ID="Promotion" runat="server" Visible="true" OnClick="Promotion_Click"> Promotion/Demotion </asp:LinkButton>
                <br />
                 <h4 style="font-family:'Times New Roman';color:red">TRANSACTION</h4>
                <asp:LinkButton class="nav-link" ID="Payment" runat="server" Visible="true" OnClick="Payment_Click"> Employee Payment $ Transfer </asp:LinkButton>
                <br />
                 <h4 style="font-family:'Times New Roman';color:red">FUNCTION</h4>
                <asp:LinkButton class="nav-link" ID="CustRent" runat="server" Visible="true" OnClick="CustRent_Click">Customer With The Most Rental</asp:LinkButton>
                <br />
                <asp:LinkButton class="nav-link" ID="Sales" runat="server" Visible="true" OnClick="Sales_Click"> Employe With The Most Sales </asp:LinkButton>
</div>

</asp:Content>
