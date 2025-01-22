<%@ Page Title="Van - Monitoring Program in PA" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="Monitoring.aspx.cs" Inherits="vansystem.Monitoring" %>

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
                        <h3 class="tile-title">Monitoring Program in PA</h3>
                        <div class="tile-body">
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Title of survey/inventory<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">                                 
                                    <input class="form-control" placeholder="Title of survey/inventory" type="text" runat="server" maxlength="25" name="title_of_survey_inventory" id="title_of_survey_inventory" onkeypress="return isAlphabet(event)"/>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="title_of_survey_inventory" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Name of Agency/Individual<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Name of Agency/Individual" type="text" runat="server" maxlength="25" name="name_of_agency_individual" id="name_of_agency_individual" onkeypress="return isAlphabet(event)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="name_of_agency_individual" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Status<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        
        <asp:DropDownList ID="ddlstatus" runat="server" AutoPostBack="true"  CssClass="form-control" >
            <asp:ListItem>Completed</asp:ListItem>
            <asp:ListItem>Ongoing</asp:ListItem>
            
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlstatus" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Started Date</label>
    <div class="col-md-8">
       <%-- <asp:Calendar runat="server" maxlength="200" name="started_date" id="started_date" >
            </asp:Calendar>--%>
        <asp:TextBox name="started_date" ID="started_date" runat="server"
          TextMode="Date"   >
            </asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="started_date" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Completed Date</label>
    <div class="col-md-8">
        <asp:TextBox name="completed_date" ID="completed_date" runat="server"
  TextMode="Date"   >
            </asp:TextBox>
        <%--<asp:Calendar runat="server" maxlength="200" name="completed_date" id="completed_date" >
            </asp:Calendar>--%>
         
    </div>
</div>
                                

                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Technique<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        
        <asp:DropDownList ID="ddltechnique" runat="server" AutoPostBack="true"  CssClass="form-control" OnSelectedIndexChanged="ddltechnique_SelectedIndexChanged">
            <asp:ListItem>Camera trap</asp:ListItem>
            <asp:ListItem>Sign Survey</asp:ListItem>
            <asp:ListItem>Point Count for birds</asp:ListItem>
            <asp:ListItem>Line transect for birds</asp:ListItem>
            <asp:ListItem>Belt transect</asp:ListItem>
            <asp:ListItem>Line transect for mammals</asp:ListItem>
            <asp:ListItem>Plots</asp:ListItem>
            <asp:ListItem>Pugmarks</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
          
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddltechnique" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>
                            

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">If others specify<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="If others specify" type="text" runat="server" maxlength="200" name="others" id="others" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="others" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

                                                                                    <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Status of data Analysis<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        
        <asp:DropDownList ID="ddlstatus_of_data_analysis" runat="server" AutoPostBack="true"  CssClass="form-control" >
            <asp:ListItem>Completed</asp:ListItem>
            <asp:ListItem>Ongoing</asp:ListItem>
          
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlstatus_of_data_analysis" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>


                                                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Remarks" type="text" runat="server" maxlength="200" name="remark" id="remark" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="remark" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'Monitorings.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
