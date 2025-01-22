<%@ Page Title="Van - Predation on Domestic livestock by wild carnivores" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="PredationOnDomesticLivestock.aspx.cs" Inherits="vansystem.PredationOnDomesticLivestock" %>

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
                        <h3 class="tile-title">Predation on Domestic livestock by wild carnivores</h3>
                        <div class="tile-body">
                                                             
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Range<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
         <asp:DropDownList ID="ddlrange" runat="server" CssClass="form-control">
        </asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlrange" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Year<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control">
           <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
            <asp:ListItem Text="2001" Value="2001"></asp:ListItem>
            <asp:ListItem Text="2002" Value="2002"></asp:ListItem>
            <asp:ListItem Text="2003" Value="2003"></asp:ListItem>
            <asp:ListItem Text="2004" Value="2004"></asp:ListItem>
            <asp:ListItem Text="2005" Value="2005"></asp:ListItem>
            <asp:ListItem Text="2006" Value="2006"></asp:ListItem>
            <asp:ListItem Text="2007" Value="2007"></asp:ListItem>
            <asp:ListItem Text="2008" Value="2008"></asp:ListItem>
            <asp:ListItem Text="2009" Value="2009"></asp:ListItem>
            <asp:ListItem Text="2010" Value="2010"></asp:ListItem>
            <asp:ListItem Text="2011" Value="2011"></asp:ListItem>
            <asp:ListItem Text="2012" Value="2012"></asp:ListItem>
            <asp:ListItem Text="2013" Value="2013"></asp:ListItem>
            <asp:ListItem Text="2014" Value="2014"></asp:ListItem>
            <asp:ListItem Text="2015" Value="2015"></asp:ListItem>
            <asp:ListItem Text="2016" Value="2016"></asp:ListItem>
            <asp:ListItem Text="2017" Value="2017"></asp:ListItem>
            <asp:ListItem Text="2018" Value="2018"></asp:ListItem>
            <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
            <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
            <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
            <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
            <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
            <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvYear" runat="server" ControlToValidate="ddlYear" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Month<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlMonth" runat="server" CssClass="form-control">
            <asp:ListItem Text="January" Value="January"></asp:ListItem>
            <asp:ListItem Text="February" Value="February"></asp:ListItem>
            <asp:ListItem Text="March" Value="March"></asp:ListItem>
            <asp:ListItem Text="April" Value="April"></asp:ListItem>
            <asp:ListItem Text="May" Value="May"></asp:ListItem>
            <asp:ListItem Text="June" Value="June"></asp:ListItem>
            <asp:ListItem Text="July" Value="July"></asp:ListItem>
            <asp:ListItem Text="August" Value="August"></asp:ListItem>
            <asp:ListItem Text="September" Value="September"></asp:ListItem>
            <asp:ListItem Text="October" Value="October"></asp:ListItem>
            <asp:ListItem Text="November" Value="November"></asp:ListItem>
            <asp:ListItem Text="December" Value="December"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvMonth" runat="server" ControlToValidate="ddlMonth" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Type of livestock killed<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlTypeOfLivestock" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlTypeOfLivestock_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Text="Buffalo" Value="Buffalo"></asp:ListItem>
            <asp:ListItem Text="Bullock (adult, sub adult, calf)" Value="Bullock"></asp:ListItem>
            <asp:ListItem Text="Camel" Value="Camel"></asp:ListItem>
            <asp:ListItem Text="Cow" Value="Cow"></asp:ListItem>
            <asp:ListItem Text="Donkey" Value="Donkey"></asp:ListItem>
            <asp:ListItem Text="Goat" Value="Goat"></asp:ListItem>
            <asp:ListItem Text="Horse" Value="Horse"></asp:ListItem>
            <asp:ListItem Text="Poultry" Value="Poultry"></asp:ListItem>
            <asp:ListItem Text="Sheep" Value="Sheep"></asp:ListItem>
            <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvTypeOfLivestock" runat="server" ControlToValidate="ddlTypeOfLivestock" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Specify<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtLivestockOthersSpecify" runat="server" CssClass="form-control" placeholder="Specify others" required="true"></asp:TextBox>
       
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Number<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Number" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNumber" runat="server" ControlToValidate="txtNumber" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Compartment name<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtCompartmentName" runat="server" CssClass="form-control" placeholder="Compartment name" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCompartmentName" runat="server" ControlToValidate="txtCompartmentName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Latitude<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control" oninput="DecimalCheck(this)" placeholder="Latitude" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLatitude" runat="server" ControlToValidate="txtLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Longitude<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtLongitude" runat="server" CssClass="form-control" oninput="DecimalCheck(this)" placeholder="Longitude" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLongitude" runat="server" ControlToValidate="txtLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
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
    <label class="control-label col-md-3" style="margin-top: 11px;">Owner's village name<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtOwnersVillageName" runat="server" CssClass="form-control" placeholder="Owner's village name" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvOwnersVillageName" runat="server" ControlToValidate="txtOwnersVillageName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Is the Wildlife identified?<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlWildlifeIdentified" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlWildlifeIdentified_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Text="Select" Value=""></asp:ListItem>
            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
            <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvWildlifeIdentified" runat="server" ControlToValidate="ddlWildlifeIdentified" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Species name of wildlife involved<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtSpeciesNameOfWildlife" runat="server" CssClass="form-control" placeholder="Species name of wildlife involved" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvSpeciesNameOfWildlife" runat="server" ControlToValidate="txtSpeciesNameOfWildlife" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Compensation amount<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtCompensationAmount" runat="server" CssClass="form-control" oninput="DecimalCheck(this)" placeholder="Compensation amount" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCompensationAmount" runat="server" ControlToValidate="txtCompensationAmount" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">No. of cases undecided (Progress)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtCasesUndecidedProgress" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Number of cases undecided (Progress)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCasesUndecidedProgress" runat="server" ControlToValidate="txtCasesUndecidedProgress" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">No. of cases undecided (Dropped)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtCasesUndecidedDropped" runat="server" CssClass="form-control" oninput="NumberCheck(this)" placeholder="Number of cases undecided (Dropped)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCasesUndecidedDropped" runat="server" ControlToValidate="txtCasesUndecidedDropped" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Remarks" TextMode="MultiLine" MaxLength="200" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvRemarks" runat="server" ControlToValidate="txtRemarks" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>


      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'PredationOnDomesticLivestocks.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
