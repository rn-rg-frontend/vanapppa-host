<%@ Page Title="Van - Ecotourism Partner" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="EcoTourismPartner.aspx.cs" Inherits="vansystem.EcoTourismPartner" %>

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


        #img {
            width: 20px;
            height: 20px;
            position: absolute;
            top: 15%;
            right: 5%;
        }

        #pass {
            width: 20px;
            height: 20px;
            position: absolute;
            top: 15%;
            right: 5%;
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
                        <h3 class="tile-title">Ecotourism Partner</h3>
                        <div class="tile-body">
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Name of Agency/entrepreneur<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Name of Agency/entrepreneur" type="text" runat="server" maxlength="25" name="name_of_agency_entrepreneur" id="name_of_agency_entrepreneur" onkeypress="return isAlphabet(event)" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name_of_agency_entrepreneur" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Infrastructure<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" placeholder="Infrastructure" TextMode="MultiLine" Rows="5" Columns="30" runat="server" MaxLength="150" name="infrastructure" ID="infrastructure" onkeypress=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="infrastructure" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Nature of Program<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Nature of Program" type="text" runat="server" maxlength="25" name="nature_of_program" id="nature_of_program" onkeypress="return isAlphabet(event)" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="nature_of_program" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Activity<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" placeholder="Activity" TextMode="MultiLine" Rows="5" Columns="30" runat="server" MaxLength="25" name="activity" ID="activity" onkeypress="return isAlphabet(event)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="activity" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Investment<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Investment" type="text" runat="server" maxlength="25" name="investment" id="investment" oninput="DecimalCheck(this)" onkeypress="" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="investment" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Target<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">

                                    <asp:DropDownList ID="ddltarget" runat="server" AutoPostBack="true" CssClass="form-control">

                                        <asp:ListItem>Physical</asp:ListItem>
                                        <asp:ListItem>Financial</asp:ListItem>

                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddltarget" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Number of Beneficiaries<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Number of Beneficiaries" type="text" runat="server" maxlength="25" name="number_of_beneficiaries" id="number_of_beneficiaries" oninput="NumberCheck(this)" onkeypress="" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="number_of_beneficiaries" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Benefits to local people<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" placeholder="Benefits to local people" TextMode="MultiLine" Rows="5" Columns="30" runat="server" MaxLength="125" name="benefits_to_local_people" ID="benefits_to_local_people" onkeypress="return isAlphabet(event)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="benefits_to_local_people" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Benefits to PA & resources<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox class="form-control" placeholder="Benefits to PA & resources" TextMode="MultiLine" Rows="5" Columns="30" runat="server" MaxLength="150" name="benfits_to_pa_resources" ID="benfits_to_pa_resources" onkeypress="return isAlphabet(event)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="benfits_to_pa_resources" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Community engagement<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">

                                    <asp:DropDownList ID="ddl_community_engagement" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddl_community_engagement_SelectedIndexChanged">
                                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                        <asp:ListItem Text="No" Value="No"></asp:ListItem>

                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddl_community_engagement" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">How the revenue generated<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox class="form-control" placeholder="How the revenue generated" type="text" runat="server" MaxLength="25" name="txt_revenue_generated_method" ID="txt_revenue_generated_method" onkeypress="return isAlphabet(event)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txt_revenue_generated_method" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Tourist carrying capacity estimation<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">

        <asp:DropDownList ID="ddl_tourist_carrying_capacity_estimation" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddl_tourist_carrying_capacity_estimation_SelectedIndexChanged">
            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
            <asp:ListItem Text="No" Value="No"></asp:ListItem>

        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddl_tourist_carrying_capacity_estimation" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
</div>

                                                                                    <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Carrying capacity<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Carrying capacity" type="text" runat="server" maxlength="25" name="txt_carrying_capacity" id="txt_carrying_capacity" oninput="NumberCheck(this)" onkeypress="" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txt_carrying_capacity" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>

                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;"> Footfall of tourist<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Footfall of tourist" type="text" runat="server" maxlength="25" name="txt_footfall_of_tourist" id="txt_footfall_of_tourist" oninput="NumberCheck(this)" onkeypress="" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txt_footfall_of_tourist" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Emergency plan<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">

        <asp:DropDownList ID="ddl_emergency_plan" runat="server" CssClass="form-control" AutoPostBack="true" >
            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
            <asp:ListItem Text="No" Value="No"></asp:ListItem>

        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddl_emergency_plan" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">

                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit" onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'EcoTourismPartners.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
