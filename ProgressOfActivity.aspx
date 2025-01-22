<%@ Page Title="Van - Progress of activities" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ProgressOfActivity.aspx.cs" Inherits="vansystem.ProgressOfActivity" %>

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
                        <h3 class="tile-title">Progress of activities</h3>
                        <div class="tile-body">
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Zone Plan/Theme Plan<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">                                 
                                    <input class="form-control" placeholder="Zone Plan/Theme Plan" type="text" runat="server" maxlength="25" name="zone_theme_plan" id="zone_theme_plan" onkeypress="return isAlphabet(event)"/>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="zone_theme_plan" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Nature of  activity<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <asp:CheckBox ID="cutting_and_burining_of_fireline" runat="server" /><label for="cutting_and_burining_of_fireline" class="">Cutting and burining of fireline</label><br />
        <asp:CheckBox ID="demarcation_of_boundary" runat="server" /><label for="demarcation_of_boundary" class="">Demarcation of boundary</label><br />
        <asp:CheckBox ID="develop_artificial_watersource" runat="server" /><label for="develop_artificial_watersource" class="">Develop Artificial watersource</label><br />
        <asp:CheckBox ID="immunalization_of_cattle" runat="server" /><label for="immunalization_of_cattle" class="">Immunalization of cattle</label><br />
        <asp:CheckBox ID="maintenance_of_nature_trails" runat="server" /><label for="maintenance_of_nature_trails" class="">Maintenance of Nature trails</label><br />
        <asp:CheckBox ID="maintenance_of_water_source" runat="server" /><label for="maintenance_of_water_source" class="">Maintenance of water source</label><br />
        <asp:CheckBox ID="prescribed_burning" runat="server" /><label for="prescribed_burning" class="">Prescribed burning</label><br />
        <asp:CheckBox ID="salt_lick" runat="server" /><label for="salt_lick" class="">Salt lick</label><br />
        <asp:CheckBox ID="signages" runat="server" /><label for="signages" class="">Signages</label><br />
        <asp:CheckBox ID="staff_recruitment" runat="server" /><label for="staff_recruitment" class="">Staff recruitment</label><br />
        <asp:CheckBox ID="villages_translocated" runat="server" /><label for="villages_translocated" class="">Villages translocated</label><br />
        <asp:CheckBox ID="weed_control" runat="server" /><label for="weed_control" class="">Weed control</label><br />
       <asp:CheckBox ID="nature_other" runat="server" oncheckedchanged="nature_other_CheckedChanged" AutoPostBack="true" /><label for="nature_other" class="">Others</label>
        
    </div>
</div>

                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">If others specify</label>
    <div class="col-md-8">
        <input class="form-control" placeholder="If others specify" type="text" runat="server" maxlength="200" name="nature_others" id="nature_others" />
    </div>
</div>
                      
                            

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Financial Year<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Financial Year" type="text" runat="server" maxlength="200" name="financial_year" id="financial_year" oninput="DecimalCheck(this)" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="financial_year" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Status<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        
        <asp:DropDownList ID="ddlstatus" runat="server" AutoPostBack="true"  CssClass="form-control" >
            <asp:ListItem>Completed</asp:ListItem>
            <asp:ListItem>Ongoing </asp:ListItem>
            
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlstatus" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>



                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Target (Physical)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Target (Physical)" type="text" runat="server" maxlength="200" name="target_physical" id="target_physical" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="target_physical" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

                                                                                    <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Target (Financial in lakhs)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Target (Financial  in lakhs)" type="text" runat="server" maxlength="200" name="target_financial" id="target_financial" oninput="DecimalCheck(this)" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="target_financial" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>
      

                                                                                    <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Achievement (Physical)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Achievement (Physical)" type="text" runat="server" maxlength="200" name="achievement_physical" id="achievement_physical" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="achievement_physical" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

    <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Achievement (Financial in lakhs)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Achievement (Financial in lakhs)" type="text" runat="server" maxlength="200" name="achievements_financial" id="achievements_financial" oninput="DecimalCheck(this)"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="achievements_financial" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

                                <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Village<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Village" type="text" runat="server" maxlength="200" name="village" id="village" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="village" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

                                <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Latitude<b class="text-danger">&nbsp;</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Latitude" type="text" runat="server" maxlength="200" name="txtlatitude" id="txtlatitude" oninput="DecimalCheck(this)"/>
    </div>
</div>
                                <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Longitude<b class="text-danger">&nbsp;</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Longitude" type="text" runat="server" maxlength="200" name="txtlongitude" id="txtlongitude" oninput="DecimalCheck(this)"/>
       
    </div>
</div>

                                                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks<b class="text-danger">&nbsp;</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Remarks" type="text" runat="server" maxlength="200" name="remark" id="remark" />
    </div>
</div>

                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'MultiAgencyPrograms.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
