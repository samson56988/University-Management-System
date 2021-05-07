<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewStudent.aspx.cs" Inherits="UniversityManagementSystem.Admin.ViewStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View Staff</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">View Student</h3>
                                  </div>
                                  <hr>
                                   <form id="form1" runat="server">
                                     
                                      <div class="form-group">

                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                                                  <asp:BoundField DataField="Secondname" HeaderText="Secondname" SortExpression="Secondname" />
                                                  <asp:BoundField DataField="enrollnum" HeaderText="enrollnum" SortExpression="enrollnum" />
                                                  <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                                  <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                                  <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                  <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                                              </Columns>
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT * FROM [AddStudent]"></asp:SqlDataSource>

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
