<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="StudentComplaint.aspx.cs" Inherits="UniversityManagementSystem.Student.StudentComplaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Student Complaint</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Student Complaint</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      <div class="form-group">
                                          <label>State Your Complain</label>
                                          <asp:TextBox ID="Complaintxt" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                          

                                      </div>
                                     
                                    <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Submit" OnClick="btnadd_Click" />
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Complain Submitted you will recieve feedback soon </strong>
                        </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>


</asp:Content>
