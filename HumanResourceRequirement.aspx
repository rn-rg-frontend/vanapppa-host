<%@ Page Title="Van - Human Resource Requirement" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="HumanResourceRequirement.aspx.cs" Inherits="vansystem.HumanResourceRequirement" %>

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
                        <h3 class="tile-title">Human Resource Requirement</h3>
                        <div class="tile-body">

                            <!-- Category of Post (Textbox) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Category of Post<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtCategoryOfPost" runat="server" CssClass="form-control" placeholder="Category of Post" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCategoryOfPost" runat="server" ControlToValidate="txtCategoryOfPost" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<!-- Status (Dropdown) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Status<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control" required="true">
            <asp:ListItem Text="Select Status" Value=""></asp:ListItem>
            <asp:ListItem Text="Permanent" Value="Permanent"></asp:ListItem>
            <asp:ListItem Text="Temporary" Value="Temporary"></asp:ListItem>
            <asp:ListItem Text="Contractual" Value="Contractual"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlStatus" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<!-- Number (Integer) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Number<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" placeholder="Number" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNumber" runat="server" ControlToValidate="txtNumber" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ForeColor="Red" ID="RangeValidator1" runat="server" ControlToValidate="txtNumber" MinimumValue="1" MaximumValue="2000000000" Type="Integer" ErrorMessage="Please enter a valid value">
</asp:RangeValidator>
    </div>
</div>

<!-- Status (Recruited) (Integer) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Status (Recruited)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtStatusRecruited" runat="server" CssClass="form-control" placeholder="Status (Recruited)" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvStatusRecruited" runat="server" ControlToValidate="txtStatusRecruited" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RangeValidator ForeColor="Red" ID="RangeValidator2" runat="server" ControlToValidate="txtStatusRecruited" MinimumValue="1" MaximumValue="2000000000" Type="Integer" ErrorMessage="Please enter a valid value"></asp:RangeValidator>
    </div>
</div>

<!-- Status (Vacant) (Integer) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Status (Vacant)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtStatusVacant" runat="server" CssClass="form-control" placeholder="Status (Vacant)" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvStatusVacant" runat="server" ControlToValidate="txtStatusVacant" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RangeValidator ForeColor="Red" ID="RangeValidator3" runat="server" ControlToValidate="txtStatusRecruited" MinimumValue="1" MaximumValue="2000000000" Type="Integer" ErrorMessage="Please enter a valid value"></asp:RangeValidator>
    </div>
</div>

<!-- Scale of Pay (Decimal) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Scale of Pay<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtScaleOfPay" runat="server" CssClass="form-control" placeholder="Scale of Pay" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvScaleOfPay" runat="server" ControlToValidate="txtScaleOfPay" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ForeColor="Red" ID="RangeValidator4" runat="server" ControlToValidate="txtScaleOfPay" MinimumValue="1" MaximumValue="2000000000" Type="Integer" ErrorMessage="Please enter a valid value"></asp:RangeValidator>
    </div>
</div>

<!-- Intended Deployment (Dropdown) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Intended Deployment<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlIntendedDeployment" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="ddlIntendedDeployment_SelectedIndexChanged">
            <asp:ListItem Text="Select Deployment" Value=""></asp:ListItem>
            <asp:ListItem Text="Protection staff" Value="Protection staff"></asp:ListItem>
            <asp:ListItem Text="Conservation Education" Value="Conservation Education"></asp:ListItem>
            <asp:ListItem Text="Ecotourism" Value="Ecotourism"></asp:ListItem>
            <asp:ListItem Text="Research" Value="Research"></asp:ListItem>
            <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvIntendedDeployment" runat="server" ControlToValidate="ddlIntendedDeployment" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<!-- Others (Textbox) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Others<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtOthers" runat="server" CssClass="form-control" placeholder="Others" required="true" Enabled="false"></asp:TextBox>
       
    </div>
</div>

<!-- Remarks (Textbox) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Remarks" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvRemarks" runat="server" ControlToValidate="txtRemarks" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
                                

                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'HumanResourceRequirements.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
