<%@ Page Title="Van - Major biodiversity conservation initiatives and milestones" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="MajorBiodiversity.aspx.cs" Inherits="vansystem.MajorBiodiversity" %>

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
                        <h3 class="tile-title">Major biodiversity conservation initiatives and milestones</h3>
                        <div class="tile-body">
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Name of the Scheme<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">                                 
                                    <input class="form-control" placeholder="Name of the Scheme" type="text" runat="server" maxlength="25" name="name_of_scheme" id="name_of_scheme" onkeypress="return isAlphabet(event)"/>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name_of_scheme" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Sponsored by<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        
        <asp:DropDownList ID="ddlfinance" runat="server" AutoPostBack="true"  CssClass="form-control">
            <asp:ListItem>CAMPA</asp:ListItem>
            <asp:ListItem>Centrally Sponsored Scheme</asp:ListItem>
            <asp:ListItem>Externally Aided Project</asp:ListItem>
            <asp:ListItem>State Plan</asp:ListItem>
            <asp:ListItem>Other sources</asp:ListItem>
            
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlfinance" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>
                                 <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Year of implementation<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        
        <asp:DropDownList ID="ddlyearofimplimentation" runat="server" AutoPostBack="true" CssClass="form-control">
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem>2006</asp:ListItem>
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>

            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2015</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2018</asp:ListItem>
            <asp:ListItem>2019</asp:ListItem>
            <asp:ListItem>2020</asp:ListItem>
            <asp:ListItem>2021</asp:ListItem>
            <asp:ListItem>2022</asp:ListItem>
            <asp:ListItem>2023</asp:ListItem>
            <asp:ListItem>2024</asp:ListItem>

        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlyearofimplimentation" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Major initiatives<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        
        <asp:DropDownList ID="ddlmajorinitiatives" runat="server" AutoPostBack="true"  CssClass="form-control" OnSelectedIndexChanged="ddlmajorinitiatives_SelectedIndexChanged">
            <asp:ListItem>Ex- situ conservation breeding programme</asp:ListItem>
            <asp:ListItem>Population estimation exercises</asp:ListItem>
            <asp:ListItem>Research initiatives</asp:ListItem>
            <asp:ListItem>Species specific conservation initiatives</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
          
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlmajorinitiatives" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

    

                            

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">If others specify<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="If others specify" type="text" runat="server" maxlength="200" name="other_initiative" id="other_initiative" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="other_initiative" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>
                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Finance (in lakhs)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="finance (in lakhs)" type="text" runat="server" maxlength="200" name="finance_data" id="finance_data" oninput="DecimalCheck(this)"/>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="finance_data" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

                                                                                    <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;" ToolTip="">Summary of the program
        <span class="info-icon" data-toggle="tooltip" data-placement="right" title="Please mention the species of concern and major outcomes of the program">
            <i class="fa fa-info-circle"></i>
        </span>
        <b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Summary of the program" ToolTip="Please mention the species of concern and major outcomes of the program" type="text" runat="server" maxlength="250" name="summary_of_the_program" id="summary_of_the_program" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="summary_of_the_program" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
        </div>
</div>
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'MajorBiodiversities.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
