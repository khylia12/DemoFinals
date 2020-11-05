<%@ Page Title="CustRent" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustRent.aspx.cs" Inherits="GroupWeb.CustRent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
    <div>
    <br />
    <br />
    <br />
    <br />
    <div class="col-md-7">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4> Details About The Customer Who Have The Most Rentals </h4>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">

                        </div>
                    </div>
                    <div class="row">
                      
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="true">
                           
                         </asp:GridView>
                     </div>
                  </div>
      
                </div>
            </div>
        </div>
               
    <br /><br />
    <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="true">
    </asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" Text="SHOW ME" Font-Bold="True" Height="32px" Width="110px" OnClick="Button1_Click" />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="<< Go Back" Font-Bold="True" Height="33px" OnClick="Button2_Click" Width="110px" />

</div>
</asp:Content>

