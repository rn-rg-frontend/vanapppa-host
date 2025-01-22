<%@ Page Title="Van - Staff Details" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="StaffDetail.aspx.cs" Inherits="vansystem.StaffDetail" %>

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
    <script type="text/javascript">
        function validateAvailableStrength(source, args) {
            // Get values from the textboxes
            var maleStaff = parseInt(document.getElementById('<%= txt_number_of_male_staff.ClientID %>').value) || 0;
        var femaleStaff = parseInt(document.getElementById('<%= txt_number_of_female_staff.ClientID %>').value) || 0;
        var availableStrength = parseInt(document.getElementById('<%= txt_available_strength.ClientID %>').value) || 0;

            // Check if availableStrength equals the sum of maleStaff and femaleStaff
            args.IsValid = (availableStrength === (maleStaff + femaleStaff));
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
                        <h3 class="tile-title">Staff Details</h3>
                        <div class="tile-body">

                             <div class="form-group row">
     <label class="control-label col-md-3" style="margin-top: 11px;">Designation<b class="text-danger">&nbsp;*</b></label>
     <div class="col-md-8">                                 
         <asp:DropDownList ID="ddlDesignation" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="ddlDesignation_SelectedIndexChanged">
             <asp:ListItem Text="Select Class Type" Value=""></asp:ListItem>
            <asp:ListItem Text="Forest Shramik" Value="Forest Shramik"></asp:ListItem>
    <asp:ListItem Text="Forest Guard" Value="Forest Guard"></asp:ListItem>
    <asp:ListItem Text="Deputy Ranger" Value="Deputy Ranger"></asp:ListItem>
    <asp:ListItem Text="Ranger" Value="Ranger"></asp:ListItem>
    <asp:ListItem Text="Circle Officer" Value="Circle Officer"></asp:ListItem>
    <asp:ListItem Text="Additional Director" Value="Additional Director"></asp:ListItem>
    <asp:ListItem Text="Deputy Director" Value="Deputy Director"></asp:ListItem>
    <asp:ListItem Text="Director" Value="Director"></asp:ListItem>
    <asp:ListItem Text="Veterinary Doctor" Value="Veterinary Doctor"></asp:ListItem>
    <asp:ListItem Text="GIS Specialist" Value="GIS Specialist"></asp:ListItem>
    <asp:ListItem Text="Administration" Value="Administration"></asp:ListItem>
    <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlDesignation" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
     </div>
 </div>
                                                             
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Others<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtOthers" runat="server" CssClass="form-control" placeholder="Others" required="true" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtOthers" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
    </div>
</div>


                <div class="form-group row">
                    <label class="control-label col-md-3" style="margin-top: 11px;">Sanctioned Strength<b class="text-danger">&nbsp;*</b></label>
                    <div class="col-md-8">                                 
                        <asp:TextBox ID="txt_sanctioned_strength" runat="server" CssClass="form-control" placeholder="Sanctioned Strength" required="true" oninput="NumberCheck(this)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTotalLength" runat="server" ControlToValidate="txt_sanctioned_strength" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="control-label col-md-3" style="margin-top: 11px;">Available Strength<b class="text-danger">&nbsp;*</b></label>
                    <div class="col-md-8">                                 
                        <asp:TextBox ID="txt_available_strength" runat="server" CssClass="form-control" placeholder="Available Strength" required="true" oninput="NumberCheck(this)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLengthWithinPA" runat="server" ControlToValidate="txt_available_strength" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="cvStrengthValidation" runat="server" ControlToValidate="txt_available_strength" ErrorMessage="Available Strength must equal the sum of Male and Female Staff."
    ClientValidationFunction="validateAvailableStrength" Display="Dynamic" ForeColor="Red">
</asp:CustomValidator>
                    </div>
                </div>

                            
                <div class="form-group row">
                    <label class="control-label col-md-3" style="margin-top: 11px;">Number Of Staff (Male)<b class="text-danger">&nbsp;*</b></label>
                    <div class="col-md-8">                                 
                        <asp:TextBox ID="txt_number_of_male_staff" runat="server" CssClass="form-control" placeholder="Number Of Staff (Male)" required="true" oninput="NumberCheck(this)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_number_of_male_staff" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Number Of Staff (Female)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txt_number_of_female_staff" runat="server" CssClass="form-control" placeholder="Number Of Staff (Female)" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_number_of_female_staff" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

              

  <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Are training needs of staff and officials met<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
             <asp:DropDownList ID="ddl_training_needs_of_staff_and_officials_met" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="ddl_training_needs_of_staff_and_officials_met_SelectedIndexChanged">
         <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
        <asp:ListItem Text="No" Value="No"></asp:ListItem>
     </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddl_training_needs_of_staff_and_officials_met" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Trainings required<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txt_trainings_required" runat="server" CssClass="form-control" placeholder="Trainings required" required="true" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_trainings_required" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
                                

                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'StaffDetails.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
