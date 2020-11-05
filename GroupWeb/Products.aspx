<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="GroupWeb.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
    <center>
    <div class="col-md-7">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
           
                            <center>
                                <h4> Jewellery </h4>
                            </center>
                        </div>
                    </div>                                      
                    <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Advance_Database_Project1ConnectionString %>" SelectCommand="SELECT * FROM [Jewellery1]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="jewel_id">
                            <Columns>
                                <asp:BoundField DataField="jewel_id" HeaderText="jewel_id" SortExpression="jewel_id" ReadOnly="True" />

                                <asp:BoundField DataField="Metal_type" HeaderText="Metal_type" SortExpression="Metal_type" />
                                <asp:BoundField DataField="Descrip" HeaderText="Descrip" SortExpression="Descrip" />
                                <asp:BoundField DataField="Valued_price" HeaderText="Valued_price" SortExpression="Valued_price" />
                                <asp:BoundField DataField="used_jewellery" HeaderText="used" SortExpression="used_jewellery" />
                                <asp:BoundField DataField="Buy_Price" HeaderText="Buy_Price" SortExpression="Buy_Price" />
                                <asp:BoundField DataField="QuantityAvailable" HeaderText="Quantity" SortExpression="QuantityAvailable" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
                    </div>
                </div>
            </div>
        </center>
        
</asp:Content>
