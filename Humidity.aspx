<%@ Page Title="Van - Humidity" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="Humidity.aspx.cs" Inherits="vansystem.Humidity" %>

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
                        <h3 class="tile-title">Humidity</h3>
                        <div class="tile-body">
                                                             

      <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Year<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control" required="true">
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
    <label class="control-label col-md-3" style="margin-top: 11px;">January<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtJanuary" runat="server" CssClass="form-control" placeholder="January" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvJanuary" runat="server" ControlToValidate="txtJanuary" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">February<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtFebruary" runat="server" CssClass="form-control" placeholder="February" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvFebruary" runat="server" ControlToValidate="txtFebruary" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">March<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtMarch" runat="server" CssClass="form-control" placeholder="March" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvMarch" runat="server" ControlToValidate="txtMarch" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">April<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtApril" runat="server" CssClass="form-control" placeholder="April" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvApril" runat="server" ControlToValidate="txtApril" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">May<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtMay" runat="server" CssClass="form-control" placeholder="May" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvMay" runat="server" ControlToValidate="txtMay" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">June<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtJune" runat="server" CssClass="form-control" placeholder="June" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvJune" runat="server" ControlToValidate="txtJune" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">July<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtJuly" runat="server" CssClass="form-control" placeholder="July" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvJuly" runat="server" ControlToValidate="txtJuly" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">August<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtAugust" runat="server" CssClass="form-control" placeholder="August" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvAugust" runat="server" ControlToValidate="txtAugust" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">September<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtSeptember" runat="server" CssClass="form-control" placeholder="September" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvSeptember" runat="server" ControlToValidate="txtSeptember" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">October<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtOctober" runat="server" CssClass="form-control" placeholder="October" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOctober" runat="server" ControlToValidate="txtOctober" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">November<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtNovember" runat="server" CssClass="form-control" placeholder="November" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNovember" runat="server" ControlToValidate="txtNovember" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">December<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtDecember" runat="server" CssClass="form-control" placeholder="December" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDecember" runat="server" ControlToValidate="txtDecember" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks</label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Remarks" MaxLength="200"></asp:TextBox>
    </div>
</div>


                                

                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'Humidities.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
