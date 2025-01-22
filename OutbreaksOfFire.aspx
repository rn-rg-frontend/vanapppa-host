<%@ Page Title="Van - Outbreaks of Fire" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="OutbreaksOfFire.aspx.cs" Inherits="vansystem.OutbreaksOfFire" %>

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
                        <h3 class="tile-title">Outbreaks of Fire</h3>
                        <div class="tile-body">
                                                             

      <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Range<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlRange" runat="server" CssClass="form-control" required="true">
            <asp:ListItem Value="">Select Range</asp:ListItem>
            <asp:ListItem Value="Controlled">Controlled</asp:ListItem>
            <asp:ListItem Value="Established">Established</asp:ListItem>
        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ddlRange" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
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
    <label class="control-label col-md-3" style="margin-top: 11px;">Extent burnt (in ha)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtExtentBurnt" runat="server" CssClass="form-control" placeholder="Extent burnt" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvExtentBurnt" runat="server" ControlToValidate="txtExtentBurnt" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

                            
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Dominant tree species</label>
    <div class="col-md-8">
        <asp:TextBox ID="txt_dominant_tree_species" runat="server" CssClass="form-control" placeholder="Dominant tree species" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_dominant_tree_species" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Dates Detected<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtDatesDetected" runat="server" CssClass="form-control" placeholder="YYYY-MM-DD" required="true" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDatesDetected" runat="server" ControlToValidate="txtDatesDetected" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Dates Controlled<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtDatesControlled" runat="server" CssClass="form-control" placeholder="YYYY-MM-DD" required="true" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDatesControlled" runat="server" ControlToValidate="txtDatesControlled" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Expenditure<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtExpenditure" runat="server" CssClass="form-control" placeholder="Expenditure" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvExpenditure" runat="server" ControlToValidate="txtExpenditure" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Reasons<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlReasons" runat="server" CssClass="form-control" required="true">
            <asp:ListItem Value="">Select Reason</asp:ListItem>
            <asp:ListItem Value="Suspected">Suspected</asp:ListItem>
            <asp:ListItem Value="Established">Established</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlReasons" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Reason explained</label>
    <div class="col-md-8">
        <asp:TextBox ID="txt_reason_explained" runat="server" CssClass="form-control" placeholder="Reason explained" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_reason_explained" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<%--<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Estimated loss Volume<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtEstimatedLossVolume" runat="server" CssClass="form-control" placeholder="Estimated loss Volume" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEstimatedLossVolume" runat="server" ControlToValidate="txtEstimatedLossVolume" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>--%>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Damaged trees<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtDamagedTrees" runat="server" CssClass="form-control" placeholder="Damaged trees" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDamagedTrees" runat="server" ControlToValidate="txtDamagedTrees" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Stacked firewood/timber/bamboo<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtStackedFirewood" runat="server" CssClass="form-control" placeholder="Stacked firewood/timber/bamboo" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvStackedFirewood" runat="server" ControlToValidate="txtStackedFirewood" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Wildlife mortality<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtWildlifeMortality" runat="server" CssClass="form-control" placeholder="Wildlife mortality" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvWildlifeMortality" runat="server" ControlToValidate="txtWildlifeMortality" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>



<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Source of information<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlSourceOfInformation" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="sourceOfInformationDropdown_SelectedIndexChanged">
            <asp:ListItem Value="">Select Source</asp:ListItem>
            <asp:ListItem Value="Office record">Office record</asp:ListItem>
            <asp:ListItem Value="Local information">Local information</asp:ListItem>
                        <asp:ListItem Value="Sign on spot">Sign on spot</asp:ListItem>
           
             <asp:ListItem Value="Others">Others</asp:ListItem>

        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlSourceOfInformation" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Others</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtOthers" runat="server" CssClass="form-control" placeholder="Others"></asp:TextBox>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Remarks" ></asp:TextBox>
    </div>
</div>


                           
                                

                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'OutbreaksOfFires.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
