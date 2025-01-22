<%@ Page Title="Van - Lease Land" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="LeaseLand.aspx.cs" Inherits="vansystem.LeaseLand" %>

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
    <script type="text/javascript">


        function NumberCheck(input) {

            let value = input.value;/*<a href="NTFPExtraction.aspx">NTFPExtraction.aspx</a>*/
            let numbers = value.replace(/[^0-9]/g, "");
            input.value = numbers;
        }

        function DecimalCheck(input) {

            let value = input.value;
            let numbers = value.replace(/[^0-9.]/g, "");
            input.value = numbers;
        }

        function SplCharCheck(input) {

            let value = input.value;
            let numbers = value.replace(/[^A-Za-z.,/_&( )@]/g, "").trimStart();
            input.value = numbers;
        }

        function YearCheck(input) {
            let value = input.value;

            // Keep only digits and limit to 4 digits
            let year = value.replace(/[^0-9]/g, "").substring(0, 4);

            input.value = year;
        }






    </script>
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
           /* / margin: 0 15px; /*/
            padding: 10px;
            border: 2px solid #ced4da;
            border-radius: 4px;
        }

 /*       .errorMessage {
            background-color: white;
            width: 143px;
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-left: 107px;
            visibility: hidden;
            border-radius: 10px;
            position: relative;
            float: left;
        }*/

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
                top:15%;
                right:5%;
            }
            #pass{
                width:20px;
                height:20px;
                position:absolute;
                top:15%;
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
                        <h3 class="tile-title">Lease Land</h3>
                        <div class="tile-body">
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Lease type<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">                                 
                                    <input class="form-control" placeholder="Lease type" type="text" runat="server" maxlength="25" name="lease_type" id="lease_type" onkeypress="return isAlphabet(event)"/>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lease_type" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">G.O. number<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="G.O. number" type="text" runat="server" maxlength="25" name="go_number" id="go_number" onkeypress=""/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="go_number" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">G.O Date<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="YYYY-MM-DD" TextMode="Date" min="1947-01-01" runat="server" name="go_date" id="go_date" onkeypress=""/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="go_date" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Period of lease<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Period of lease" type="text" runat="server" maxlength="25" name="period_of_lease" id="period_of_lease" onkeypress=""/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="period_of_lease" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Lease rent if any<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Lease rent if any" type="text" runat="server" maxlength="25" name="lease_rent_if_any" id="lease_rent_if_any" onkeypress=""/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="lease_rent_if_any" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Lease Status<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Lease Status" type="text" runat="server" maxlength="25" name="lease_status" id="lease_status" onkeypress=""/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="lease_status" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Lease Area in ha<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Lease Area in ha" type="text" runat="server" maxlength="25" name="lease_area" id="lease_area" onkeypress=""/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="lease_area" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Agency name<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Agency name" type="text" runat="server" maxlength="25" name="agency_name" id="agency_name" onkeypress="return isAlphabet(event)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="agency_name" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Purpose of Lease<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Purpose of Lease" type="text" runat="server" maxlength="25" name="purpose_of_lease" id="purpose_of_lease" onkeypress="return isAlphabet(event)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="purpose_of_lease" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                          

                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'LeaseLands.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
                                        <br />
                                        <asp:Label ID="insertbox" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
          </div>
        <p class="errorMessage top-arrow"></p>
      
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
        function isAlphabet(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122) || charCode == 32) {
                return true;
            }
            return false;
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
