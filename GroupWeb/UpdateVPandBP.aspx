<%@ Page Title="UpdateVPandBP" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateVPandBP.aspx.cs" Inherits="GroupWeb.UpdateVPandBP" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Jewel Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-md-5">
                        <label>Jewel ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="Jewel_ID" runat="server" placeholder="Jewel ID" ></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="GoButton" runat="server" Text="Go" OnClick="Gobutton" Height="37px" ></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-7">
                        <label> Metal Type</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="MetalType" runat="server" placeholder="Metal Type"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Description</label>
                        <div class="form-group">            
                            <asp:TextBox CssClass="form-control" ID="Description" runat="server" placeholder="Description"></asp:TextBox>                        
                        </div>
                        <label>Value price</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="V_Price" runat="server" placeholder="Value Price"></asp:TextBox>
                          </div>
                     </div>
                     <div class="col-md-6">
                        <label>Used Jwellery</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="U_Jewel" runat="server" placeholder="Used Jewellery"></asp:TextBox>
                   </div>
                        </div>
                     </div>
                   <div class="row">                     
                     <div class="col-md-4">
                        <label>Buy Price</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="Buy_Price" runat="server" placeholder="Buy Price" ></asp:TextBox>
                        </div>
                     </div>                       
                       <div class="col-md-4">
                        <label>Quantity Available</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="QuanAv" runat="server" placeholder="Quantity Available" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">                     
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="ADD" OnClick="Button2_Click" />
                     </div>
                       <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-danger" runat="server" Text="UPDATE" OnClick="Button3_Click" />
                     </div>
                  </div>
                     </div>
                </div>
                     <br>
             <asp:Button ID="Button5" runat="server" Text="<< Go Back" Font-Bold="True" Height="37px" style="margin-top: 0" Width="126px" OnClick="Button4_Click1" />
            <br>
          </div>
    </div>
    </div>

</asp:Content>