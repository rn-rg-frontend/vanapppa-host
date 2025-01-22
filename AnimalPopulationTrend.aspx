<%@ Page Title="Van - Trends in Animal Population (Year wise)" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="AnimalPopulationTrend.aspx.cs" Inherits="vansystem.AnimalPopulationTrend" %>

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

    // Function to calculate the total
    function calculateTotal() {
        var adultMale = document.getElementById('<%= txtAdultMale.ClientID %>').value || 0;
        var adultFemale = document.getElementById('<%= txtAdultFemale.ClientID %>').value || 0;
        var subAdult = document.getElementById('<%= txtSubAdult.ClientID %>').value || 0;
        var fawnsCubs = document.getElementById('<%= txtFawnsCubs.ClientID %>').value || 0;

        // Sum the values
        var total = parseInt(adultMale) + parseInt(adultFemale) + parseInt(subAdult) + parseInt(fawnsCubs);

        // Set the total in the txtTotal field
        document.getElementById('<%= txtTotal.ClientID %>').value = total;
    }
</script>

    <script type="text/javascript">


        function NumberCheck(input) {

            let value = input.value;/*<a href="NTFPExtraction.aspx">NTFPExtraction.aspx</a>*/
            let numbers = value.replace(/[^0-9]/g, "");
            input.value = numbers;

            calculateTotal();  // Recalculate the total on input change
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
                        <h3 class="tile-title"> Trends in Animal Population (Year wise)</h3>
                        <div class="tile-body">
                                                             
                            <!-- Year (Dropdown) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Year<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control" required="true">
            <asp:ListItem Text="Select Year" Value="" />
          
            <asp:ListItem Text="2000" Value="2000" />
            <asp:ListItem Text="2001" Value="2001" />
            <asp:ListItem Text="2002" Value="2002" />
            <asp:ListItem Text="2003" Value="2003" />
            <asp:ListItem Text="2004" Value="2004" />
            <asp:ListItem Text="2005" Value="2005" />
            <asp:ListItem Text="2006" Value="2006" />
            <asp:ListItem Text="2007" Value="2007" />
            <asp:ListItem Text="2008" Value="2008" />
            <asp:ListItem Text="2009" Value="2009" />
            <asp:ListItem Text="2010" Value="2010" />
            <asp:ListItem Text="2011" Value="2011" />
            <asp:ListItem Text="2012" Value="2012" />
            <asp:ListItem Text="2013" Value="2013" />
            <asp:ListItem Text="2014" Value="2014" />
            <asp:ListItem Text="2015" Value="2015" />
            <asp:ListItem Text="2016" Value="2016" />
            <asp:ListItem Text="2017" Value="2017" />
            <asp:ListItem Text="2018" Value="2018" />
            <asp:ListItem Text="2019" Value="2019" />
            <asp:ListItem Text="2020" Value="2020" />
            <asp:ListItem Text="2021" Value="2021" />
            <asp:ListItem Text="2022" Value="2022" />
            <asp:ListItem Text="2023" Value="2023" />
            <asp:ListItem Text="2024" Value="2024" />
        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ddlYear" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
    </div>
</div>

<!-- Season (Dropdown) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Season<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlSeason" runat="server" CssClass="form-control" required="true">
            <asp:ListItem Text="Select Season" Value="" />
            <asp:ListItem Text="Monsoon" Value="Monsoon" />
            <asp:ListItem Text="Summer" Value="Summer" />
            <asp:ListItem Text="Winter" Value="Winter" />
        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlSeason" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
    </div>
</div>

<!-- Name of the Species (TextBox) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Species<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
       
        <asp:DropDownList ID="ddlSpecies" runat="server" CssClass="form-control" required="true">
    <asp:ListItem Text="Herbivore" Value="Herbivore" />
    <asp:ListItem Text="Carnivore" Value="Carnivore" />
    <asp:ListItem Text="Birds" Value="Birds" />
            <asp:ListItem Text="Waterbirds" Value="Waterbirds" />
<asp:ListItem Text="Vulture" Value="Vulture" />
<asp:ListItem Text="Tiger" Value="Tiger" />
            <asp:ListItem Text="Elephant" Value="Elephant" />
            <asp:ListItem Text="Leopard" Value="Leopard" />
            <asp:ListItem Text="Others" Value="Others" />
</asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvNameOfSpecies" runat="server" ControlToValidate="ddlSpecies" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<!-- Population Estimation Methodology Used (Dropdown) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Population Estimation Methodology<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlEstimationMethodology" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="ddlEstimationMethodology_SelectedIndexChanged">
            <asp:ListItem Text="Select Methodology" Value="" />
            <asp:ListItem Text="Line Transect" Value="Line Transect" />
            <asp:ListItem Text="Sign Survey" Value="Sign Survey" />
            <asp:ListItem Text="Camera Trap" Value="Camera Trap" />
            <asp:ListItem Text="Total Count" Value="Total Count" />
            <asp:ListItem Text="Dung Count" Value="Dung Count" />
            <asp:ListItem Text="Others" Value="Others" />
        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlEstimationMethodology" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
    </div>
</div>

<!-- Others (TextBox) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Others</label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtOthers" runat="server" CssClass="form-control" placeholder="Any other details" Enabled="false"></asp:TextBox>
    </div>
</div>

                            <!-- Total (Integer) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Total (species/sqkm)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtTotal" runat="server" CssClass="form-control" placeholder="Total (species/sqkm)"  required="true" ReadOnly="true"></asp:TextBox>
       
</div>
</div>

<!-- Adult Male (Integer) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Adult Male (species/sqkm)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtAdultMale" runat="server" CssClass="form-control" placeholder="Adult Male (species/sqkm)" oninput="NumberCheck(this)" required="true"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAdultMale" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
    </div>
</div>

<!-- Adult Female (Integer) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Adult Female (species/sqkm)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtAdultFemale" runat="server" CssClass="form-control" placeholder="Adult Female (species/sqkm)" oninput="NumberCheck(this)" required="true"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAdultFemale" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
    </div>
</div>

<!-- Sub Adult (Integer) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Sub Adult<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtSubAdult" runat="server" CssClass="form-control" placeholder="Sub Adult (species/sqkm)" oninput="NumberCheck(this)" required="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSubAdult" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
    </div>
</div>

<!-- Fawns/Cubs (Integer) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Fawns/Cubs (species/sqkm)<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtFawnsCubs" runat="server" CssClass="form-control" placeholder="Fawns/Cubs (species/sqkm)" oninput="NumberCheck(this)" required="true"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtFawnsCubs" ErrorMessage="Please fill out this field." ForeColor="Red">
</asp:RequiredFieldValidator>
    </div>
</div>



<!-- Accuracy (Decimal) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Accuracy<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtAccuracy" runat="server" CssClass="form-control" placeholder="Accuracy" oninput="DecimalCheck(this)" required="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvAccuracy" runat="server" ControlToValidate="txtAccuracy" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

<!-- Remarks (TextBox) -->
<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks</label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Any additional remarks" TextMode="MultiLine"></asp:TextBox>
    </div>
</div>


                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'AnimalPopulationTrends.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
