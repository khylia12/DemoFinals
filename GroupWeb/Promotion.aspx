<%@ Page Title="Promotion" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Promotion.aspx.cs" Inherits="GroupWeb.Promotion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
    <h4 style="color:red;text-align:center;font-family:'Times New Roman'">Notice: Employee Type Must Be Either Manager, Sales Rep, Cashier, Or Security Guard, Else Procedure Won't Be Processed Due To A Trigger In The Database</h4>"
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Promotion/Demotion</h4>
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
                        <label>Employee ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="Emp_id" runat="server" placeholder="Employee ID" ></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="GoButton" runat="server" Text="Go" OnClick="Gobutton" Height="37px" ></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-7">
                        <label> Employee Type</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="Emp_Type" runat="server" placeholder="Employee Type"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>DOB</label>
                        <div class="form-group">            
                            <asp:TextBox CssClass="form-control" ID="DOB" runat="server" placeholder="Date Of Birth"></asp:TextBox>                        
                        </div>
                        <label>Address</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="Address" runat="server" placeholder="Address"></asp:TextBox>
                          </div>
                     </div>
                     <div class="col-md-6">
                        <label>Name</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="Name" runat="server" placeholder="Name"></asp:TextBox>
                   </div>
                        </div>
                     </div>
                   
                   <div class="row">                     
                     
                       <div class="col-12">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-danger" runat="server" Text="UPDATE" OnClick="Button3_Click" />
                     </div>
                       
                  </div>
                     </div>
                </div>
             
            <br>
             <asp:Button ID="Button2" runat="server" Text="<< Go Back" Font-Bold="True" OnClick="Button2_Click" />
            <br>
          </div>
    
        <div class="col-md-7">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4> Promotion Database  </h4>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">

                        </div>
                    </div>
                    <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Advance_Database_Project1ConnectionString %>" SelectCommand="SELECT * FROM [Employee1]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Emp_id">
                            <Columns>
                                <asp:BoundField DataField="Emp_id" HeaderText="Emp_id" SortExpression="Emp_id" ReadOnly="True" />

                                <asp:BoundField DataField="Emp_Type" HeaderText="Emp_Type" SortExpression="Emp_Type" />
                                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
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
