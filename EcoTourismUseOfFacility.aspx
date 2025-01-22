<%@ Page Title="Van - Eco Tourism Use Of Facilities" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="EcoTourismUseOfFacility.aspx.cs" Inherits="vansystem.EcoTourismUseOfFacility" %>

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

            calculateTotal();  // Recalculate the total on input change
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
                        <h3 class="tile-title"> Eco Tourism Use Of Facilities</h3>
                        <div class="tile-body">
                     
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Name of the complex<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtNameOfComplex" runat="server" CssClass="form-control" placeholder="Name of the complex" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNameOfComplex" runat="server" ControlToValidate="txtNameOfComplex" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Class of accommodation<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlClassOfAccommodation" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlClassOfAccommodation_SelectedIndexChanged">
            <asp:ListItem Value="" Text="Select"></asp:ListItem>
            <asp:ListItem Value="AC rooms" Text="AC rooms"></asp:ListItem>
            <asp:ListItem Value="Cottages" Text="Cottages"></asp:ListItem>
            <asp:ListItem Value="Mud houses" Text="Mud houses"></asp:ListItem>
            <asp:ListItem Value="Non AC rooms" Text="Non AC rooms"></asp:ListItem>
            <asp:ListItem Value="Tented camps" Text="Tented camps"></asp:ListItem>
            <asp:ListItem Value="Tree houses" Text="Tree houses"></asp:ListItem>
            <asp:ListItem Value="Others" Text="Others"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvClassOfAccommodation" runat="server" ControlToValidate="ddlClassOfAccommodation" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Others</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtOthers" runat="server" CssClass="form-control" placeholder="Others"></asp:TextBox>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Capacity (No. of beds)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtCapacityNoOfBeds" runat="server" CssClass="form-control" placeholder="Capacity (No. of beds)" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCapacityNoOfBeds" runat="server" ControlToValidate="txtCapacityNoOfBeds" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Year<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control">
            <asp:ListItem Value="" Text="Select"></asp:ListItem>
            <asp:ListItem Value="2010" Text="2010"></asp:ListItem>
            <asp:ListItem Value="2011" Text="2011"></asp:ListItem>
            <asp:ListItem Value="2012" Text="2012"></asp:ListItem>
            <asp:ListItem Value="2013" Text="2013"></asp:ListItem>
            <asp:ListItem Value="2014" Text="2014"></asp:ListItem>
            <asp:ListItem Value="2015" Text="2015"></asp:ListItem>
            <asp:ListItem Value="2016" Text="2016"></asp:ListItem>
            <asp:ListItem Value="2017" Text="2017"></asp:ListItem>
            <asp:ListItem Value="2018" Text="2018"></asp:ListItem>
            <asp:ListItem Value="2019" Text="2019"></asp:ListItem>
            <asp:ListItem Value="2020" Text="2020"></asp:ListItem>
            <asp:ListItem Value="2021" Text="2021"></asp:ListItem>
            <asp:ListItem Value="2022" Text="2022"></asp:ListItem>
            <asp:ListItem Value="2023" Text="2023"></asp:ListItem>
            <asp:ListItem Value="2024" Text="2024"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvYear" runat="server" ControlToValidate="ddlYear" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Month<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlMonth" runat="server" CssClass="form-control">
            <asp:ListItem Value="" Text="Select"></asp:ListItem>
            <asp:ListItem Value="January" Text="January"></asp:ListItem>
            <asp:ListItem Value="February" Text="February"></asp:ListItem>
            <asp:ListItem Value="March" Text="March"></asp:ListItem>
            <asp:ListItem Value="April" Text="April"></asp:ListItem>
            <asp:ListItem Value="May" Text="May"></asp:ListItem>
            <asp:ListItem Value="June" Text="June"></asp:ListItem>
            <asp:ListItem Value="July" Text="July"></asp:ListItem>
            <asp:ListItem Value="August" Text="August"></asp:ListItem>
            <asp:ListItem Value="September" Text="September"></asp:ListItem>
            <asp:ListItem Value="October" Text="October"></asp:ListItem>
            <asp:ListItem Value="November" Text="November"></asp:ListItem>
            <asp:ListItem Value="December" Text="December"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvMonth" runat="server" ControlToValidate="ddlMonth" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Month capacity (beds/month)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMonthCapacity" runat="server" CssClass="form-control" placeholder="Month capacity (beds/month)" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvMonthCapacity" runat="server" ControlToValidate="txtMonthCapacity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Indian Male<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtIndianMale" runat="server" CssClass="form-control" placeholder="Indian Male" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvIndianMale" runat="server" ControlToValidate="txtIndianMale" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Indian Female<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtIndianFemale" runat="server" CssClass="form-control" placeholder="Indian Female" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvIndianFemale" runat="server" ControlToValidate="txtIndianFemale" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Indian Children<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtIndianChildren" runat="server" CssClass="form-control" placeholder="Indian Children" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvIndianChildren" runat="server" ControlToValidate="txtIndianChildren" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Foreigner Male<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtForeignerMale" runat="server" CssClass="form-control" placeholder="Foreigner Male" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvForeignerMale" runat="server" ControlToValidate="txtForeignerMale" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Foreigner Female<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtForeignerFemale" runat="server" CssClass="form-control" placeholder="Foreigner Female" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvForeignerFemale" runat="server" ControlToValidate="txtForeignerFemale" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Foreigner Children<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtForeignerChildren" runat="server" CssClass="form-control" placeholder="Foreigner Children" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvForeignerChildren" runat="server" ControlToValidate="txtForeignerChildren" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Total occupancy during the month<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtTotalOccupancy" runat="server" CssClass="form-control" placeholder="Total occupancy during the month" required="true" oninput="NumberCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvTotalOccupancy" runat="server" ControlToValidate="txtTotalOccupancy" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
</div>

                                                  <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Revenue (in lakhs)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:TextBox ID="txtRevenue" runat="server" CssClass="form-control" placeholder="Revenue (in lakhs)" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvRevenue" runat="server" ControlToValidate="txtRevenue" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'EcoTourismUseOfFacilities.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
