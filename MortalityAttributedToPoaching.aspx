<%@ Page Title="Van - Mortality attributed to poaching" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="MortalityAttributedToPoaching.aspx.cs" Inherits="vansystem.MortalityAttributedToPoaching" %>

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
                        <h3 class="tile-title">Mortality attributed to poaching</h3>
                        <div class="tile-body">


                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Species Name<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtSpeciesName" runat="server" CssClass="form-control" placeholder="Species Name" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvSpeciesName" runat="server" ControlToValidate="txtSpeciesName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Compartment Name<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtCompartmentName" runat="server" CssClass="form-control" placeholder="Compartment Name" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCompartmentName" runat="server" ControlToValidate="txtCompartmentName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Landmark<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtLandmark" runat="server" CssClass="form-control" placeholder="Landmark" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvLandmark" runat="server" ControlToValidate="txtLandmark" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Latitude<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control" placeholder="Latitude" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvLatitude" runat="server" ControlToValidate="txtLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Longitude<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtLongitude" runat="server" CssClass="form-control" placeholder="Longitude" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvLongitude" runat="server" ControlToValidate="txtLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Year<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control" required="true">
                                        <asp:ListItem Value="" Text="Select Year" />
                                        <asp:ListItem Value="2000" Text="2000" />
                                        <asp:ListItem Value="2001" Text="2001" />
                                        <asp:ListItem Value="2002" Text="2002" />
                                        <asp:ListItem Value="2003" Text="2003" />
                                        <asp:ListItem Value="2004" Text="2004" />
                                        <asp:ListItem Value="2005" Text="2005" />
                                        <asp:ListItem Value="2006" Text="2006" />
                                        <asp:ListItem Value="2007" Text="2007" />
                                        <asp:ListItem Value="2008" Text="2008" />
                                        <asp:ListItem Value="2009" Text="2009" />
                                        <asp:ListItem Value="2010" Text="2010" />
                                        <asp:ListItem Value="2011" Text="2011" />
                                        <asp:ListItem Value="2012" Text="2012" />
                                        <asp:ListItem Value="2013" Text="2013" />
                                        <asp:ListItem Value="2014" Text="2014" />
                                        <asp:ListItem Value="2015" Text="2015" />
                                        <asp:ListItem Value="2016" Text="2016" />
                                        <asp:ListItem Value="2017" Text="2017" />
                                        <asp:ListItem Value="2018" Text="2018" />
                                        <asp:ListItem Value="2019" Text="2019" />
                                        <asp:ListItem Value="2020" Text="2020" />
                                        <asp:ListItem Value="2021" Text="2021" />
                                        <asp:ListItem Value="2022" Text="2022" />
                                        <asp:ListItem Value="2023" Text="2023" />
                                        <asp:ListItem Value="2024" Text="2024" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvYear" runat="server" ControlToValidate="ddlYear" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Age<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder="Age" oninput="NumberCheck(this)" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Sex<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlSex" runat="server" CssClass="form-control" required="true">
                                        <asp:ListItem Value="" Text="Select Sex" />
                                        <asp:ListItem Value="Female" Text="Female" />
                                        <asp:ListItem Value="Male" Text="Male" />
                                        <asp:ListItem Value="Couldn't identify" Text="Couldn't identify" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvSex" runat="server" ControlToValidate="ddlSex" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Number<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" placeholder="Number" oninput="NumberCheck(this)" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNumber" runat="server" ControlToValidate="txtNumber" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Condition During Discovery<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlConditionDuringDiscovery" runat="server" CssClass="form-control" required="true">
                                        <asp:ListItem Value="" Text="Select Condition" />
                                        <asp:ListItem Value="Complete Carcass" Text="Complete Carcass" />
                                        <asp:ListItem Value="Few remains" Text="Few remains" />
                                        <asp:ListItem Value="Partial Carcass" Text="Partial Carcass" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvConditionDuringDiscovery" runat="server" ControlToValidate="ddlConditionDuringDiscovery" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Cause of Mortality<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlCauseOfMortality" runat="server" CssClass="form-control" required="true" OnSelectedIndexChanged="ddlCauseOfMortality_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Value="" Text="Select Cause" />
                                        <asp:ListItem Value="Known" Text="Known" />
                                        <asp:ListItem Value="Unknown" Text="Unknown" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvCauseOfMortality" runat="server" ControlToValidate="ddlCauseOfMortality" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row" id="divCauseKnown" style="display: none;">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Causes (if Known)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlCauseKnown" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlCauseKnown_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Value="" Text="Select Cause" />
                                        <asp:ListItem Value="Animal snared" Text="Animal snared" />
                                        <asp:ListItem Value="Poisoned" Text="Poisoned" />
                                        <asp:ListItem Value="Shot" Text="Shot" />
                                        <asp:ListItem Value="Others" Text="Others" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvCauseKnown" runat="server" ControlToValidate="ddlCauseKnown" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row" id="divCauseOthers" style="display: none;">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Specify (if Others)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtCauseOthers" runat="server" CssClass="form-control" placeholder="Specify Cause"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Remarks</label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Remarks (200 characters)" MaxLength="200"></asp:TextBox>
                                </div>
                            </div>





                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">

                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit" onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'MortalityAttributedToPoachings.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
