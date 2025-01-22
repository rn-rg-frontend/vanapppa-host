<%@ Page Title="Van - Details of fireline" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="DetailsOfFireline.aspx.cs" Inherits="vansystem.DetailsOfFireline" %>

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
                        <h3 class="tile-title">Details of fireline</h3>
                        <div class="tile-body">
                                                             
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Name of Fire line (from - to)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtFireLineName" runat="server" CssClass="form-control" placeholder="Name of Fire line (from - to)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvFireLineName" runat="server" ControlToValidate="txtFireLineName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Section/Beat<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtSectionBeat" runat="server" CssClass="form-control" placeholder="Section/Beat" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvSectionBeat" runat="server" ControlToValidate="txtSectionBeat" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Category of fire line<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlcategory" runat="server" CssClass="form-control" required="true">
            <asp:ListItem Value="New Fireline">New Fireline</asp:ListItem>
            <asp:ListItem Value="Existing Fireline">Existing Fireline</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlcategory" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Condition of fire line<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlConditionOfFireLine" runat="server" CssClass="form-control" required="true">
            <asp:ListItem Value="">--Select--</asp:ListItem>
            <asp:ListItem Value="Good">Good</asp:ListItem>
            <asp:ListItem Value="Moderate">Moderate</asp:ListItem>
            <asp:ListItem Value="Poor">Poor</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvConditionOfFireLine" runat="server" ControlToValidate="ddlConditionOfFireLine" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Length (in km)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtLengthKm" runat="server" CssClass="form-control" placeholder="Length (in km)" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLengthKm" runat="server" ControlToValidate="txtLengthKm" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Width (in meters)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txt_width" runat="server" CssClass="form-control" placeholder="Width (in meters)" oninput="NumberCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_width" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Start point Latitude<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtStartPointLatitude" runat="server" CssClass="form-control" placeholder="Start point Latitude" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvStartPointLatitude" runat="server" ControlToValidate="txtStartPointLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="LatitudeRangeValidator" runat="server" ControlToValidate="txtStartPointLatitude" MinimumValue="-90" MaximumValue="90" Type="Double" ErrorMessage="Please enter a valid value between -90 and 90." ForeColor="Red">
</asp:RangeValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Start point Longitude<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtStartPointLongitude" runat="server" CssClass="form-control" placeholder="Start point Longitude" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvStartPointLongitude" runat="server" ControlToValidate="txtStartPointLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtStartPointLongitude" MinimumValue="-90" MaximumValue="90" Type="Double" ErrorMessage="Please enter a valid value between -90 and 90." ForeColor="Red">
</asp:RangeValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">End point Latitude<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtEndPointLatitude" runat="server" CssClass="form-control" placeholder="End point Latitude" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEndPointLatitude" runat="server" ControlToValidate="txtEndPointLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtEndPointLatitude" MinimumValue="-90" MaximumValue="90" Type="Double" ErrorMessage="Please enter a valid value between -90 and 90." ForeColor="Red">
</asp:RangeValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">End point Longitude<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtEndPointLongitude" runat="server" CssClass="form-control" placeholder="End point Longitude" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEndPointLongitude" runat="server" ControlToValidate="txtEndPointLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtEndPointLongitude" MinimumValue="-90" MaximumValue="90" Type="Double" ErrorMessage="Please enter a valid value between -90 and 90." ForeColor="Red">
</asp:RangeValidator>
    </div>
</div>
                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Cost of maintenance (in lakhs)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txt_cost_of_maintenance" runat="server" CssClass="form-control" placeholder="Cost of maintenance (in lakhs)" oninput="NumberCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_cost_of_maintenance" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
      
                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'DetailsOfFirelines.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
