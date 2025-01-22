<%@ Page Title="Van - Change in land Use" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="LandUseChange.aspx.cs" Inherits="vansystem.LandUseChange" %>

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
                        <h3 class="tile-title">New Land Use Change</h3>
                        <div class="tile-body">
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">PA<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">                                 
                                    <input class="form-control" placeholder="Enter PA" type="text" runat="server" maxlength="25" name="pa" id="pa" onkeypress="return isAlphabet(event)"/>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pa" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Division<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">

                                    <asp:DropDownList ID="ddldivision" runat="server" OnSelectedIndexChanged="ddlselectdivision_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddldivision" ErrorMessage="Please fill out this field." CssClass="required-field-message"></asp:RequiredFieldValidator>
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

                                    <asp:DropDownList ID="ddlbeat" runat="server"  AutoPostBack="true" CssClass="form-control"></asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlbeat" ErrorMessage="Please fill out this field." CssClass="required-field-message"></asp:RequiredFieldValidator>
                                    
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Place<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Enter Place" type="text" runat="server" maxlength="25" name="place" id="place" onkeypress="return isAlphabet(event)" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="place" ErrorMessage="Please fill out this field." ForeColor="Red">
        </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Land Use Before<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Enter Land Use Before" type="text" runat="server" maxlength="25" name="land_use_before" id="land_use_before" onkeypress="return isAlphabet(event)" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="land_use_before" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Current Land Use<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    <input class="form-control" placeholder="Enter Current Land Use" type="text" runat="server" maxlength="25" name="current_land_use" id="current_land_use" onkeypress="return isAlphabet(event)" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="current_land_use" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
                                </div>
                            </div>



                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Approximate Area Changed (in ha)<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">                                  
                                    <input class="form-control" placeholder="Enter Approximate Area Changed (ha)" type="text" maxlength="20" name="approx_area_change" runat="server" id="approx_area_change" oninput="DecimalCheck(this)"/>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="approx_area_change" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                    
                                </div>
                            </div>
                    
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Year of Change<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">
                                    
                                    <asp:DropDownList ID="ddlyear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlselectyear_SelectedIndexChanged" CssClass="form-control">
                                        <asp:ListItem>1947</asp:ListItem>
<asp:ListItem>1948</asp:ListItem>
<asp:ListItem>1949</asp:ListItem>
<asp:ListItem>1950</asp:ListItem>
<asp:ListItem>1951</asp:ListItem>
<asp:ListItem>1952</asp:ListItem>
<asp:ListItem>1953</asp:ListItem>
<asp:ListItem>1954</asp:ListItem>
<asp:ListItem>1955</asp:ListItem>
<asp:ListItem>1956</asp:ListItem>
<asp:ListItem>1957</asp:ListItem>
<asp:ListItem>1958</asp:ListItem>
<asp:ListItem>1959</asp:ListItem>
<asp:ListItem>1960</asp:ListItem>
<asp:ListItem>1961</asp:ListItem>
<asp:ListItem>1962</asp:ListItem>
<asp:ListItem>1963</asp:ListItem>
<asp:ListItem>1964</asp:ListItem>
<asp:ListItem>1965</asp:ListItem>
<asp:ListItem>1966</asp:ListItem>
<asp:ListItem>1967</asp:ListItem>
<asp:ListItem>1968</asp:ListItem>
<asp:ListItem>1969</asp:ListItem>
<asp:ListItem>1970</asp:ListItem>
<asp:ListItem>1971</asp:ListItem>
<asp:ListItem>1972</asp:ListItem>
<asp:ListItem>1973</asp:ListItem>
<asp:ListItem>1974</asp:ListItem>
<asp:ListItem>1975</asp:ListItem>
<asp:ListItem>1976</asp:ListItem>
<asp:ListItem>1977</asp:ListItem>
<asp:ListItem>1978</asp:ListItem>
<asp:ListItem>1979</asp:ListItem>
<asp:ListItem>1980</asp:ListItem>
<asp:ListItem>1981</asp:ListItem>
<asp:ListItem>1982</asp:ListItem>
<asp:ListItem>1983</asp:ListItem>
<asp:ListItem>1984</asp:ListItem>
<asp:ListItem>1985</asp:ListItem>
<asp:ListItem>1986</asp:ListItem>
<asp:ListItem>1987</asp:ListItem>
<asp:ListItem>1988</asp:ListItem>
<asp:ListItem>1989</asp:ListItem>
<asp:ListItem>1990</asp:ListItem>
<asp:ListItem>1991</asp:ListItem>
<asp:ListItem>1992</asp:ListItem>
<asp:ListItem>1993</asp:ListItem>
<asp:ListItem>1994</asp:ListItem>
<asp:ListItem>1995</asp:ListItem>
<asp:ListItem>1996</asp:ListItem>
<asp:ListItem>1997</asp:ListItem>
<asp:ListItem>1998</asp:ListItem>
<asp:ListItem>1999</asp:ListItem>
<asp:ListItem>2000</asp:ListItem>
<asp:ListItem>2001</asp:ListItem>
<asp:ListItem>2002</asp:ListItem>
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
<asp:ListItem>2025</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlyear" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br/>
                           
                         <br/>
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
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'LandUseChanges.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
