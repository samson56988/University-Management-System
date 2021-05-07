<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="UniversityManagementSystem.Student.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Payment</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Submit Payment Details</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      <div class="form-group">
                                          <label>Select Year</label>
                                          <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                              <asp:ListItem>2017/2018</asp:ListItem>
                                              <asp:ListItem>2018/2019</asp:ListItem>
                                              <asp:ListItem>2019/2020</asp:ListItem>
                                              <asp:ListItem>2020/2021</asp:ListItem>
                                          </asp:DropDownList>

                                      </div>
                                       <div class="form-group">
                                          <label>Full Name</label>
                                          <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>

                                      </div>

                                      <h6>Submission of fake reciept might attract punishment</h6>
                                       <div class="form-group">
                                          <label>Upload Payment Reciept</label>
                                          <asp:FileUpload ID="F1" CssClass="form-control" runat="server" />

                                      </div>

                                       
                                      
                                     
                                      
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Submit" OnClick="btnadd_Click" />
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Payment details has been submitted successfully to the schools busary department it will be reviewed with a feedback thereafter </strong>
                        </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>

</asp:Content>
