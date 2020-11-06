<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="GroupWeb.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
<div style="text-align:Center; margin: 0 auto; width: 90%">
    <h3></h3>
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
        Font-Names="Colonna MT" Font-Size="X-Large" ForeColor="White" NavigateUrl="~/Jewels" style="text-align:center">Continue Buying</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#424949" EmptyDataText="No Product present in shopping cart" Font-Bold="True" Height="257px" ShowFooter="True" Width="983px" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="Csr" HeaderText="Sno">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Jid" HeaderText="Jewel">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Jimage" HeaderText="Jewel Image">
                    <ControlStyle Height="300px" Width="340px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="Jname" HeaderText="Jewelry">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="type" HeaderText="Type">
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Jprice" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="JAMT" HeaderText="Amount">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Jtotal" HeaderText="Total">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField>
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#424949" ForeColor="#FFFFCC" />
            <HeaderStyle BackColor="#424949" ForeColor="White" />
        </asp:GridView>

        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" BorderColor="Blue" BorderStyle="Ridge" Font-Size="Large" Height="46px" Width="135px" OnClick="Button1_Click" />

</div>
    

</asp:Content>