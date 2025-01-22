<%@ Page Title="" Language="C#" MasterPageFile="~/AdminVanUser.Master" AutoEventWireup="true" CodeBehind="Admingetupdateuser.aspx.cs" Inherits="vansystem.Admingetupdateuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
   <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <link rel="stylesheet" type="text/css" href="/vali/css/main.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/font-awesome-custom.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/custom.css">
    <link rel="stylesheet" type="text/css" href="/global/css/ol4.css">
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <script type="text/javascript" src="/vali/js/jquery-3.2.1.min.js"></script>
    <style type="text/css">
        h6.titleBar, h5 {
            margin: 15px 0;
        }

        h5 {
            margin-bottom: 0;
        }

        div.box {
            height: 200px;
            overflow-y: scroll;
            border: 1px solid #cacaca;
            background: #FAFAFA;
            border: 2px solid #ced4da;
            border-radius: 4px;
        }

        .elementBox {
            /* margin: 0 15px; */
            padding: 10px;
            border: 2px solid #ced4da;
            border-radius: 4px;
        }

        .errorMessage {
            background-color: white;
            width: 143px;
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-left: 107px;
           /* visibility: hidden;*/
            border-radius: 10px;
            position: relative;
            float: left;
        }

            .errorMessage.top-arrow:after {
                content: " ";
                position: absolute;
                right: 90px;
                top: -15px;
                border-top: none;
                border-right: 10px solid transparent;
                border-left: 10px solid transparent;
                border-bottom: 15px solid white;
            }
             .required-field-message {
            color: Red;
            position: absolute;
            top: 34px;
            /*visibility: visible !important;*/
        }
             #img{
                width:20px;
                height:20px;
                position:absolute;
                top:14%;
                right:5%;
            }
            #pass{
                width:20px;
                height:20px;
                position:absolute;
                top:14%;
                right:5%;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="app-content">
        <form name="simpleForm" class="form-horizontal" method="post" action="/postNewUser">
            <input type="hidden" name="user_role" id="userRole" value="3" />
            <div class="row">
                <div class="col-md-6">
                    <div class="tile">
                        <h3 class="tile-title">Update System User</h3>
                        <div class="tile-body">
                            <div class="form-group row">
                                <label class="control-label col-md-3">Name<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Enter full name" type="text" runat="server" maxlength="25" name="name" id="name" value="" required />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="name" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label class="control-label col-md-3">Mobile Number<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Enter Mobile Number" type="text" maxlength="10" name="mob_number" runat="server" id="mob_number" value="" required />
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="mob_number" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                  
                                </div>
                            </div>
                              
                            <div class="form-group row">
                                <label class="control-label col-md-3">Email<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control email" placeholder="Enter Email Address" type="email" maxlength="50" data-current="" name="email" value="" id="email" runat="server" />
                                    <small class="error hide" id="errorEmail"></small>
                                      
                                    <asp:Label ID="Label1" runat="server" Text="" Style="color: red;"></asp:Label>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Please fill out this field." ForeColor="Red">
                               </asp:RequiredFieldValidator>
                                </div>
                            </div>
                                           
                             <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">System Role<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    
                                    <asp:DropDownList ID="ddlrole" runat="server" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlrole" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
                                </div>
                            </div>
                              <br/>
                            <div class="form-group row">
							<label class="control-label col-md-3" style="margin-top:3px;">Password<b class="text-danger">&nbsp;*</b></label>
							<div class="col-md-8">
								
								<input class="form-control" placeholder="Enter Password" type="password" maxlength="20" name="password" required runat="server" id="password"/>
								 <img src="images/Eye.png" id="img" />
                                <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="Please fill out this field." ForeColor="Red">
                               </asp:RequiredFieldValidator>
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-md-3" style="margin-top:3px;">Retype Password<b class="text-danger">&nbsp;*</b></label>
							<div class="col-md-8">
								
								<input class="form-control" placeholder="Enter Password Again" type="password" maxlength="20" data-match="#password" name="re_password" runat="server" id="retypepassword" />
								<img src="images/Eye.png" id="pass" />
                                <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="retypepassword" ErrorMessage="Please fill out this field." ForeColor="Red">
                               </asp:RequiredFieldValidator>
								<asp:CompareValidator ID="CompareValidator1" runat="server"  ControlToValidate="retypepassword" ControlToCompare="password" ErrorMessage="Your passwords do not match up!" ToolTip="Password must be the same" ForeColor="Red" ></asp:CompareValidator>
							</div>
						</div>
							
                            <input type="hidden" name="role" id="role" value="15" />
                            <input type="hidden" name="state_code" id="state" value="913600000000000000" />

                        </div>
                        <div class="tile-footer">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-3">
                                    <button class="btn btn-primary" type="submit" runat="server" onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update User Details</button>
                                    <button class="btn btn-danger" type="button" onclick="window.location = 'Admingetusers.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </form>
        <p class="errorMessage top-arrow"></p>
    </div>

    <script>
        function validateForm() {
            var nameVal = document.forms["simpleForm"]["name"].value;
            if (nameVal == null || nameVal == "") {
                document.getElementsByClassName("errorMessage")[0].style.visibility = "visible";
                document.getElementsByClassName("errorMessage")[0].innerHTML = "Please Fill out this field";
                return false;
            } else {
                return true;
            }
        }
    </script>
     <script>
         debugger;
         let img = document.getElementById("img");
         let password = document.getElementById("ContentPlaceHolder1_password");

         img.onclick = function () {
             if (password.type == "password") {

                 password.type = "text";
                 img.src = "images/show.png";
             } else {
                 password.type = "password";
                 img.src = "images/Eye.png";
             }
         }


     </script>
    <script>
        debugger;
        let pass = document.getElementById("pass");
        let password1 = document.getElementById("ContentPlaceHolder1_retypepassword");

        pass.onclick = function () {

            if (password1.type == "password") {

                password1.type = "text";
                pass.src = "images/show.png";
            } else {
                password1.type = "password";
                pass.src = "images/Eye.png";
            }

        }
    </script>
     <script> 
         function validateEmail(emailId) {
             var mailformat = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
             if (emailId.value.match(mailformat)) {

                 return true;
             }
             else {
                 alert("Invalid email address.");
                 emailId.value = "";
             }
         }
     </script>
    <script src="/vali/js/user-add.js"></script>
</asp:Content>
