<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="getNewUser.aspx.cs" Inherits="vansystem.getNewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
	<title>Van - Update System User (Adilabad)</title>
	<link rel="stylesheet" type="text/css" href="vali/css/main.css">
	<link rel="stylesheet" type="text/css" href="vali/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="vali/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="vali/css/font-awesome-custom.css">
	<link rel="stylesheet" type="text/css" href="vali/css/custom.css">
	<link rel="stylesheet" type="text/css" href="global/css/ol4.css">
	<script type="text/javascript" src="vali/js/jquery-3.2.1.min.js"></script>
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

	 #img{
                width:20px;
                height:20px;
                position:absolute;
                top:50%;
                right:5%;
            }
            #pass{
                width:20px;
                height:20px;
                position:absolute;
                top:50%;
                right:5%;
            }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

	<div class="app-content">
		<form class="form-horizontal" method="post" action="/User/postNewUser">
			<input type="hidden" name="user_role" id="userRole" value="3" />
	<div class="row">
			<div class="col-md-6">
				<div class="tile" style="margin-right:-40px;">
					<h3 class="tile-title">New System User</h3>
					<div class="tile-body">
						<div class="form-group row">
							<label class="control-label col-md-3" style="margin-top:25px;">Name<b class="text-danger">&nbsp;*</b></label>
							<div class="col-md-8">
								<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Please fill out this field." ForeColor="Red">
                               </asp:RequiredFieldValidator>
								<input class="form-control" placeholder="Enter full name" type="text" maxlength="25" name="name" id="name" value="" runat="server" required />
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-md-3" style="margin-top:25px;">Mobile number<b class="text-danger">&nbsp;*</b></label>
							<div class="col-md-8">
								<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="mob_number" ErrorMessage="Please fill out this field." ForeColor="Red">
                               </asp:RequiredFieldValidator>
								 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Number" ForeColor="Red" ControlToValidate="mob_number" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
								<input class="form-control" placeholder="Enter Mobile Number" type="text" maxlength="10" name="mob_number" runat="server" id="mob_number" value="" required />
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-md-3" style="margin-top:10px;">Email<b class="text-danger">&nbsp;*</b></label>
							<div class="col-md-8">
								<asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="email" ErrorMessage="Please fill out this field." ForeColor="Red">
                               </asp:RequiredFieldValidator>
								<input class="form-control email" placeholder="Enter Email Address" onchange="validateEmail(this)" type="email" maxlength="50" data-current="" name="email" value="" id="email" runat="server" />
								<small class="error hide" id="errorEmail"></small>
								<asp:Label ID="Label1" runat="server" Text="" style="color:red;"></asp:Label>
							</div>
						</div>
												
						<div class="form-group row">
							<label class="control-label col-md-3"  style="margin-top:25px;">Range<b class="text-danger">&nbsp;*</b></label>
							<div class="col-md-8">
								<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlrange" ErrorMessage="Please fill out this field." ForeColor="Red" style="position: absolute; top: -2px;"></asp:RequiredFieldValidator>
								 <asp:DropDownList ID="ddlrange" runat="server"
                                     
                                        Style="padding: 5px;margin-top: 25px;">
									
                                    </asp:DropDownList>
								

								<%--<asp:Label ID="insertbox" runat="server" Text="" ForeColor="Red" style ="margin-left:-13%"></asp:Label>--%>
								<%--<input class="form-control" placeholder="Enter Range" type="text" maxlength="20" name="range" required runat="server" id="range"/>--%>
							</div>
						</div>
												<div class="form-group row">
							<label class="control-label col-md-3" style="margin-top:25px;" for="user_id">User ID<b class="text-danger">&nbsp;*</b></label>

							<div class="col-md-8">
								<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="user_id" ErrorMessage="Please fill out this field." ForeColor="Red">
                               </asp:RequiredFieldValidator>
								<asp:Label ID="checkuserid" runat="server" Text="" ForeColor="Red"></asp:Label>
								<input type="text" maxlength="20" class="form-control user" id="user_id" placeholder="Enter User ID" data-current="" name="user_id" value="" required runat="server"  />
								<small class="error hide" id="errorId"></small>
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-md-3" style="margin-top:25px;">Password<b class="text-danger">&nbsp;*</b></label>
							<div class="col-md-8">
								<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="Please fill out this field." ForeColor="Red">
                               </asp:RequiredFieldValidator>
								<input class="form-control" placeholder="Enter Password" type="password" maxlength="20" name="password" required runat="server" id="password" />
								<img src="images/Eye.png" id="img" />
							</div>
						</div>
						<div class="form-group row">
							<label class="control-label col-md-3" style="margin-top:25px;">Retype Password<b class="text-danger">&nbsp;*</b></label>
							<div class="col-md-8">
								<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="retypepassword" ErrorMessage="Please fill out this field." ForeColor="Red">
                               </asp:RequiredFieldValidator>
								<asp:CompareValidator ID="CompareValidator1" runat="server"  ControlToValidate="retypepassword" ControlToCompare="password" ErrorMessage="Your passwords do not match up!" ToolTip="Password must be the same" ForeColor="Red" ></asp:CompareValidator>
								<input class="form-control" placeholder="Enter Password Again" type="password" maxlength="20" name="re_password" runat="server" id="retypepassword" />
								<img src="images/Eye.png" id="pass" />
							</div>
						</div>
						
					</div>
					
					
					<div class="tile-footer">
						<div class="row">
							<div class="col-md-8 col-md-offset-3">
								<button class="btn btn-primary" type="submit" runat="server" onserverclick="btnSave_Click"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save User Details</button>
								<button class="btn btn-danger" type="button"  onclick="window.location = '/getUsers';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
								<br />
								
							</div>
						</div>
					</div>
				</div>
			</div>
				</div>
			
</form>
</div>
				


<script src="/vali/js/user-add.js"></script>
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
</asp:Content>