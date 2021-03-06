<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffRegister.aspx.cs" Inherits="UniversityManagementSystem.Staff.Register" %>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Student Registration Form</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body class="bg-dark">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                        <img src="Enugu-State-Polytechnic.png" />
                        <h1>Staff Registration Form</h1>
                    </a>
                </div>
                <div class="login-form">
                    <form id="form1" runat="server">

                        <div class="form-group">
                            <label>Full Name</label>
                            <asp:TextBox ID="fullname" class="form-control" runat="server" placeholder="First Name"></asp:TextBox>

                        </div>

                        <div class="form-group">
                            <label>Department</label>
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                <asp:ListItem>Science</asp:ListItem>
                                <asp:ListItem>Accounting</asp:ListItem>
                                <asp:ListItem>Buisness</asp:ListItem>
                                <asp:ListItem>Banking and finance</asp:ListItem>
                            </asp:DropDownList>
                        </div>



                        <div class="form-group">
                            <label>First Name</label>
                            <asp:TextBox ID="firstname" class="form-control" runat="server" placeholder="First Name"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Last Name</label>
                            <asp:TextBox ID="Lastname" class="form-control" runat="server" placeholder="Last Name"></asp:TextBox>

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

                        <div class="form-group">
                            <label>Staff Image</label>
                            <asp:FileUpload ID="F1" class="form-control" runat="server" />

                        </div>

                        
                       
                       
                       
                      <asp:Button ID="B1" runat="server" class="btn btn-primary btn-flat m-b-30 m-t-30" Text="Register" OnClick="B1_Click" />
                        <div class="register-link m-t-15 text-center">
                            <p>Already have account ? <a href="Studentloging.aspx"> Sign in</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>

    <script src="https://www.google.com/recaptcha/api.js?onload=renderRecaptcha&render=explicit" async defer></script>
    



</body>
</html>

