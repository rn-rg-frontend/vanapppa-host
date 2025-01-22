<%@ Page Title="Van - Temperature" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="Temperature.aspx.cs" Inherits="vansystem.Temperature" %>

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
                        <h3 class="tile-title">Temperature</h3>
                        <div class="tile-body">
                                                             

                           <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Year<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control" required="true">
            <asp:ListItem Value="">Select Year</asp:ListItem>
            <asp:ListItem Value="2000">2000</asp:ListItem>
            <asp:ListItem Value="2001">2001</asp:ListItem>
            <asp:ListItem Value="2002">2002</asp:ListItem>
            <asp:ListItem Value="2003">2003</asp:ListItem>
            <asp:ListItem Value="2004">2004</asp:ListItem>
            <asp:ListItem Value="2005">2005</asp:ListItem>
            <asp:ListItem Value="2006">2006</asp:ListItem>
            <asp:ListItem Value="2007">2007</asp:ListItem>
            <asp:ListItem Value="2008">2008</asp:ListItem>
            <asp:ListItem Value="2009">2009</asp:ListItem>
            <asp:ListItem Value="2010">2010</asp:ListItem>
            <asp:ListItem Value="2011">2011</asp:ListItem>
            <asp:ListItem Value="2012">2012</asp:ListItem>
            <asp:ListItem Value="2013">2013</asp:ListItem>
            <asp:ListItem Value="2014">2014</asp:ListItem>
            <asp:ListItem Value="2015">2015</asp:ListItem>
            <asp:ListItem Value="2016">2016</asp:ListItem>
            <asp:ListItem Value="2017">2017</asp:ListItem>
            <asp:ListItem Value="2018">2018</asp:ListItem>
            <asp:ListItem Value="2019">2019</asp:ListItem>
            <asp:ListItem Value="2020">2020</asp:ListItem>
            <asp:ListItem Value="2021">2021</asp:ListItem>
            <asp:ListItem Value="2022">2022</asp:ListItem>
            <asp:ListItem Value="2023">2023</asp:ListItem>
            <asp:ListItem Value="2024">2024</asp:ListItem>
            <asp:ListItem Value="2025">2025</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvYear" runat="server" ControlToValidate="ddlYear" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature January</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMaxTemperatureJanuary" runat="server" CssClass="form-control" placeholder="Max temperature January" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMaxTemperatureJanuary" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature January</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureJanuary" runat="server" CssClass="form-control" placeholder="Min temperature January" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMinTemperatureJanuary" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature February</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMaxTemperatureFebruary" runat="server" CssClass="form-control" placeholder="Max temperature February" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMaxTemperatureFebruary" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature February</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureFebruary" runat="server" CssClass="form-control" placeholder="Min temperature February" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMinTemperatureFebruary" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature March</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMaxTemperatureMarch" runat="server" CssClass="form-control" placeholder="Max temperature March" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMaxTemperatureMarch" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature March</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureMarch" runat="server" CssClass="form-control" placeholder="Min temperature March" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMinTemperatureMarch" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature April</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMaxTemperatureApril" runat="server" CssClass="form-control" placeholder="Max temperature April" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMaxTemperatureApril" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature April</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureApril" runat="server" CssClass="form-control" placeholder="Min temperature April" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMinTemperatureApril" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature May</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMaxTemperatureMay" runat="server" CssClass="form-control" placeholder="Max temperature May" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtMaxTemperatureMay" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature May</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureMay" runat="server" CssClass="form-control" placeholder="Min temperature May" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtMinTemperatureMay" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature June</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMaxTemperatureJune" runat="server" CssClass="form-control" placeholder="Max temperature June" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtMaxTemperatureJune" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature June</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureJune" runat="server" CssClass="form-control" placeholder="Min temperature June" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtMinTemperatureJune" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature July</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMaxTemperatureJuly" runat="server" CssClass="form-control" placeholder="Max temperature July" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtMaxTemperatureJuly" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature July</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureJuly" runat="server" CssClass="form-control" placeholder="Min temperature July" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtMinTemperatureJuly" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature August</label>
    <div class="col-md-8">
                <asp:TextBox ID="txtMaxTemperatureAugust" runat="server" CssClass="form-control" placeholder="Max temperature August" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtMaxTemperatureAugust" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature August</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureAugust" runat="server" CssClass="form-control" placeholder="Min temperature August" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtMinTemperatureAugust" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature September</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMaxTemperatureSeptember" runat="server" CssClass="form-control" placeholder="Max temperature September" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtMaxTemperatureSeptember" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature September</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureSeptember" runat="server" CssClass="form-control" placeholder="Min temperature September" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtMinTemperatureSeptember" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature October</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMaxTemperatureOctober" runat="server" CssClass="form-control" placeholder="Max temperature October" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtMaxTemperatureOctober" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature October</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureOctober" runat="server" CssClass="form-control" placeholder="Min temperature October" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtMinTemperatureOctober" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature November</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMaxTemperatureNovember" runat="server" CssClass="form-control" placeholder="Max temperature November" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtMaxTemperatureNovember" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature November</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureNovember" runat="server" CssClass="form-control" placeholder="Min temperature November" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtMinTemperatureNovember" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Max temperature December</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMaxTemperatureDecember" runat="server" CssClass="form-control" placeholder="Max temperature December" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtMaxTemperatureDecember" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Min temperature December</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtMinTemperatureDecember" runat="server" CssClass="form-control" placeholder="Min temperature December" oninput="DecimalCheck(this)"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtMinTemperatureDecember" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks</label>
    <div class="col-md-8">
        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Remarks" TextMode="MultiLine" MaxLength="200"></asp:TextBox>

    </div>
</div>


                                

                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'Temperatures.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
