<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="view submitted assignmnt.aspx.cs" Inherits="UniversityManagementSystem.Staff.view_submitted_assignmnt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">


     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">View Submitted Assignment</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">View</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      <div class="form-group">

                                          <asp:GridView ID="GridView1" CssClass="form-control" runat="server"></asp:GridView>

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
