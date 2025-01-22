<%@ Page Title="Van - Existing/Potential Corridors- Monitoring Habitat Recovery" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="PotentialCorridorsMonitoringHabitatRecovery.aspx.cs" Inherits="vansystem.PotentialCorridorsMonitoringHabitatRecovery" %>

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
            //input.value = numbers;
            validValue = numbers;

            // Ensure only one decimal point is allowed
            let parts = validValue.split(".");
            if (parts.length > 2) {
                validValue = parts[0] + "." + parts.slice(1).join(""); // Keep the first dot, remove others
            }

            // Prevent starting with a decimal point
            if (validValue.startsWith(".")) {
                validValue = "0" + validValue; // Prepend a zero
            }



            input.value = validValue;
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
                        <h3 class="tile-title">Potential/Existing Corridors- Monitoring Habitat Recovery</h3>
                        <div class="tile-body">
                                                                                    <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Type<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control" AutoPostBack="true"  OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
    <asp:ListItem Text="Existing Corridors-Monitoring Habitat Recovery" Value="Existing"></asp:ListItem>
    <asp:ListItem Text="Potential Corridors-Monitoring Habitat Recovery" Value="Potential"></asp:ListItem>
   
</asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlType" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Corridor Name<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">                                 
                                    <input class="form-control" placeholder="Corridor Name" type="text" runat="server" maxlength="25" name="corridor_name" id="corridor_name" onkeypress="return isAlphabet(event)"/>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="corridor_name" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Corridor Number<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Corridor Number" type="text" runat="server" maxlength="25" name="corridor_number" id="corridor_number" onkeypress=""/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="corridor_number" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                           <%-- <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Section<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Section" type="text" runat="server" maxlength="25" name="section" id="section" onkeypress="return isAlphabet(event)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="section" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>--%>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Length (in meters)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Length (in meters)" type="text" runat="server" maxlength="25" name="length" id="length"  oninput="DecimalCheck(this)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="length" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Financial Year<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlFinancialYear" runat="server" CssClass="form-control">
    <asp:ListItem Text="2010-2011" Value="2010-2011"></asp:ListItem>
    <asp:ListItem Text="2011-2012" Value="2011-2012"></asp:ListItem>
    <asp:ListItem Text="2012-2013" Value="2012-2013"></asp:ListItem>
    <asp:ListItem Text="2013-2014" Value="2013-2014"></asp:ListItem>
    <asp:ListItem Text="2014-2015" Value="2014-2015"></asp:ListItem>
    <asp:ListItem Text="2015-2016" Value="2015-2016"></asp:ListItem>
    <asp:ListItem Text="2016-2017" Value="2016-2017"></asp:ListItem>
    <asp:ListItem Text="2017-2018" Value="2017-2018"></asp:ListItem>
    <asp:ListItem Text="2018-2019" Value="2018-2019"></asp:ListItem>
    <asp:ListItem Text="2019-2020" Value="2019-2020"></asp:ListItem>
    <asp:ListItem Text="2020-2021" Value="2020-2021"></asp:ListItem>
    <asp:ListItem Text="2021-2022" Value="2021-2022"></asp:ListItem>
    <asp:ListItem Text="2022-2023" Value="2022-2023"></asp:ListItem>
    <asp:ListItem Text="2023-2024" Value="2023-2024"></asp:ListItem>
    <asp:ListItem Text="2024-2025" Value="2024-2025"></asp:ListItem>
    <asp:ListItem Text="2025-2026" Value="2025-2026"></asp:ListItem>
    <asp:ListItem Text="2026-2027" Value="2026-2027"></asp:ListItem>
    <asp:ListItem Text="2027-2028" Value="2027-2028"></asp:ListItem>
    <asp:ListItem Text="2028-2029" Value="2028-2029"></asp:ListItem>
    <asp:ListItem Text="2029-2030" Value="2029-2030"></asp:ListItem>
    <asp:ListItem Text="2030-2031" Value="2030-2031"></asp:ListItem>
</asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlFinancialYear" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;"> Inputs/treatment that had been provided<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder=" Inputs/treatment that had been provided" type="text" runat="server" maxlength="25" name="inputs_treatment_provided" id="inputs_treatment_provided" onkeypress="return isAlphabet(event)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="inputs_treatment_provided" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Monitoring Technique<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Monitoring Technique" type="text" runat="server" maxlength="25" name="monitoring_technique" id="monitoring_technique" onkeypress="return isAlphabet(event)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="monitoring_technique" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Indicators of recovery<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Indicators of recovery" type="text" runat="server" maxlength="25" name="indicators_of_recovery" id="indicators_of_recovery" onkeypress="return isAlphabet(event)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="indicators_of_recovery" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Nature of progress<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Nature of progress" type="text" runat="server" maxlength="25" name="nature_of_progress" id="nature_of_progress" onkeypress="return isAlphabet(event)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="nature_of_progress" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Constraints<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox class="form-control" placeholder="Constraints" TextMode="MultiLine" Rows="5" Columns="30" runat="server" maxlength="25" name="constraints" id="constraints" onkeypress="return isAlphabet(event)"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="constraints" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>              

                                            

                                                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks<b class="text-danger">&nbsp;</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Remarks" type="text" runat="server" maxlength="200" name="remark" id="remark" />
    </div>
</div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Is there a plan for restoration of corridor <b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddl_plan_for_restoration" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="plan_for_restoration_SelectedIndexChanged">
                                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                        <asp:ListItem Text="No" Value="No"></asp:ListItem>

                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddl_plan_for_restoration" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Who are the landowners in the corridor<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox class="form-control" placeholder="Who are the landowners in the corridor" TextMode="MultiLine" Rows="5" Columns="30" runat="server" maxlength="25" name="txt_landowners_in_corridor" id="txt_landowners_in_corridor" onkeypress="return isAlphabet(event)"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txt_landowners_in_corridor" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>              

                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'CorridorsConservationInputsRequireds.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
