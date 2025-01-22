<%@ Page Title="Van - Maintenance of Waterbody" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="MaintenanceOfWaterbody.aspx.cs" Inherits="vansystem.MaintenanceOfWaterbody" %>

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
                        <h3 class="tile-title">Maintenance of Waterbody</h3>
                        <div class="tile-body">
                                                             

      
                        <!-- Waterbody Type -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Waterbody Type<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:DropDownList ID="ddlWaterbodyType" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlWaterbodyType_SelectedIndexChanged"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvWaterbodyType" runat="server" ControlToValidate="ddlWaterbodyType" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Category -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Category<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Other Category -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Other Category</label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtOtherCategory" runat="server" CssClass="form-control" Enabled="false" placeholder="Specify other category"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOtherCategory" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Availability -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Availability<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:DropDownList ID="ddlAvailability" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvAvailability" runat="server" ControlToValidate="ddlAvailability" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Compartment Name -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Compartment Name<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtCompartmentName" runat="server" CssClass="form-control" placeholder="Compartment Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCompartmentName" runat="server" ControlToValidate="txtCompartmentName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Latitude -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Latitude<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control" placeholder="Latitude"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLatitude" runat="server" ControlToValidate="txtLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rangeLatitude" runat="server" ControlToValidate="txtLatitude" MinimumValue="-90.0" MaximumValue="90.0" ErrorMessage="Invalid Latitude" ForeColor="Red" Type="Double"></asp:RangeValidator>
                </div>
            </div>

            <!-- Longitude -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Longitude<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtLongitude" runat="server" CssClass="form-control" placeholder="Longitude"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLongitude" runat="server" ControlToValidate="txtLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rangeLongitude" runat="server" ControlToValidate="txtLongitude" MinimumValue="-180.0" MaximumValue="180.0" ErrorMessage="Invalid Longitude" ForeColor="Red" Type="Double"></asp:RangeValidator>
                </div>
            </div>

            <!-- Year -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Year<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvYear" runat="server" ControlToValidate="ddlYear" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Nature of Work -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Nature of Work<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:DropDownList ID="ddlNatureOfWork" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlNatureOfWork_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvNatureOfWork" runat="server" ControlToValidate="ddlNatureOfWork" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Other Nature of Work -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Other Nature of Work</label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtOtherNatureOfWork" runat="server" CssClass="form-control" Enabled="false" placeholder="Specify other nature of work"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOtherNatureOfWork" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Cost -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Cost (in lakhs)<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtCost" runat="server" CssClass="form-control" placeholder="Cost (in lakhs)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCost" runat="server" ControlToValidate="txtCost" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revCost" runat="server" ControlToValidate="txtCost" ValidationExpression="^\d+$" ErrorMessage="Only numeric values allowed." ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
            </div>

            <!-- Performance -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Performance<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:DropDownList ID="ddlPerformance" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvPerformance" runat="server" ControlToValidate="ddlPerformance" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Reason -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Reason<b class="text-danger">&nbsp;</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtReason" runat="server" CssClass="form-control" placeholder="Enter reason" MaxLength="500"></asp:TextBox>
                   </div>
            </div>
                           
                                

                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'MaintenanceOfWaterbodies.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
