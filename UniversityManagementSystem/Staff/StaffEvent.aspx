<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="StaffEvent.aspx.cs" Inherits="UniversityManagementSystem.Staff.Event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">University Event</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                               <div class="card-body">
                                  <div class="card-title">
                                      <h3 class="text-center">View Event</h3>
                                  </div>
                                  <hr>
                                   <form id="form1" runat="server">
                                     
                                      <div class="form-group">

                                          <asp:GridView ID="Eventdata" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                              <Columns>
                                                  <asp:BoundField DataField="EventDate" HeaderText="EventDate" SortExpression="EventDate" />
                                                  <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                                                  <asp:BoundField DataField="Event" HeaderText="Event" SortExpression="Event" />
                                              </Columns>
                                          </asp:GridView>

                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UMSConnectionString %>" SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>

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
