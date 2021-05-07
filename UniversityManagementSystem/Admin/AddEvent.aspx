﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="UniversityManagementSystem.Admin.AddEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
     <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Add Event</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">Add Event</h3>
                                  </div>
                                  <hr>
                                  <form action="" runat="server" method="post" novalidate="novalidate">
                                     
                                      
                                       


                                      <div class="form-group">
                                          <label>Event Date</label>
                                          <asp:TextBox ID="txtdate" CssClass="form-control"  TextMode="Date" runat="server"></asp:TextBox>

                                      </div>

                                      <div class="form-group">
                                          <label>Time</label>
                                          <asp:TextBox ID="TxtTime" CssClass="form-control"  TextMode="DateTime" runat="server"></asp:TextBox>

                                      </div>
                                       


                                      <div class="form-group">
                                          <label>Add Event</label>
                                          <asp:TextBox ID="TextBox1" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                                      </div>
                                       
                                      
                                     
                                      
                                      <div>
                                         

                                         <asp:Button ID="btnadd" class="btn btn-lg btn-info btn-block"  runat="server" Text="Add Event" OnClick="btnadd_Click" />
                                      </div>
                                        <div class="alert alert-success"  id="msg" runat="server" style="margin-top:10px; display:none">
                           <strong>Event Added Successfully </strong>
                        </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div>

</asp:Content>
