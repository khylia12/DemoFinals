<%@ Page Title="Promotion" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Promotion.aspx.cs" Inherits="GroupWeb.Promotion" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
                     <div class="col-md-3">
                        <label>Employee ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="Emp_id" runat="server" placeholder="Employee ID" ></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="GoButton" runat="server" Text="Go" OnClick="Gobutton" Height="37px" ></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
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
                            <asp:TextBox CssClass="form-control" ID="DOB" runat="server" placeholder="Description1"></asp:TextBox>                        
                        </div>
                        <label>Address</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="Address" runat="server" placeholder="Address"></asp:TextBox>
                          </div>
                     </div>
                     <div class="col-md-6">
                        <label>Name</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="Name" runat="server" placeholder="U_Jewel"></asp:TextBox>
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
    </div>
    </div>
</asp:Content>
