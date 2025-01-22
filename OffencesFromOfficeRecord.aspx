<%@ Page Title="Van - Offences From Office records" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="OffencesFromOfficeRecord.aspx.cs" Inherits="vansystem.OffencesFromOfficeRecord" %>

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
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
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
                        <h3 class="tile-title">Offences From Office records</h3>
                        <div class="tile-body">

                           <%-- <asp:ListItem Value="" Text="Select Type of Offence" />
<asp:ListItem Value="poaching" Text="Poaching" />
<asp:ListItem Value="capturingWL" Text="Capturing WL" />
<asp:ListItem Value="destruction_of_WL_habitat" Text="Destruction of WL Habitat" />
<asp:ListItem Value="damage_to_eggs" Text="Damage to Eggs" />
<asp:ListItem Value="damage_nest" Text="Damage Nest" />
<asp:ListItem Value="smuggling" Text="Smuggling" />--%>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Type of Offence<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlTypeOfOffence" runat="server" CssClass="form-control" required="true">
            <asp:ListItem Value="Hunting and Encroachment" Text="Hunting and Encroachment" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvTypeOfOffence" runat="server" ControlToValidate="ddlTypeOfOffence" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
                                                             

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Total Cases Booked
        <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Total number of cases booked">
            <i class="fa fa-info-circle"></i>
        </span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtTotalCasesBooked" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Total Cases Booked" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvTotalCasesBooked" runat="server" ControlToValidate="txtTotalCasesBooked" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Investigation done
        <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Numeric">
            <i class="fa fa-info-circle"></i>
        </span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txt_investigation_done" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Total Cases Booked" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_investigation_done" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Seizure of Animals
        <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Numeric">
            <i class="fa fa-info-circle"></i>
        </span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txt_seizure_of_animals" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Seizure of Animals" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_seizure_of_animals" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Seizure of vehicles
        <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Numeric">
            <i class="fa fa-info-circle"></i>
        </span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txt_seizure_of_vehicles" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Seizure of vehicles" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_seizure_of_vehicles" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Charged in the Court
        <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Number of cases charged in the Court">
    <i class="fa fa-info-circle"></i>
</span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtChargedInCourt" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Charged in the Court" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvChargedInCourt" runat="server" ControlToValidate="txtChargedInCourt" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Convicted
                <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Number of cases convicted">
    <i class="fa fa-info-circle"></i>
</span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtConvicted" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Convicted" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvConvicted" runat="server" ControlToValidate="txtConvicted" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Acquitted
                        <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Number of cases acquitted">
    <i class="fa fa-info-circle"></i>
</span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtAcquitted" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Acquitted" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvAcquitted" runat="server" ControlToValidate="txtAcquitted" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Compounded as per Court directions
                                <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Number of cases compounded as per court directions">
    <i class="fa fa-info-circle"></i>
</span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtCompoundedCourtDirections" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Compounded Court Directions" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCompoundedCourtDirections" runat="server" ControlToValidate="txtCompoundedCourtDirections" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Pending in the court
                                        <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Number of cases pending in the court">
    <i class="fa fa-info-circle"></i>
</span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtPendingInCourt" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Pending in the Court" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPendingInCourt" runat="server" ControlToValidate="txtPendingInCourt" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Compounded by Department
                                                <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Number of cases compounded by department">
    <i class="fa fa-info-circle"></i>
</span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtCompoundedByDepartment" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Compounded by Department" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCompoundedByDepartment" runat="server" ControlToValidate="txtCompoundedByDepartment" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Dropped
                                                        <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Number of cases dropped">
    <i class="fa fa-info-circle"></i>
</span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtDropped" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Dropped" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDropped" runat="server" ControlToValidate="txtDropped" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Transferred to other Division
                                                                <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Number of cases transferred to other division">
    <i class="fa fa-info-circle"></i>
</span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtTransferredToOtherDivision" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Transferred to Other Division" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvTransferredToOtherDivision" runat="server" ControlToValidate="txtTransferredToOtherDivision" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Pending Investigation
                                                                <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Number of cases pending investigation">
    <i class="fa fa-info-circle"></i>
</span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtPendingInvestigation" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Pending Investigation" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPendingInvestigation" runat="server" ControlToValidate="txtPendingInvestigation" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>



<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Year<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control" required="true">
            <asp:ListItem Value="" Text="Select Year" />
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
        <asp:RequiredFieldValidator ID="rfvYear" runat="server" ControlToValidate="ddlYear" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>


                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'OffencesFromOfficeRecords.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
