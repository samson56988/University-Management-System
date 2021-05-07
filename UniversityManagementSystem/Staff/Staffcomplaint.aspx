<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="Staffcomplaint.aspx.cs" Inherits="UniversityManagementSystem.Staff.Staffcomplaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

      <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Staff Complaint</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Submit Complaint</h3>
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
                           <strong>Your Complaint has been submitted and will be reviewed by the School Admin</strong>
                        </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>


</asp:Content>
