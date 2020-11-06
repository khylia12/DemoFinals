<%@ Page Title="Jewels" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Jewels.aspx.cs" Inherits="GroupWeb.Jewels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="jewel_id" align="center" DataSourceID="SqlDataSource1" Height="293px" Width="310px" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
     <ItemTemplate>
   <table align="center">
       <tr>
           <td  style="text-align: center; background-color: white">
            
           </td>
       </tr>
       <tr>
           <td style="text-align: center">
               <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderWidth="1px"
                   Height="313px" Width="418px" ImageUrl='<%# Eval("Images") %>'/>
           </td>
       </tr>
       <tr>
           <td style="text-align: center; background-color: dimgrey">
               <asp:Label ID="Label1" runat="server" Text='<%# Eval("Metal_type") %>' Font-Bold="true" 
                   Font-Names="Open Spans Extrabold" FontColor="white">
               </asp:Label>
               <asp:Label ID="Description" runat="server" Text='<%# Eval("Descrip") %>' Font-Bold="True" 
                   Font-Names="Arial" ForeColor="White" Style="text-align:center"></asp:Label>
               <br />
               <asp:Label ID="Label2" runat="server" Text="Price: $" Font-Bold="True" 
                   Font-Names="Arial" ForeColor="White" Style="text-align:center"></asp:Label>
               <asp:Label ID="Label3" runat="server" Text='<%# Eval("Valued_price") %>' Font-Bold="True" 
                   Font-Names="Arial" ForeColor="White" Style="text-align:center"></asp:Label>
           </td>
       </tr>
       <caption>
           <br />
           <tr>
               <td style="Text-align: center;">
                   <p>
                       Amount</p>
                   <asp:DropDownList ID="DropDownList1" runat="server">
                       <asp:ListItem>1</asp:ListItem>
                       <asp:ListItem>2</asp:ListItem>
                       <asp:ListItem>3</asp:ListItem>
                       <asp:ListItem>4</asp:ListItem>
                       <asp:ListItem>5</asp:ListItem>
                       <asp:ListItem>6</asp:ListItem>
                       <asp:ListItem>7</asp:ListItem>
                   </asp:DropDownList>
                   <br />
               </td>
           </tr>
       </caption>
       <tr>
       </tr>
       <tr style="text-align: center">
           <td>

               <br />
               <br />
           </td>
       </tr>
   </table>

     </ItemTemplate>
    </asp:DataList>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Adv_Database_projectConnectionString %>" SelectCommand="SELECT [jewel_id], [Metal_type], [Descrip], [Valued_price], [Images], [used_jewellery], [Buy_Price], [QuantityAvailable] FROM [Jewellery1]">

     </asp:SqlDataSource>
</asp:Content>
