<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="View Course.aspx.cs" Inherits="UniversityManagementSystem.Student.View_Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View Registered Course</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">View Courses</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      <div class="form-group">

                                          <asp:GridView ID="GridView1" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                              <Columns>
                                                  <asp:BoundField DataField="Studentname" HeaderText="Studentname" SortExpression="Studentname" />
                                                  <asp:BoundField DataField="RegisteredCourse" HeaderText="RegisteredCourse" SortExpression="RegisteredCourse" />
                                              </Columns>
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT * FROM [Registeredcourse] WHERE ([Studentname] = @Studentname)">
                                              <SelectParameters>
                                                  <asp:SessionParameter Name="Studentname" SessionField="Student" Type="String" />
                                              </SelectParameters>
                                          </asp:SqlDataSource>

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
