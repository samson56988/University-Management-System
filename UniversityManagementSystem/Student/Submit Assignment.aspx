<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="Submit Assignment.aspx.cs" Inherits="UniversityManagementSystem.Student.Submit_Assignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">

    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Assignment</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Submit </h3>
                                  </div>
                                  <hr>
                                   <form id="form1" runat="server">
                                     
                                      <div class="form-group">
                                          <label>Select the lecturer you want to submit too</label>
                                          <asp:DropDownList ID="lecturerlist" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="Fullname" DataValueField="Fullname"></asp:DropDownList>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT [Fullname] FROM [AddStaff]"></asp:SqlDataSource>

                                      </div>

                                      <div class="form-group">
                                          <label>Full Name</label>
                                          <asp:TextBox CssClass="form-control" ID="txtfullname" runat="server"></asp:TextBox>

                                      </div>
                                     
                                       <div class="form-group">
                                          <label>Upload Assignment</label>
                                          <asp:FileUpload ID="F1" CssClass="form-control" runat="server" />

                                      </div>

                                       
                                      
                                     
                                      
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Submit" OnClick="btnadd_Click" />
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Your Assignment has been submitted </strong>
                        </div>
                                   </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>

</asp:Content>
