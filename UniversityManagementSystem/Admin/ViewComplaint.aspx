<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewComplaint.aspx.cs" Inherits="UniversityManagementSystem.Admin.ViewComplaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View Complaint</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">View Complaint</h3>
                                  </div>
                                  <hr>
                                   <form id="form1" runat="server">
                                     
                                      <div class="form-group">

                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="Complaint" HeaderText="Complaint" SortExpression="Complaint" />
                                              </Columns>
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT * FROM [Complaint]"></asp:SqlDataSource>

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
