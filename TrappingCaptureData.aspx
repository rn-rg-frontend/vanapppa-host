<%@ Page Title="Van - Trapping/Capture Data" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="TrappingCaptureData.aspx.cs" Inherits="vansystem.TrappingCaptureData" %>

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
                        <h3 class="tile-title">Trapping/Capture Data</h3>
                        <div class="tile-body">


                           <%-- <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Division<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlDivision" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlselectDivision_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDivision" runat="server" ControlToValidate="ddlDivision" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>--%>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Range<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlRange" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvRange" runat="server" ControlToValidate="ddlRange" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Section<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtSection" runat="server" CssClass="form-control" placeholder="Section" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvSection" runat="server" ControlToValidate="txtSection" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Date<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" placeholder="Date" required="true" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Forest Type<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlForestType" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="Alpine Forests" Text="Alpine Forests"></asp:ListItem>
                                        <asp:ListItem Value="Dry Tropical Forests" Text="Dry Tropical Forests"></asp:ListItem>
                                        <asp:ListItem Value="Moist Tropical Forests" Text="Moist Tropical Forests"></asp:ListItem>
                                        <asp:ListItem Value="Montane Subtropical Forests" Text="Montane Subtropical Forests"></asp:ListItem>
                                        <asp:ListItem Value="Montane Temperate Forests" Text="Montane Temperate Forests"></asp:ListItem>
                                        <asp:ListItem Value="Sub Alpine Forests" Text="Sub Alpine Forests"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvForestType" runat="server" ControlToValidate="ddlForestType" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Habitat Description<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtHabitatDescription" runat="server" CssClass="form-control" placeholder="Habitat Description" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvHabitatDescription" runat="server" ControlToValidate="txtHabitatDescription" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Trap Night<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtTrapNight" runat="server" CssClass="form-control" placeholder="Trap Night" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvTrapNight" runat="server" ControlToValidate="txtTrapNight" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Weather<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlWeather" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="Clear" Text="Clear"></asp:ListItem>
                                        <asp:ListItem Value="Cloudy" Text="Cloudy"></asp:ListItem>
                                        <asp:ListItem Value="Fog" Text="Fog"></asp:ListItem>
                                        <asp:ListItem Value="Rainy" Text="Rainy"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvWeather" runat="server" ControlToValidate="ddlWeather" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Select Method<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlSelectMethod" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlSelectMethod_SelectedIndexChanged">
                                        <asp:ListItem Value="Bat trap" Text="Bat trap"></asp:ListItem>
                                        <asp:ListItem Value="Cage" Text="Cage"></asp:ListItem>
                                        <asp:ListItem Value="Camera" Text="Camera"></asp:ListItem>
                                        <asp:ListItem Value="Elliott Traps" Text="Elliott Traps"></asp:ListItem>
                                        <asp:ListItem Value="Funnel" Text="Funnel"></asp:ListItem>
                                        <asp:ListItem Value="Pitfall" Text="Pitfall"></asp:ListItem>
                                        <asp:ListItem Value="Turtle" Text="Turtle"></asp:ListItem>
                                        <asp:ListItem Value="Others" Text="Others"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvSelectMethod" runat="server" ControlToValidate="ddlSelectMethod" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">If Others Specify<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtOthersSpecify" runat="server" CssClass="form-control" placeholder="If Others Specify" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvOthersSpecify" runat="server" ControlToValidate="txtOthersSpecify" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Trap Nos<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtTrapNos" runat="server" CssClass="form-control" placeholder="Trap Nos" required="true" oninput="NumberCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvTrapNos" runat="server" ControlToValidate="txtTrapNos" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <%--<div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Nights / Day<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtNightsDay" runat="server" CssClass="form-control" placeholder="Nights / Day" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNightsDay" runat="server" ControlToValidate="txtNightsDay" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Meter Apart<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtMeterApart" runat="server" CssClass="form-control" placeholder="Meter Apart" required="true" oninput="NumberCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvMeterApart" runat="server" ControlToValidate="txtMeterApart" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>--%>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Latitude<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control" placeholder="Latitude" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvLatitude" runat="server" ControlToValidate="txtLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Longitude<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtLongitude" runat="server" CssClass="form-control" placeholder="Longitude" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvLongitude" runat="server" ControlToValidate="txtLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Species<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtAnimalSpecies" runat="server" CssClass="form-control" placeholder="Species" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAnimalSpecies" runat="server" ControlToValidate="txtAnimalSpecies" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Count (Nos)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtCountNos" runat="server" CssClass="form-control" placeholder="Count (Nos)" required="true" oninput="NumberCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCountNos" runat="server" ControlToValidate="txtCountNos" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Age<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder="Age" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Sex<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlSex" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                                        <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                                        <asp:ListItem Value="Could not be identified" Text="Could not be identified"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvSex" runat="server" ControlToValidate="ddlSex" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Additional Info (reproductive condition, weight, etc.)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtAddlnInfo" runat="server" CssClass="form-control" placeholder="Additional Info" MaxLength="200" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAddlnInfo" runat="server" ControlToValidate="txtAddlnInfo" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Purpose of Capture<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlPurposeOfCapture" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="Pop. Estimation" Text="Pop. Estimation"></asp:ListItem>
                                        <asp:ListItem Value="Disease Surveillance" Text="Disease Surveillance"></asp:ListItem>
                                        <asp:ListItem Value="HWC mitigation" Text="HWC mitigation"></asp:ListItem>
                                        <asp:ListItem Value="Research" Text="Research"></asp:ListItem>
                                        <asp:ListItem Value="Trans-Location" Text="Trans-Location"></asp:ListItem>
                                        <asp:ListItem Value="Others" Text="Others"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvPurposeOfCapture" runat="server" ControlToValidate="ddlPurposeOfCapture" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Remarks<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Remarks" MaxLength="200" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvRemarks" runat="server" ControlToValidate="txtRemarks" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>







                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">

                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit" onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'TrappingCaptureDatas.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
