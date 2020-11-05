<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="GroupWeb.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
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
                     
                     <div class="col-md-9">
                        <label> Employee ID</label>
                        <div class="form-group">
                           <asp:TextBox Class="form-control" ID="Empid" runat="server" placeholder="Employee Id" ></asp:TextBox>
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
                   
                   <div class="col-12">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="View Database" OnClick="Button3_Click1" />
                     </div>
                   <br />
                   <div class="col-12">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-danger" runat="server" Text="Transfer" OnClick="Button3_Click" />
                     </div>
                     </div>
                </div>
             
            <br>
            <br>
          </div>
    
        <div class="col-md-7">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4> Payment </h4>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">

                        </div>
                    </div>
                    <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Advance_Database_Project1ConnectionString %>" SelectCommand="SELECT * FROM [Payment]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Emp_id" HeaderText="Emp_id" SortExpression="Emp_id" />

                                <asp:BoundField DataField="Admin_Account" HeaderText="Admin_Account" SortExpression="Admin_Account" />
                                <asp:BoundField DataField="Emp_Account" HeaderText="Emp_Account" SortExpression="Emp_Account" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
      
                </div>
            </div>
        </div>
               </div>  
        </div>
</asp:Content>
