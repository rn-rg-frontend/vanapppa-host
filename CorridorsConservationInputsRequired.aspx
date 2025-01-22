<%@ Page Title="Van - Existing Corridors-Conservation Inputs Required" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="CorridorsConservationInputsRequired.aspx.cs" Inherits="vansystem.CorridorsConservationInputsRequired" %>

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
                        <h3 class="tile-title">Existing Corridors-Conservation Inputs Required</h3>
                        <div class="tile-body">
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
        <input class="form-control" placeholder="Length (in meters)" type="text" runat="server" maxlength="25" name="length" id="length" oninput="DecimalCheck(this)" onkeypress=""/>
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
    <label class="control-label col-md-3" style="margin-top: 11px;">Nature of inputs/treatment<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Nature of inputs/treatment" type="text" runat="server" maxlength="25" name="nature_of_inputs_treatment" id="nature_of_inputs_treatment" onkeypress="return isAlphabet(event)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="nature_of_inputs_treatment" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Target<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Target" type="text" runat="server" maxlength="25" name="target" id="target" onkeypress="return isAlphabet(event)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="target" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Agencies<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox class="form-control" placeholder="Agencies" TextMode="MultiLine" Rows="5" Columns="30" runat="server" maxlength="25" name="agencies" id="agencies" onkeypress="return isAlphabet(event)"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="agencies" ErrorMessage="Please fill out this field." ForeColor="Red">
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
    <label class="control-label col-md-3" style="margin-top: 11px;">Anticipated investment (in lakhs)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <input class="form-control" placeholder="Anticipated investment (in lakhs)" type="text" runat="server" maxlength="25" name="anticipated_investment" id="anticipated_investment" onkeypress="" oninput="DecimalCheck(this)"/>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="anticipated_investment" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>                  

                                            

                                                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Remarks" type="text" runat="server" maxlength="200" name="remark" id="remark" />
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
