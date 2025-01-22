<%@ Page Title="Van - Approach and Access" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ApproachAndAccess.aspx.cs" Inherits="vansystem.ApproachAndAccess" %>

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
    <script>
        function validateLength(sender, args) {
            const totalLength = parseFloat(document.getElementById('<%= txtTotalLength.ClientID %>').value) || 0;
            const lengthWithinPA = parseFloat(document.getElementById('<%= txtLengthWithinPA.ClientID %>').value) || 0;
            args.IsValid = lengthWithinPA <= totalLength;
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
                        <h3 class="tile-title">Approach and Access</h3>
                        <div class="tile-body">

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Nearest Airport Name<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txt_nearest_airport_name" runat="server" CssClass="form-control" placeholder="Nearest Airport Name" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_nearest_airport_name" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Distance to Nearest Airport (in Km)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txt_distance_to_nearest_airport" runat="server" CssClass="form-control" placeholder="Distance to Nearest Airport (in Km)" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_distance_to_nearest_airport" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Nearest Railway Station Name<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txt_nearest_railway_station_name" runat="server" CssClass="form-control" placeholder="Nearest Railway Station Name" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_nearest_railway_station_name" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Distance to Nearest Railway Station (in Km)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txt_distance_to_nearest_railway_station" runat="server" CssClass="form-control" placeholder="Distance to Nearest Railway Station (in Km)" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_distance_to_nearest_railway_station" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Name of the road<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtNameOfTheRoad" runat="server" CssClass="form-control" placeholder="Name of the road" required="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNameOfTheRoad" runat="server" ControlToValidate="txtNameOfTheRoad" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Number of the road<b class="text-danger">&nbsp;</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txt_number_of_the_road" runat="server" CssClass="form-control" placeholder="Number of the road" required="true" oninput="DecimalCheck(this)"></asp:TextBox>

                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Range<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">

                                    <asp:DropDownList ID="ddlrange" runat="server" OnSelectedIndexChanged="ddlselectrange_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlrange" ErrorMessage="Please fill out this field." CssClass="required-field-message"></asp:RequiredFieldValidator>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Beat<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">

                                    <asp:DropDownList ID="ddlbeat" runat="server" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlbeat" ErrorMessage="Please fill out this field." CssClass="required-field-message"></asp:RequiredFieldValidator>

                                </div>
                            </div>


                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">From<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control" placeholder="From" required="true" oninput="SplCharCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvFrom" runat="server" ControlToValidate="txtFrom" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">To<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtTo" runat="server" CssClass="form-control" placeholder="To" required="true" oninput="SplCharCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvTo" runat="server" ControlToValidate="txtTo" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Total Length (in km)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtTotalLength" runat="server" CssClass="form-control" placeholder="Total Length (in km)" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvTotalLength" runat="server" ControlToValidate="txtTotalLength" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Length Within PA (in km)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtLengthWithinPA" runat="server" CssClass="form-control" placeholder="Length Within PA (in km)" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvLengthWithinPA" runat="server" ControlToValidate="txtLengthWithinPA" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:CustomValidator ID="cvLengthValidator" runat="server" ControlToValidate="txtLengthWithinPA" ErrorMessage="Length Within PA must be less than or equal to Total Length."
                                        CssClass="text-danger" ClientValidationFunction="validateLength" OnServerValidate="ValidateLength"></asp:CustomValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Width (in meters)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtWidth" runat="server" CssClass="form-control" placeholder="Width (in meters)" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvWidth" runat="server" ControlToValidate="txtWidth" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Class Type<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlClassType" runat="server" CssClass="form-control" required="true">
                                        <asp:ListItem Text="Select Class Type" Value=""></asp:ListItem>
                                        <asp:ListItem Text="Earth" Value="Earth"></asp:ListItem>
                                        <asp:ListItem Text="Metal" Value="Metal"></asp:ListItem>
                                        <asp:ListItem Text="Block topped" Value="Block topped"></asp:ListItem>
                                        <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvClassType" runat="server" ControlToValidate="ddlClassType" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Whether permitted when notified or recommended by the NBWL/ SCNBWL<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlPermitted" runat="server" CssClass="form-control" required="true">
                                        <asp:ListItem Text="Select Permission Status" Value=""></asp:ListItem>
                                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                        <asp:ListItem Text="Yet to be" Value="Yet to be"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvPermitted" runat="server" ControlToValidate="ddlPermitted" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Govt order no. and date of right or way/ Use permitted<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtOrderNoAndDate" runat="server" CssClass="form-control" placeholder="Govt order no. and date of right or way/ Use permitted" required="true" oninput="SplCharCheck(this)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvOrderNoAndDate" runat="server" ControlToValidate="txtOrderNoAndDate" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Status<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control" required="true">
                                        <asp:ListItem Text="Select Status" Value=""></asp:ListItem>
                                        <asp:ListItem Text="Forest road" Value="Forest road"></asp:ListItem>
                                        <asp:ListItem Text="PWD road" Value="PWD road"></asp:ListItem>
                                        <asp:ListItem Text="District road" Value="District road"></asp:ListItem>
                                        <asp:ListItem Text="State Highway" Value="State Highway"></asp:ListItem>
                                        <asp:ListItem Text="National Highway" Value="National Highway"></asp:ListItem>
                                        <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvStatus" runat="server" ControlToValidate="ddlStatus" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Remarks</label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtRemark" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Remarks"></asp:TextBox>
                                </div>
                            </div>


                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">

                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit" onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'ApproachAndAccesses.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
