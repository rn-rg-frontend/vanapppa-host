<%@ Page Title="Van - Proposed Waterbody" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ProposedWaterbody.aspx.cs" Inherits="vansystem.ProposedWaterbody" %>

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
                        <h3 class="tile-title">Proposed Waterbody</h3>
                        <div class="tile-body">
                                                             
                            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Type<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">                                 
                    <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">Select Type</asp:ListItem>
                        <asp:ListItem Value="Permanent">Permanent</asp:ListItem>
                        <asp:ListItem Value="Temporary">Temporary</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvType" runat="server" ControlToValidate="ddlType"
                        ErrorMessage="Type is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Category<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">                                 
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                        <asp:ListItem Value="">Select Category</asp:ListItem>
                        <asp:ListItem Value="Checkdam/water retention">Checkdam/water retention</asp:ListItem>
                        <asp:ListItem Value="Dam">Dam</asp:ListItem>
                        <asp:ListItem Value="Pond">Pond</asp:ListItem>
                        <asp:ListItem Value="Water hole">Water hole</asp:ListItem>
                        <asp:ListItem Value="Well">Well</asp:ListItem>
                        <asp:ListItem Value="Others">Others</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ControlToValidate="ddlCategory"
                        ErrorMessage="Category is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Others (if applicable):</label>
                <div class="col-md-8">                                 
                    <asp:TextBox ID="txtOthers" runat="server" CssClass="form-control" placeholder="Specify if others" required="true" oninput="SplCharCheck(this)"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Proposed Year<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">                                 
                    <asp:DropDownList ID="ddlProposedYear" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">Select Year</asp:ListItem>
                        <asp:ListItem Value="2024">2024</asp:ListItem>
                        <asp:ListItem Value="2025">2025</asp:ListItem>
                        <asp:ListItem Value="2026">2026</asp:ListItem>
                        <asp:ListItem Value="2027">2027</asp:ListItem>
                        <asp:ListItem Value="2028">2028</asp:ListItem>
                        <asp:ListItem Value="2029">2029</asp:ListItem>
                        <asp:ListItem Value="2030">2030</asp:ListItem>
                        <asp:ListItem Value="2031">2031</asp:ListItem>
                        <asp:ListItem Value="2032">2032</asp:ListItem>
                        <asp:ListItem Value="2033">2033</asp:ListItem>
                        <asp:ListItem Value="2034">2034</asp:ListItem>
                        <asp:ListItem Value="2035">2035</asp:ListItem>
                        <asp:ListItem Value="2036">2036</asp:ListItem>
                        <asp:ListItem Value="2037">2037</asp:ListItem>
                        <asp:ListItem Value="2038">2038</asp:ListItem>
                        <asp:ListItem Value="2039">2039</asp:ListItem>
                        <asp:ListItem Value="2040">2040</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvProposedYear" runat="server" ControlToValidate="ddlProposedYear"
                        ErrorMessage="Proposed Year is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Compartment Name<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">                                 
                    <asp:TextBox ID="txtCompartmentName" runat="server" CssClass="form-control" placeholder="Enter Compartment Name" required="true" oninput="SplCharCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCompartmentName" runat="server" ControlToValidate="txtCompartmentName"
                        ErrorMessage="Compartment Name is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Latitude<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">                                 
                    <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control" placeholder="Enter Latitude" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLatitude" runat="server" ControlToValidate="txtLatitude"
                        ErrorMessage="Latitude is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Longitude<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">                                 
                    <asp:TextBox ID="txtLongitude" runat="server" CssClass="form-control" placeholder="Enter Longitude" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLongitude" runat="server" ControlToValidate="txtLongitude"
                        ErrorMessage="Longitude is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Proposed Cost (in lakhs)<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">                                 
                    <asp:TextBox ID="txtProposedCost" runat="server" CssClass="form-control" placeholder="Enter Proposed Cost (in lakhs)" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvProposedCost" runat="server" ControlToValidate="txtProposedCost"
                        ErrorMessage="Proposed Cost is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3" style="margin-top: 11px;">Capacity (cubic meter)<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">                                 
                    <asp:TextBox ID="txtCapacity" runat="server" CssClass="form-control" placeholder="Enter Capacity (cubic meter)" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCapacity" runat="server" ControlToValidate="txtCapacity"
                        ErrorMessage="Capacity is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
      

                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'ProposedWaterbodies.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
