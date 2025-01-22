<%@ Page Title="Van - Convergence" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="Convergence.aspx.cs" Inherits="vansystem.Convergence" %>

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
                        <h3 class="tile-title">Convergence</h3>
                        <div class="tile-body">
                                                             

<div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Type<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control" required="true"  AutoPostBack="true" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                         <asp:ListItem Text="Select Type" Value=""></asp:ListItem>
                        <asp:ListItem Text="Convergence-Inter-agency Programmes" Value="Convergence-Inter-agency Programmes"></asp:ListItem>
                        <asp:ListItem Text="Programs of NGOs" Value="Programs of NGOs"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvType" runat="server" ControlToValidate="ddlType" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Name of Agency -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Name of Agency<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtNameOfAgency" runat="server" CssClass="form-control" placeholder="Name of Agency" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNameOfAgency" runat="server" ControlToValidate="txtNameOfAgency" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Program -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Program<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:DropDownList ID="ddlProgram" runat="server" CssClass="form-control" Enabled="false">
                        <asp:ListItem Text="Central" Value="Central"></asp:ListItem>
                        <asp:ListItem Text="State" Value="State"></asp:ListItem>
                    </asp:DropDownList>
                   
                </div>
            </div>

            <!-- Name of the Scheme -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Name of the Scheme<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtNameOfTheScheme" runat="server" CssClass="form-control" placeholder="Name of the Scheme" Enabled="false"></asp:TextBox>
                    
                </div>
            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Scheme period<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtSchemePeriod" runat="server" CssClass="form-control" placeholder="Scheme period" Enabled="false"></asp:TextBox>

                                </div>
                            </div>

            <!-- Head Quarters Location -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Head Quarters Location<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtHeadQuartersLocation" runat="server" CssClass="form-control" placeholder="Head Quarters Location" Enabled="false"></asp:TextBox>
                   
                </div>
            </div>

            <!-- Nature of Program -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Nature of Program<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtNatureOfProgram" runat="server" CssClass="form-control" placeholder="Nature of Program" Enabled="false"></asp:TextBox>
                  
                </div>
            </div>

            <!-- Activity -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Activity<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtActivity" runat="server" CssClass="form-control" placeholder="Activity" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvActivity" runat="server" ControlToValidate="txtActivity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Physical Target Given -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Physical Target Given<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtPhysicalTargetGiven" runat="server" CssClass="form-control" placeholder="Physical Target Given" required="true" oninput="NumberCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhysicalTargetGiven" runat="server" ControlToValidate="txtPhysicalTargetGiven" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Physical Target Achieved -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Physical Target Achieved<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtPhysicalTargetAchieved" runat="server" CssClass="form-control" placeholder="Physical Target Achieved" required="true" oninput="NumberCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhysicalTargetAchieved" runat="server" ControlToValidate="txtPhysicalTargetAchieved" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Financial Target Given -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Financial Target Given<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtFinancialTargetGiven" runat="server" CssClass="form-control" placeholder="Financial Target Given" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFinancialTargetGiven" runat="server" ControlToValidate="txtFinancialTargetGiven" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Financial Target Achieved -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Financial Target Achieved<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtFinancialTargetAchieved" runat="server" CssClass="form-control" placeholder="Financial Target Achieved" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFinancialTargetAchieved" runat="server" ControlToValidate="txtFinancialTargetAchieved" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                   
                </div>
            </div>

            <!-- Latitude -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Latitude<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control" placeholder="Latitude" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLatitude" runat="server" ControlToValidate="txtLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Longitude -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Longitude<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtLongitude" runat="server" CssClass="form-control" placeholder="Longitude" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLongitude" runat="server" ControlToValidate="txtLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Area Covered -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Area Covered (in ha)<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtAreaCovered" runat="server" CssClass="form-control" placeholder="Area Covered (in ha)" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAreaCovered" runat="server" ControlToValidate="txtAreaCovered" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <!-- Remarks -->
            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Remarks<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Remarks" TextMode="MultiLine" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvRemarks" runat="server" ControlToValidate="txtRemarks" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>


                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'Convergences.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
