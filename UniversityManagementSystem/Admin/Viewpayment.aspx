<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Viewpayment.aspx.cs" Inherits="UniversityManagementSystem.Admin.Viewpayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View Payment</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">View School Fees</h3>
                                  </div>
                                  <hr>
                                   <form id="form1" runat="server">
                                     
                                      <div class="form-group">

                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                                                  <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                                                  <asp:BoundField DataField="Paymentslip" HeaderText="Paymentslip" SortExpression="Paymentslip" />
                                              </Columns>
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT * FROM [PaymentSlip]"></asp:SqlDataSource>

                                      </div>
                                       
                                      
                                     
                                      
                                      <div>
                                         

                        </div>
                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>
</asp:Content>
