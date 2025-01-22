<%@ Page Title="Van - Change in land Use" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ListOfVillage.aspx.cs" Inherits="vansystem.ListOfVillage" %>

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


        #img {
            width: 20px;
            height: 20px;
            position: absolute;
            top: 15%;
            right: 5%;
        }

        #pass {
            width: 20px;
            height: 20px;
            position: absolute;
            top: 15%;
            right: 5%;
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
                        <h3 class="tile-title">List of Village - New Village Detail</h3>
                        <div class="tile-body">


                           <%-- <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Division<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">

                                    <asp:DropDownList ID="ddldivision" runat="server" OnSelectedIndexChanged="ddlselectdivision_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddldivision" ErrorMessage="Please fill out this field." CssClass="required-field-message"></asp:RequiredFieldValidator>
                                </div>
                            </div>--%>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">PA<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Enter PA" type="text" runat="server" maxlength="25" name="section" id="section" onkeypress="return isAlphabet(event)" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="section" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Range<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">

                                    <asp:DropDownList ID="ddlrange" runat="server" OnSelectedIndexChanged="ddlselectrange_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlrange" ErrorMessage="Please fill out this field." CssClass="required-field-message"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Beat<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">

                                    <asp:DropDownList ID="ddlbeat" runat="server" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="ddlbeat" ErrorMessage="Please fill out this field." CssClass="required-field-message"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Name of the village<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Enter village name" type="text" runat="server" maxlength="25" name="name_of_the_village" id="name_of_the_village" onkeypress="return isAlphabet(event)" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="name_of_the_village" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                             <div class="form-group row">
 <label class="control-label col-md-3" style="margin-top: 11px;">Village location (<a href="https://www.google.com/maps?q=Kerala" 
   target="_blank" 
   rel="noopener noreferrer">
   Map
</a>) - Latitude<b class="text-danger">&nbsp;*</b></label>
 <div class="col-md-8">
     <input class="form-control" placeholder="latitude" type="text" runat="server" maxlength="200" name="latitude" id="latitude" oninput="DecimalCheck(this)"/>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="latitude" ErrorMessage="Please fill out this field." ForeColor="Red">
 </asp:RequiredFieldValidator>
 </div>
 </div>
                                                        <div class="form-group row">
<label class="control-label col-md-3" style="margin-top: 11px;">Village location  (<a href="https://www.google.com/maps?q=Kerala" 
   target="_blank" 
   rel="noopener noreferrer">
   Map
</a>) - Longitude<b class="text-danger">&nbsp;*</b></label>
<div class="col-md-8">
    <input class="form-control" placeholder="Longitude" type="text" runat="server" maxlength="200" name="longitude" id="longitude" oninput="DecimalCheck(this)"/>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="longitude" ErrorMessage="Please fill out this field." ForeColor="Red">
 </asp:RequiredFieldValidator>
</div>
</div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">District<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="District" type="text" runat="server" maxlength="25" name="district" id="district" onkeypress="return isAlphabet(event)" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="district" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>

                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Subdistrict<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Subdistrict" type="text" runat="server" maxlength="25" name="subdistrict" id="subdistrict" onkeypress="return isAlphabet(event)" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="subdistrict" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>
                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Block<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        <input class="form-control" placeholder="Block" type="text" runat="server" maxlength="25" name="block" id="block" onkeypress="return isAlphabet(event)" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="block" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
    </div>
</div>

                             <div class="form-group row">
     <label class="control-label col-md-3" style="margin-top: 11px;">Status of village<b class="text-danger">&nbsp;*</b></label>
     <div class="col-md-8">

         <asp:DropDownList ID="ddlstatus_of_village" runat="server" AutoPostBack="true"  CssClass="form-control">
             <asp:ListItem>Forest Village</asp:ListItem>
             <asp:ListItem>Revenue village</asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlstatus_of_village" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
     </div>
 </div>

                                                                                    <div class="form-group row">
<label class="control-label col-md-3" style="margin-top: 11px;">Distance of village from the forest/PA boundary (in kms)<b class="text-danger">&nbsp;*</b></label>
<div class="col-md-8">
    <input class="form-control" placeholder="Distance of village from the forest/PA boundary (in kms)" type="text" runat="server" maxlength="200" name="distance_of_village" id="distance_of_village" oninput="DecimalCheck(this)"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="distance_of_village" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
</div>
</div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">If EDC is formed<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">

                                    <asp:DropDownList ID="ddledcformed" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlselectedcformed_SelectedIndexChanged" CssClass="form-control">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddledcformed" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Name of the EDC<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input  class="form-control" placeholder="Enter EDC name" type="text" runat="server" maxlength="25" name="name_of_the_edc" id="name_of_the_edc" onkeypress="return isAlphabet(event)" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="name_of_the_edc" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Human Population<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Human Population" type="text" maxlength="10" name="human_population" runat="server" id="human_population" oninput="NumberCheck(this)" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="human_population" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Cattle Population<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Cattle Population" type="text" maxlength="10" name="cattle_population" runat="server" id="cattle_population" oninput="NumberCheck(this)" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="cattle_population" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>

                                </div>
                            </div>



                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Agricultural Area (Dry in ha)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Agricultural Area (Dry in ha)" type="text" maxlength="20" name="agricultural_area_dry" runat="server" id="agricultural_area_dry"  oninput="DecimalCheck(this)"/>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="agricultural_area_dry" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Agricultural Area (Wet in ha)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Agricultural Area (Wet in ha)" type="text" maxlength="20" name="agricultural_area_wet" runat="server" id="agricultural_area_wet"  oninput="DecimalCheck(this)"/>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="agricultural_area_wet" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>

                                </div>
                            </div>


                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Main crops<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Main crops" type="text" runat="server" maxlength="200" name="main_crops" id="main_crops" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="main_crops" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Number of wells/borewells<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Number of wells/borewells" type="text" runat="server" maxlength="200" name="number_of_wells" id="number_of_wells" oninput="NumberCheck(this)"/>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="number_of_wells" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
                                    </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Number of tanks<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Number of tanks" type="text" runat="server" maxlength="200" name="number_of_tanks" id="number_of_tanks" oninput="NumberCheck(this)"/>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="number_of_tanks" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
                                </div>
                            </div>



                            <br />
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Remarks<b class="text-danger">&nbsp;</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Remarks" type="text" runat="server" maxlength="200" name="remark" id="remark" />
                                </div>
                            </div>

                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">

                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit" onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'ListOfVillages.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
