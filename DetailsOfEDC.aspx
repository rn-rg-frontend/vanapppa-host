<%@ Page Title="Van - Details of Ecodevelopment Committees" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="DetailsOfEDC.aspx.cs" Inherits="vansystem.DetailsOfEDC" %>

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
                        <h3 class="tile-title">Details of Ecodevelopment Committees</h3>
                        <div class="tile-body">
                            <div class="form-group row">
                                <label class="control-label col-md-3" style="margin-top: 11px;">Name of EDC<b class="text-danger">&nbsp;*</b></label>
                                <div class="col-md-8">                                 
                                    <input class="form-control" placeholder="Enter Name Of EDC" type="text" runat="server" maxlength="25" name="name_of_edc" id="name_of_edc" onkeypress="return isAlphabet(event)"/>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name_of_edc" ErrorMessage="Please fill out this field." ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Year of Formation<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        
        <asp:DropDownList ID="ddlyear" runat="server" AutoPostBack="true"  CssClass="form-control">
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

                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Category of EDC<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        
        <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="true" CssClass="form-control">
            <asp:ListItem>Village Group - Tribal</asp:ListItem>
            <asp:ListItem>Village Group - General</asp:ListItem>
            <asp:ListItem>Village Group - Mixed</asp:ListItem>
            <asp:ListItem>User group</asp:ListItem>
            <asp:ListItem>Professional EDC</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
            
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlcategory" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>
                            
                             <div class="form-group row">
     <label class="control-label col-md-3" style="margin-top: 11px;">Jurisdiction of EDC<b class="text-danger">&nbsp;*</b></label>
     <div class="col-md-8">                                 
         <asp:TextBox class="form-control" placeholder="Jurisdiction of EDC" TextMode="MultiLine" Rows="5" Columns="30" runat="server" maxlength="150" name="jurisdiction_of_edc" id="jurisdiction_of_edc" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="jurisdiction_of_edc" ErrorMessage="Please fill out this field." ForeColor="Red">
         </asp:RequiredFieldValidator>
     </div>
 </div>

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Number of families<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                  
        <input class="form-control" placeholder="Enter Number of Families" type="text" maxlength="10" name="number_of_families" runat="server" id="number_of_families" oninput="NumberCheck(this)"/>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="number_of_families" ErrorMessage="Please fill out this field." ForeColor="Red">        </asp:RequiredFieldValidator>
       
    </div>
</div>

                                                        <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">SC families<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                  
        <input class="form-control" placeholder="SC families" type="text" maxlength="10" name="sc" runat="server" id="sc" oninput="NumberCheck(this)"/>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="sc" ErrorMessage="Please fill out this field." ForeColor="Red">        </asp:RequiredFieldValidator>
        
    </div>
</div>

                                                                                    <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">ST families<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                  
        <input class="form-control" placeholder="ST families" type="text" maxlength="10" name="st" runat="server" id="st" oninput="NumberCheck(this)"/>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="st" ErrorMessage="Please fill out this field." ForeColor="Red">        </asp:RequiredFieldValidator>
        
    </div>
</div>

     <div class="form-group row">                                                                                                          
    <label class="control-label col-md-3" style="margin-top: 11px;">Others<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                  
        <input class="form-control" placeholder="Others" type="text" maxlength="10" name="others" runat="server" id="others" oninput="NumberCheck(this)"/>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="others" ErrorMessage="Please fill out this field." ForeColor="Red">        </asp:RequiredFieldValidator>
       
    </div>
</div>


   <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Status<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        
        <asp:DropDownList ID="ddlstatus" runat="server" AutoPostBack="true" CssClass="form-control">
            <asp:ListItem>Active</asp:ListItem>
            <asp:ListItem>Inactive</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlstatus" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>

                            
                    
                            
                                 <div class="form-group row">                                                                                                          
    <label class="control-label col-md-3" style="margin-top: 11px;">Management Area (in ha)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                  
        <input class="form-control" placeholder="Management Area(Ha)" type="text" maxlength="10" name="management_area" runat="server" id="management_area" oninput="NumberCheck(this)"/>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="management_area" ErrorMessage="Please fill out this field." ForeColor="Red">        </asp:RequiredFieldValidator>
       
    </div>
</div>

                               <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">EDC micro plan prepared<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">
        
        <asp:DropDownList ID="ddlEDCMicroplanPrepared" runat="server" AutoPostBack="true" CssClass="form-control">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlEDCMicroplanPrepared" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic" ></asp:RequiredFieldValidator>
    </div>
</div>
                           
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
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'DetailsOfEDCs.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
