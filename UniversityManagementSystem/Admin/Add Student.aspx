<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add Student.aspx.cs" Inherits="UniversityManagementSystem.Staff.Add_Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cl" runat="server">
    <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                        <h1>Student Registration Form</h1>
                    </a>
                </div>
                <div class="login-form">
                    <form id="form1" runat="server">
                        <div class="form-group">
                            <label>First Name</label>
                            <asp:TextBox ID="firstname" class="form-control" runat="server" placeholder="First Name"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Last Name</label>
                            <asp:TextBox ID="Lastname" class="form-control" runat="server" placeholder="Last Name"></asp:TextBox>

                        </div>
                         <div class="form-group">
                            <label>Enrollment No</label>
                            <asp:TextBox ID="enrollmentno" class="form-control" runat="server" placeholder="Enrollment No"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Username</label>
                            <asp:TextBox ID="Username" class="form-control" runat="server" placeholder="Username"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <asp:TextBox ID="Password" class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

                        </div> 

                        <div class="form-group">
                            <label>Email</label>
                            <asp:TextBox ID="email" class="form-control" runat="server" placeholder="Email"></asp:TextBox>

                        </div>

                         <div class="form-group">
                            <label>Contact</label>
                            <asp:TextBox ID="Contact" class="form-control" runat="server" placeholder="Contact"></asp:TextBox>

                        </div>

                       

                        
                       
                       
                       
                      <asp:Button ID="B1" runat="server" class="btn btn-primary btn-flat m-b-30 m-t-30" Text="Register" OnClick="B1_Click" />
                        <div class="register-link m-t-15 text-center">
                            <p>Already have account ? <a href="Studentloging.aspx"> Sign in</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</asp:Content>
