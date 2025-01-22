<%@ Page Title="Van - Construction of boundaries, fences, CPTs, EPTs, Exclosures, Enclosures" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="BoundariesAndFence.aspx.cs" Inherits="vansystem.BoundariesAndFence" %>

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
                        <h3 class="tile-title">Construction of boundaries, fences, CPTs, EPTs, Exclosures, Enclosures</h3>
                        <div class="tile-body">
                                                             

     <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Category<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
            <asp:ListItem Text="Select Type" Value=""></asp:ListItem>
            <asp:ListItem Text="Block" Value="Block"></asp:ListItem>
            <asp:ListItem Text="Compartment" Value="Compartment"></asp:ListItem>
             <asp:ListItem Text="Fences" Value="Fences"></asp:ListItem>
 <asp:ListItem Text="Enclosure" Value="Enclosure"></asp:ListItem>
            <asp:ListItem Text="Zone" Value="Zone"></asp:ListItem>
            <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ddlType" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Other Type</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtOtherType" runat="server" CssClass="form-control" placeholder="Other Type"></asp:TextBox>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Category of Construction<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlCategoryOfConstruction" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="ddlCategoryOfConstruction_SelectedIndexChanged">
            <asp:ListItem Text="Select Category" Value=""></asp:ListItem>
            <asp:ListItem Text="Power fence" Value="Power fence"></asp:ListItem>
            <asp:ListItem Text="Dry rubble" Value="Dry rubble"></asp:ListItem>
            <asp:ListItem Text="Chain link" Value="Chain link"></asp:ListItem>
            <asp:ListItem Text="Local material" Value="Local material"></asp:ListItem>
            <%--<asp:ListItem Text="Others" Value="Others"></asp:ListItem>--%>
        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlCategoryOfConstruction" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
    </div>
</div>

<%--<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Other Category</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtOtherCategory" runat="server" CssClass="form-control" placeholder="Other Category"></asp:TextBox>
    </div>
</div>--%>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Range<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlRange" runat="server" CssClass="form-control" required="true">
           
        </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlRange" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
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
    <label class="control-label col-md-3" style="margin-top: 11px;">Length (in meters)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtLengthInMeters" runat="server" CssClass="form-control" placeholder="Length in meters" oninput="DecimalCheck(this)" required="true" MaxLength="2000000000"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLengthInMeters" runat="server" ControlToValidate="txtLengthInMeters" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ForeColor="Red" ID="RangeValidator1" runat="server" ControlToValidate="txtLengthInMeters" MinimumValue="1" MaximumValue="2000000000" Type="Integer" ErrorMessage="Please enter a valid value">
</asp:RangeValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Number of Additionalities<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtNumberOfAdditionalities" runat="server" CssClass="form-control" placeholder="Number of Additionalities" oninput="NumberCheck(this)" required="true" MaxLength="2000000000"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNumberOfAdditionalities" runat="server" ControlToValidate="txtNumberOfAdditionalities" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ForeColor="Red" ID="RangeValidator2" runat="server" ControlToValidate="txtNumberOfAdditionalities" MinimumValue="1" MaximumValue="2000000000" Type="Integer" ErrorMessage="Please enter a valid value">
</asp:RangeValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Height (in meters)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtHeight" runat="server" CssClass="form-control" placeholder="Height (in meters)" oninput="NumberCheck(this)" required="true" MaxLength="2000000000"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvHeight" runat="server" ControlToValidate="txtHeight" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ForeColor="Red" ID="RangeValidator3" runat="server" ControlToValidate="txtHeight" MinimumValue="1" MaximumValue="2000000000" Type="Integer" ErrorMessage="Please enter a valid value">
</asp:RangeValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Area<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtArea" runat="server" CssClass="form-control" placeholder="Area" oninput="NumberCheck(this)" required="true" MaxLength="2000000000"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvArea" runat="server" ControlToValidate="txtArea" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ForeColor="Red" ID="RangeValidator4" runat="server" ControlToValidate="txtArea" MinimumValue="1" MaximumValue="2000000000" Type="Integer" ErrorMessage="Please enter a valid value">
</asp:RangeValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Depth (in meters)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtDepth" runat="server" CssClass="form-control" placeholder="Depth (in meters)" oninput="NumberCheck(this)" required="true" MaxLength="2000000000"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDepth" runat="server" ControlToValidate="txtDepth" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ForeColor="Red" ID="RangeValidator5" runat="server" ControlToValidate="txtDepth" MinimumValue="1" MaximumValue="2000000000" Type="Integer" ErrorMessage="Please enter a valid value">
</asp:RangeValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Width (in meters)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtWidth" runat="server" CssClass="form-control" placeholder="Width (in meters)" oninput="NumberCheck(this)" required="true" MaxLength="2000000000"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvWidth" runat="server" ControlToValidate="txtWidth" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ForeColor="Red" ID="RangeValidator6" runat="server" ControlToValidate="txtWidth" MinimumValue="1" MaximumValue="2000000000" Type="Integer" ErrorMessage="Please enter a valid value">
</asp:RangeValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Remarks"></asp:TextBox>
    </div>
</div>


                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'BoundariesAndFences.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
