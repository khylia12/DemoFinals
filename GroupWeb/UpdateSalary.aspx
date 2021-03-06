﻿<%@ Page Title="Salary" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateSalary.aspx.cs" Inherits="GroupWeb.UpdateSalary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PH1" runat="server">
    <h4 style="color:red;text-align:center;font-family:'Times New Roman'">Notice: Salary Must Not Exceed $60,000.00, Else Procedure Won't Be Proceed Due To A Trigger In The Database</h4>"
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Update Salary</h4>
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
                        <label>Salary Number</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="Salary_No" runat="server" placeholder="Salary ID" ></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="GoButton" runat="server" Text="Go" OnClick="Gobutton" Height="37px" ></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-7">
                        <label>Salary Amount</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="Salary_Amt" runat="server" placeholder="Salary Amount"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Job Type</label>
                        <div class="form-group">            
                            <asp:TextBox CssClass="form-control" ID="jobTyoe" runat="server" placeholder="Job Type"></asp:TextBox>                        
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
             
                <asp:Button ID="Button2" runat="server" Text="&lt;&lt; Go Back" Font-Bold="True" Height="36px" OnClick="Button2_Click" Width="104px" />
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
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Advance_Database_Project1ConnectionString %>" SelectCommand="SELECT * FROM [Salary1]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Salary_no">
                            <Columns>
                                <asp:BoundField DataField="Salary_no" HeaderText="Salary_no" SortExpression="Salary_no" ReadOnly="True" />

                                <asp:BoundField DataField="Salary_Amount" HeaderText="Salary_Amount" SortExpression="Salary_Amount" />
                                <asp:BoundField DataField="Job_type" HeaderText="Job_type" SortExpression="Job_type" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
      
                </div>
            </div>
        </div>
       

</asp:Content>
