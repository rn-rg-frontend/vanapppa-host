<%@ Page Title="Van - Construction/Maintenance of Infrastructure" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ConstructionOfInfrastructureData.aspx.cs" Inherits="vansystem.ConstructionOfInfrastructureData" %>

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
    <%--<script type="text/javascript">
        function toggleFields() {
            var typeOfConstruction = document.getElementById("type_of_construction").value;
            var category = document.getElementById("category");
            var usage = document.getElementById("usage");
            var surfaceType = document.getElementById("surface_type");
            var crossDrainageType = document.getElementById("cross_drainage_type");
            var bridgeType = document.getElementById("bridge_type");
            var natureOfBuilding = document.getElementById("nature_of_building");

            // Enable or disable category based on type of construction
            category.disabled = typeOfConstruction !== "Roads";
            if (category.disabled) category.value = ""; // Reset if disabled

            // Enable or disable usage based on type of construction
            usage.disabled = typeOfConstruction !== "Roads";
            if (usage.disabled) usage.value = ""; // Reset if disabled

            // Enable surface type based on type of construction
            surfaceType.disabled = !(typeOfConstruction === "Roads" || typeOfConstruction === "Bridges");
            if (surfaceType.disabled) surfaceType.value = ""; // Reset if disabled

            // Enable cross drainage type based on type of construction
            crossDrainageType.disabled = !(typeOfConstruction === "Roads" || typeOfConstruction === "Bridges");
            if (crossDrainageType.disabled) crossDrainageType.value = ""; // Reset if disabled

            // Enable bridge type based on type of construction
            bridgeType.disabled = typeOfConstruction !== "Bridges";
            if (bridgeType.disabled) bridgeType.value = ""; // Reset if disabled

            // Enable nature of building based on type of construction
            natureOfBuilding.disabled = typeOfConstruction !== "Buildings";
            if (natureOfBuilding.disabled) natureOfBuilding.value = ""; // Reset if disabled

            // Additional conditions can be handled similarly
        }

        function toggleDependentFields(dependentFieldId, triggerFieldId, triggerValue) {
            var dependentField = document.getElementById(dependentFieldId);
            var triggerField = document.getElementById(triggerFieldId);

            dependentField.disabled = triggerField.value !== triggerValue;
            if (dependentField.disabled) dependentField.value = ""; // Reset if disabled
        }
    </script>--%>
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
                        <h3 class="tile-title">Construction/Maintenance of Infrastructure</h3>
                        <div class="tile-body">
                           
                           
                         <div class="form-group row">
                <label class="control-label col-md-3">Range<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <asp:DropDownList class="form-control" ID="range" name="range" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqrange" runat="server" ControlToValidate="range" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Type of Construction<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                   
                    <asp:DropDownList ID="type_of_construction" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="TypeOfConstruction_SelectedIndexChanged">
    <asp:ListItem Value="">Select Type</asp:ListItem>
    <asp:ListItem Value="Bridges">Bridges</asp:ListItem>
    <asp:ListItem Value="Buildings">Buildings</asp:ListItem>
    <asp:ListItem Value="Roads">Roads</asp:ListItem>
</asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqtype_of_construction" runat="server" ControlToValidate="type_of_construction" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Category</label>
                <div class="col-md-8">
                    <asp:DropDownList ID="category" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="Category_SelectedIndexChanged">
    <asp:ListItem Value="">Select Category</asp:ListItem>
    <asp:ListItem Value="District road">District road</asp:ListItem>
    <asp:ListItem Value="National Highway">National Highway</asp:ListItem>
    <asp:ListItem Value="State highway">State highway</asp:ListItem>
    <asp:ListItem Value="Others">Others</asp:ListItem>
</asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqcategory" runat="server" ControlToValidate="category" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Other Category</label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Other Category" type="text" runat="server" maxlength="50" name="other_category" id="other_category" disabled />
               <asp:RequiredFieldValidator ID="rqother_category" runat="server" ControlToValidate="other_category" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Usage</label>
                <div class="col-md-8">
                    <asp:DropDownList ID="usage" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="Usage_SelectedIndexChanged">
    <asp:ListItem Value="">Select Usage</asp:ListItem>
    <asp:ListItem Value="Forest road">Forest road</asp:ListItem>
    <asp:ListItem Value="Open to management">Open to management</asp:ListItem>
    <asp:ListItem Value="Public road">Public road</asp:ListItem>
    <asp:ListItem Value="Others">Others</asp:ListItem>
</asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqusage" runat="server" ControlToValidate="usage" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Other Usage</label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Other Usage" type="text" runat="server" maxlength="50" name="other_usage" id="other_usage" disabled />
                <asp:RequiredFieldValidator ID="rqother_usage" runat="server" ControlToValidate="other_usage" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Surface Type</label>
                <div class="col-md-8">
                    <asp:DropDownList ID="surface_type" runat="server" CssClass="form-control"  AutoPostBack="true" OnSelectedIndexChanged="Surface_type_SelectedIndexChanged">
    <asp:ListItem Value="">Select Surface Type</asp:ListItem>
    <asp:ListItem Value="Black topped">Black topped</asp:ListItem>
    <asp:ListItem Value="Earth">Earth</asp:ListItem>
    <asp:ListItem Value="Metal">Metal</asp:ListItem>
    <asp:ListItem Value="Others">Others</asp:ListItem>
</asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqsurface_type" runat="server" ControlToValidate="surface_type" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Other Surface</label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Other Surface" type="text" runat="server" maxlength="50" name="other_surface" id="other_surface" disabled />
               <asp:RequiredFieldValidator ID="rqother_surface" runat="server" ControlToValidate="other_surface" ErrorMessage="Required" ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Name/Number of road</label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Name/Number of road" type="text" runat="server" maxlength="50" name="name_or_number" id="name_or_number" disabled />
               <asp:RequiredFieldValidator ID="rqname_or_number" runat="server" ControlToValidate="name_or_number" ErrorMessage="Required" ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Length Covered (in Kms)<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Length Covered (in Kms)" type="text" runat="server" maxlength="10" name="length_covered" id="length_covered" oninput="DecimalCheck(this)" disabled />
                <asp:RequiredFieldValidator ID="rqlength_covered" runat="server" ControlToValidate="length_covered" ErrorMessage="Required" ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Cross Drainage Type</label>
                <div class="col-md-8">
                    <asp:DropDownList ID="cross_drainage_type" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="Cross_drainage_type_SelectedIndexChanged">
    <asp:ListItem Value="">Select Drainage Type</asp:ListItem>
    <asp:ListItem Value="Culverts">Culverts</asp:ListItem>
    <asp:ListItem Value="Human pipe culverts">Human pipe culverts</asp:ListItem>
    <asp:ListItem Value="Others">Others</asp:ListItem>
</asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqcross_drainage_type" runat="server" ControlToValidate="cross_drainage_type" ErrorMessage="Required" ForeColor="Red" ></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Other Drainage Type</label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Other Drainage Type" type="text" runat="server" maxlength="50" name="other_drainage_type" id="other_drainage_type" disabled />
                <asp:RequiredFieldValidator ID="rqother_drainage_type" runat="server" ControlToValidate="other_drainage_type" ErrorMessage="Required" ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Total Cost (in lakhs)<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Total Cost (in lakhs)" type="text" runat="server" maxlength="10" name="total_cost" id="total_cost" oninput="DecimalCheck(this)"/>
               <asp:RequiredFieldValidator ID="rqtotal_cost" runat="server" ControlToValidate="total_cost" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Status<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                   <asp:DropDownList ID="status" runat="server" CssClass="form-control">
    <asp:ListItem Value="">Select Status</asp:ListItem>
    <asp:ListItem Value="Haven't started">Haven't started</asp:ListItem>
    <asp:ListItem Value="Ongoing">Ongoing</asp:ListItem>
    <asp:ListItem Value="Work completed">Work completed</asp:ListItem>
</asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqstatus" runat="server" ControlToValidate="status" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Bridge Type</label>
                <div class="col-md-8">
                   <asp:DropDownList ID="bridge_type" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="Bridge_type_SelectedIndexChanged">
    <asp:ListItem Value="">Select Bridge Type</asp:ListItem>
    <asp:ListItem Value="Masonry arch">Masonry arch</asp:ListItem>
    <asp:ListItem Value="Metal multi span">Metal multi span</asp:ListItem>
    <asp:ListItem Value="Suspension">Suspension</asp:ListItem>
    <asp:ListItem Value="Wooden trestle">Wooden trestle</asp:ListItem>
    <asp:ListItem Value="Others">Others</asp:ListItem>
</asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqbridge_type" runat="server" ControlToValidate="bridge_type" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Other Bridge Type</label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Other Bridge Type" type="text" runat="server" maxlength="50" name="other_bridge_type" id="other_bridge_type" disabled />
               <asp:RequiredFieldValidator ID="rqother_bridge_type" runat="server" ControlToValidate="other_bridge_type" ErrorMessage="Required" ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
                    </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Nature of the Building</label>
                <div class="col-md-8">
                    <asp:DropDownList ID="nature_of_building" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="Nature_of_building_SelectedIndexChanged">
    <asp:ListItem Value="">Select Nature</asp:ListItem>
    <asp:ListItem Value="Barrier">Barrier</asp:ListItem>
    <asp:ListItem Value="Chauki">Chauki</asp:ListItem>
    <asp:ListItem Value="Hide">Hide</asp:ListItem>
    <asp:ListItem Value="Office">Office</asp:ListItem>
    <asp:ListItem Value="Permanent patrolling camp">Permanent patrolling camp</asp:ListItem>
    <asp:ListItem Value="Residential">Residential</asp:ListItem>
    <asp:ListItem Value="Store">Store</asp:ListItem>
    <asp:ListItem Value="Temporary patrolling camp">Temporary patrolling camp</asp:ListItem>
    <asp:ListItem Value="Tourist facility">Tourist facility</asp:ListItem>
    <asp:ListItem Value="Watch tower">Watch tower</asp:ListItem>
    <asp:ListItem Value="Others">Others</asp:ListItem>
</asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rqnature_of_building" runat="server" ControlToValidate="nature_of_building" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Other Building</label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Other Building" type="text" runat="server" maxlength="50" name="other_building" id="other_building" disabled />
                <asp:RequiredFieldValidator ID="rqother_building" runat="server" ControlToValidate="other_building" ErrorMessage="Required" ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Compartment Name</label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Compartment Name" type="text" runat="server" maxlength="50" name="compartment_name" id="compartment_name" disabled />
                <asp:RequiredFieldValidator ID="rqcompartment_name" runat="server" ControlToValidate="compartment_name" ErrorMessage="Required" ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Landmark</label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Landmark" type="text" runat="server" maxlength="50" name="landmark" id="landmark" disabled />
                <asp:RequiredFieldValidator ID="rqlandmark" runat="server" ControlToValidate="landmark" ErrorMessage="Required" ForeColor="Red" Enabled="false"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-md-3">Numbers<b class="text-danger">&nbsp;*</b></label>
                <div class="col-md-8">
                    <input class="form-control" placeholder="Numbers" type="text" runat="server" maxlength="10" name="numbers" id="numbers" oninput="NumberCheck(this)" />
                <asp:RequiredFieldValidator ID="rqnumbers" runat="server" ControlToValidate="numbers" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>




                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'ConstructionOfInfrastructures.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
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
