<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="GroupWeb.Payment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Employee Account $ Transfer</h4>
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
                     <div class="col-md-3">
                        <label>Admin Id</label>
                         
                        <div class="form-group">
                           <div class="input-group">
                               <asp:TextBox Class="form-control" ID="Admin" runat="server" placeholder="Admin Id"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                        <label> Employee ID</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="Empid" runat="server" placeholder="Employee Id"></asp:TextBox>
                            <asp:LinkButton class="btn btn-primary" ID="GoButton" runat="server" Text="Go" OnClick="Gobutton" Height="37px" ></asp:LinkButton>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Admin Balance</label>
                        <div class="form-group">            
                            <asp:TextBox Class="form-control" ID="AdminBal" runat="server" placeholder="Admin Account Balance"></asp:TextBox>                        
                        </div>
                        <label>Employee Balance</label>
                        <div class="form-group">
                            <asp:TextBox Class="form-control" ID="EmpBal" runat="server" placeholder="Employee Account Balance"></asp:TextBox>
                          </div>
                     </div>
                     <div class="col-md-6">
                        <label>Amount Transfering</label>
                        <div class="form-group">
                            <asp:TextBox Class="form-control" ID="Trans" runat="server" placeholder="Amount Transfering"></asp:TextBox>
                   </div>
                        </div>
                     </div>
                   
                   <div class="row">                     
                     
                       <div class="col-12">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-danger" runat="server" Text="Transfer" OnClick="Button3_Click" />
                     </div>

                      <div>

                          <asp:GridView ID="GridView1" runat="server" Height="130px" style="margin-top: 19px" Width="198px">
                          </asp:GridView>
                          <br />
                          <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="33px" OnClick="Button3_Click1" Text="View Database" Width="126px" />

                      </div>
                       
                  </div>
                     </div>
                </div>
             
            <br>
             <asp:Button ID="Button2" runat="server" Text="<< Go Back" Font-Bold="True" OnClick="Button2_Click" style="margin-top: 0" />
            <br>
          </div>
    </div>
    </div> 
</asp:Content>
