<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="Registercourses.aspx.cs" Inherits="UniversityManagementSystem.Student.Registercourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                             <asp:Label ID="LabelSuccess" runat="server" Text="Label"></asp:Label>
                            <strong class="card-title">Register Course</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Select Courses</h3>
                                  </div>
                                  <hr>
                                   <form id="form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label>Select Courses</label>
                                          <asp:DropDownList ID="Courselist" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="CourseName" DataValueField="CourseName"></asp:DropDownList>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT [CourseName] FROM [Addcourse]"></asp:SqlDataSource>

                                      </div>
                                       
                                      
                                     
                                      
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Add Course" OnClick="btnadd_Click" />
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Book Added Successfully </strong>
                        </div>
                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>
</asp:Content>



