<%@ Page Title="" Language="C#" MasterPageFile="~/Range/Range.Master" AutoEventWireup="true" CodeBehind="PlotDescription.aspx.cs" Inherits="vansystem.Range.PlotDescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Include jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>

    <!-- Bootstrap Multiselect CSS and JS -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>

    <!-- Select2 CSS and JS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>

    <!-- for SweetAlert Library ND js-->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript">
    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />

    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

    <style>
        table {
            width: auto;
            border-collapse: collapse;
             /*margin: 50px auto 0;*/
            margin-left: 1px;
            /*margin-top: -1.3%;*/
        }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: -1rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            white-space: nowrap;
            /*height: 10vh;*/
            z-index: 10;
            font-weight: bold;
            text-align: center;
        }

        .dropdown-menu {
            z-index: 1;
        }

        .select2-dropdown {
            z-index: 1;
        }

        td, th {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
            font-size: 15px;
        }

        .labels tr td {
            background-color: #2cc16a;
            font-weight: bold;
            color: #fff;
        }

        .label tr td label {
            display: block;
        }


        [data-toggle="toggle"] {
            display: none;
        }

        .box-content {
            max-height: 100%;
            display: flex;
            align-items: center;
        }

        @media (min-width: 992px) {
            .col-md-8, .col-md-4 {
                margin-right: 1%;
            }

            .col-md-8 {
                width: 65%;
            }

            .col-md-4 {
                width: 33%;
            }
        }

        body {
            overflow-x: hidden;
            overflow-y: hidden;
        }

        /*h3 {
            margin-left: 3%;
        }*/

        body {
            font-family: "GillSans", sans-serif !important;
            font-size: 16px !important;
        }



        th, td {
            padding: 0.75rem;
        }

        .listboxCSS {
            font-size: 8pt;
            font-family: Arial;
            border: 0;
            overflow: auto;
        }

        .divBorderCSS {
            border-left-width: thin;
            border-right-width: thin;
            border-top: thin;
            border-bottom: thin;
            border-color: #7F9DB9;
            border-style: solid;
            overflow: auto;
            width: 300px;
            height: 100px;
            POSITION: relative;
        }

        #stickyHeader {
            position: fixed;
            top: 5%;
            left: -15px;
            width: 100%;
            background-color: #fcfbfb;
            padding: 29px;
            text-align: left;
        }

        .card-body {
            background-color: rgb(252, 252, 252);
            overflow: auto;
            margin-left: 2%;
            margin-bottom: 60px;
            width: 96%;
            max-height: calc(80vh - 100px);
            min-height: calc(80vh - 100px);
        }

        .custom-pager {
            all: initial;
            border: none !important;
            margin: 0px auto !important;
            padding: unset;
            text-align: center;
            position: fixed;
            bottom: 1vh;
            left: 90%;
            transform: translateX(-75%);
            z-index: 999;
        }

        .sweet-alert button.cancel {
            background-color: #dc3545 !important;
        }



        .custom-pager a:hover,
        .custom-pager a:active,
        .custom-pager a.active {
            background-color: #ddd;
        }

        .btn-approved {
            background-color: green;
            color: white;
        }

        .dropdown-menu {
            MAX-HEIGHT: 150PX;
            OVERFLOW-Y: AUTO;
        }

        /*@media screen and (max-width: 1917px) {

            .card-body {
                width: 100%;
                max-height: calc(75vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 85%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }*/

        /*@media screen and (max-width: 1153px) {

            .card-body {
                width: 100%;
                max-height: calc(73vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 63%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }*/

        /*@media screen and (max-width: 780px) {

            .card-body {
                width: 100%;
                max-height: calc(66vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 63%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }*/

        body {
            font-family: "GillSans", sans-serif !important;
            font-size: 16px !important;
        }
    </style>

    <script type="text/javascript">


        function NumberCheck(input) {

            let value = input.value;
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

            let year = value.replace(/[^0-9]/g, "").substring(0, 4);

            input.value = year;
        }
    </script>



    <%--  <script>
        window.onload = function () {
            var cardBody = document.getElementById('cardBody');
            cardBody.scrollTop = cardBody.scrollHeight;
        };
    </script>--%>



    <script>
        var object = { status: false, ele: null };

        function confirmDelete1(ev) {
            if (object.status) {
                object.status = false;
                return true;
            }

            swal({
                title: "Are you sure you want to delete this entry?",
                text: "This entry cannot be recovered and will be deleted permanently.",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, delete it!",
                cancelButtonText: "No, cancel!",
                closeOnConfirm: true,
            },
                function () {
                    object.status = true;
                    object.ele = ev;
                    object.ele.click();
                    object.status = false;
                });

            return false;
        }
    </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>

    <div>
        <div class="container-fluid mt-6">
            <div style="margin-left: 0%; /*width: 113%; */ margin-top: 85px;">
                <div class="d-md-flex  justify-content-between align-items-center text-center">
                    <div style="margin-left: 3% !important;">
                        <h3 style="margin-inline: auto; margin-left: 40px !important;"><b>Plot Description</b></h3>
                    </div>
                    <div class="row d-sm-flex justify-content-center align-items-end text-center">
                        <div>
                            <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No records found.</asp:Label>
                        </div>
                        <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top: 6px;">
                            Search:
                                 <asp:TextBox ID="txtSearch" runat="server" Style="background-color: #004990; color: white" Font-Size="20px" onkeydown="return Search_Gridview(event)" onkeyup="Search_function(this)"></asp:TextBox>
                        </div>
                        <div class="pl-4">
                            <asp:Button ID="btnExport" runat="server" Text="Export to Excel" Style="height: 34px" OnClick="btnExport_Click" />
                        </div>

                        <%-- <input type="button" runat="server" value="Export to Excel" onclick="exportToExcel()" />--%>
                        <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top: 6px; padding-right:15px;">
                            Show
                            <div class="pl-2 pr-2">
                                <asp:DropDownList ID="ddlPageSize" Style="background-color: #004990; color: white; height: 34px; width: 70px; border-radius: 3px; height: 30px;" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                    <asp:ListItem Text="10" Value="10" />
                                    <asp:ListItem Text="25" Value="25" />
                                    <asp:ListItem Text="50" Value="50" />
                                </asp:DropDownList>
                            </div>
                            entries
                        
                        </div>

                    </div>
                </div>
                <%--<marquee>
                    <div id="recordNotFoundMessage" style="display: none; color: red;">No Records Found.</div>
                </marquee>--%>
                <hr />
                   <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 1.7%; width: 99%;">

                    <contenttemplate>



                        <div class="box-content" style="display: flex; align-items: center; /*margin-top: -1%*/ " onkeydown="return Search_Gridview(event)">
                            <asp:UpdatePanel runat="server" ID="updatepanel1">
                                <ContentTemplate>



                                    <div class="box-content" style="display: flex; align-items: center;" onkeydown="return Search_Gridview(event)">
                                        <asp:GridView ID="GVPlotDescription" OnPageIndexChanging="GVPlotDescription_PageIndexChanging" AutoGenerateColumns="False" runat="server" DataKeyNames="PlotDescId" OnRowCancelingEdit="GVPlotDescription_RowCancelingEdit" OnRowEditing="GVPlotDescription_RowEditing" OnRowUpdating="GVPlotDescription_RowUpdating" OnRowDataBound="GVPlotDescription_RowDataBound" AllowPaging="True" OnRowCommand="GVPlotDescription_RowCommand" ShowHeaderWhenEmpty="true">
                                            <AlternatingRowStyle BackColor="White" />
                                            <RowStyle BackColor="#f5f5f5" />



                                            <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>
                                                    <ItemStyle Width="100px" />
                                                </asp:TemplateField>

                                                <%--  <asp:BoundField HeaderText="Sr.No" DataField="RowNumber" ItemStyle-Width="200%" />--%>
                                                <asp:BoundField DataField="PlotDescId" ItemStyle-Width="150px" HeaderText="Survey ID" ReadOnly="True">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>
                                                <%--<asp:BoundField DataField="PlotDescName" ItemStyle-Width="150px" HeaderText="Surveyor Name">
                                            
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Surveyor Name">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="txtSurveyorName" runat="server" Text='<%# Bind("PlotDescName") %>' onkeypress="return isAlphaNumeric(event);"></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSurveyorName" runat="server" Text='<%# Bind("PlotDescName") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:BoundField DataField="gender" HeaderText="Gender" ReadOnly="true" ItemStyle-Width="150px">
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>


                                                <%--<asp:BoundField DataField="PhoneNumber" ItemStyle-Width="150px" HeaderText="Surveyor Phone No">
                                             <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>

                                                <asp:TemplateField HeaderText="Surveyor Phone No">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="txtPhoneNumber" runat="server" Text='<%# Bind("PhoneNumber") %>' onkeypress="return isNumberKey(event)"></asp:Label>

                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblPhoneNumber" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:BoundField DataField="Designation" HeaderText="Surveyor Designation" ReadOnly="True">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                </asp:BoundField>

                                                <asp:BoundField DataField="DateCreated" ItemStyle-Width="150px" HeaderText="Survey Date" ReadOnly="True">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>

                                                <asp:BoundField DataField="Latitude" ItemStyle-Width="150px" HeaderText="Latitude" ReadOnly="True" DataFormatString="{0:F6}">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Longitude" ItemStyle-Width="150px" HeaderText="Longitude" ReadOnly="True" DataFormatString="{0:F6}">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Altitude" ItemStyle-Width="150px" HeaderText="Altitude" ReadOnly="True" DataFormatString="{0:F1}">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Accuracy" ItemStyle-Width="150px" HeaderText="Accuracy" ReadOnly="True" DataFormatString="{0:F1}">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="StateName" ItemStyle-Width="150px" HeaderText="State" ReadOnly="True">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="DivisionName" ItemStyle-Width="150px" HeaderText="Forest Division" ReadOnly="True">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="RangeName" ItemStyle-Width="150px" HeaderText="Forest Range" ReadOnly="True">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="BlockName" ItemStyle-Width="150px" HeaderText="Forest Block" ReadOnly="True">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>

                                               <%-- <asp:BoundField DataField="VillageId" ItemStyle-Width="150px" HeaderText="Village">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <%--<ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>--%>

                                                <asp:TemplateField HeaderText="Village">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtVillage" runat="server" Text='<%# Bind("VillageId") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbVillage" runat="server" Text='<%# Bind("VillageId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:BoundField DataField="CompartmentName" ItemStyle-Width="150px" HeaderText="Compartment Number" ReadOnly="true">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="PlotName" ItemStyle-Width="150px" HeaderText="Plot Number" ReadOnly="true">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>
                                                <asp:TemplateField HeaderText="Legal Status">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbllegalStatus" runat="server" Text='<%# Eval("LegalStatus")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddllegalStatus" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Land use type">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblLanduse" runat="server" Text='<%# Eval("Landuse")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlLanduse" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField DataField="Rocks" HeaderText="Type of rock">
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Type of rock">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtRocks" runat="server" Text='<%# Bind("Rocks") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblRocks" runat="server" Text='<%# Bind("Rocks") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="Topography of the plot">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblGeneral" runat="server" Text='<%# Eval("General")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlGeneral" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Slope of the plot">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSlope" runat="server" Text='<%# Eval("Slope")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlSlope" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField DataField="Soildepth" HeaderText="Soil Depth (in cm)">
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Soil Depth (in cm)">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtSoilDepth" runat="server" Text='<%# Bind("Soildepth") %>' oninput="NumberCheck(this)"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbSoilDepth" runat="server" Text='<%# Bind("Soildepth") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Soil Texture">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSoiltexture" runat="server" Text='<%# Eval("Soiltexture")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlSoiltexture" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Soil Permeability">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSoilpermeability" runat="server" Text='<%# Eval("Soilpermeability")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlSoilpermeability" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>

                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Soil Erosion">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSoilerosion" runat="server" Text='<%# Eval("Soilerosion")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlSoilerosion" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Floral Species present in Plot">
                                                    <ItemTemplate>
                                                        <%--  <%# TrimTo(Eval("Crop"), 30) %>--%>
                                                        <asp:Label ID="lblCrop" runat="server" Text=' <%# TrimTo(Eval("Crop"),30)%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:ListBox ID="lstCrop" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Specify Others(Floral Species)">
                                                    <ItemTemplate>
                                                        <%--  <%# TrimTo(Eval("Crop"), 30) %>--%>
                                                        <asp:Label ID="lblcropother" runat="server" Text=' <%# TrimTo(Eval("cropother"),30)%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:Label ID="lblcropother" runat="server" Text=' <%# TrimTo(Eval("cropother"),30)%>'></asp:Label>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="Crop" HeaderText="Crop">
                                         
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Regeneration status of the plot">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblRegeneration" runat="server" Text='<%# Eval("Regeneration")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlRegeneration" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Injury/ damage to crop, if any">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblInjury" runat="server" Text=' <%# TrimTo(Eval("Injury"),30)%>'></asp:Label>

                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:ListBox ID="lstInjury" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Grazing">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCc_Grazing" runat="server" Text='<%# Eval("Cc_Grazing")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlCc_Grazing" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Presence of Bamboo in Plot?">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblPresenceOfBamboo" runat="server" Text='<%# Eval("PresenceOfBamboo")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlPresenceOfBamboo" runat="server">

                                                            <asp:ListItem Text="Yes" Value="1,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value="0"></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>



                                                <asp:TemplateField HeaderText="Presence of Bamboo">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBambooDensity" runat="server" Text='<%# Eval("BambooPresence")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlBambooDensity" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Bamboo Quality">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBambooQuality" runat="server" Text='<%# Eval("BambooQuality")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlBambooQuality" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Bamboo Regeneration">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBambooRegeneration" runat="server" Text='<%# Eval("BambooRegeneration")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlBambooRegeneration" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Presence of Grass">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblPresenceOfGrass" runat="server" Text='<%# Eval("PresenceOfGrass")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlPresenceOfGrass" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Presence of Weeds">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblPresenceOfWeeds" runat="server" Text='<%# Eval("PresenceOfWeeds")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlPresenceOfWeeds" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Name Of Weed">
                                                    <ItemTemplate>
                                                        <%--  <%# TrimTo(Eval("Crop"), 30) %>--%>
                                                        <asp:Label ID="lblNameOfWeed" runat="server" Text=' <%# TrimTo(Eval("NameOfWeed"),30)%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <%-- <asp:ListBox ID="lstNameOfWeed" runat="server" SelectionMode="Multiple"></asp:ListBox>--%>
                                                        <asp:DropDownList ID="ddlNameOfWeed" runat="server" CssClass="search-dropdown">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Specify Other(Weed)">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="txtweedother" runat="server" oninput="NumberCheck(this)" onkeydown="return      Search_Gridview(event)" Text='<%# Bind("Weed_other") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblweedother" runat="server" Text='<%# Bind("Weed_other") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="150px" />
                                                </asp:TemplateField>




                                                <asp:TemplateField HeaderText="Plantation Species">
                                                    <ItemTemplate>
                                                        <%--  <%# TrimTo(Eval("Crop"), 30) %>--%>
                                                        <asp:Label ID="lblPlantation_Species" runat="server" Text=' <%# TrimTo(Eval("Plantation_Species"),30)%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:ListBox ID="lstPlantation_Species" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Plantation Specify Others">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="txtPlantationother" runat="server" Text='<%# Bind("Other_Plantation") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblPlantationother" runat="server" Text='<%# Bind("Other_Plantation") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="150px" />
                                                </asp:TemplateField>


                                                <asp:BoundField DataField="Area_of_Plantation" ItemStyle-Width="150px" HeaderText="Area of Plantation">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>

                                                <%-- <asp:BoundField DataField="Year_of_Plantation" ItemStyle-Width="150px" HeaderText="Year of Plantation">
                                           
                                              <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>

                                                <asp:TemplateField HeaderText="Year of Plantation">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtYearofPlantation" runat="server" oninput="NumberCheck(this)" onkeydown="return      Search_Gridview(event)" Text='<%# Bind("Year_of_Plantation") %>'></asp:TextBox>
                                                    </EditItemTemplate>

                                                    <ItemTemplate>
                                                        <asp:Label ID="lbYearofPlantation" runat="server" Text='<%# Bind("Year_of_Plantation") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="150px" />
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="Spacement in meter">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtSpacementinmeter" runat="server" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("Spacement_in_meter") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbSpacementinmeter" runat="server" Text='<%# Bind("Spacement_in_meter") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="150px" />
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="Average Tree Girth">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtAverageTreeGirth" runat="server" oninput="NumberCheck(this)" onkeydown="return      Search_Gridview(event)" Text='<%# Bind("avgtreegirth") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbAverageTreeGirth" runat="server" Text='<%# Bind("avgtreegirth") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="150px" />
                                                </asp:TemplateField>

                                                <%--<asp:BoundField DataField="Spacement_in_meter"  ItemStyle-Width="150px" HeaderText="Spacement in meter">
                                           
                                         <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>


                                                <%-- <asp:BoundField DataField="NameOfWeed" HeaderText="Name Of Weed">
                                       
                                        </asp:BoundField>--%>

                                                <asp:TemplateField HeaderText="Type of Water body">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblWaterBodyType" runat="server" Text='<%# Eval("WaterBodyType")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlWaterBodyType" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="Status of Water body">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblWaterBodyStatus" runat="server" Text='<%# Eval("WaterBodyStatus")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlWaterBodyStatus" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Seasonality of Water body">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblWaterBodySeasonality" runat="server" Text='<%# Eval("WaterBodySeasonality")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlWaterBodySeasonality" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Potability of Water body">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblWaterBodyPotability" runat="server" Text='<%# Eval("WaterBodyPotability")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlWaterBodyPotability" runat="server">
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="TypeOfDegradation" ItemStyle-Width="150px" HeaderText="Type Of Degradation" Visible="false">
                                                    <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                                    <ItemStyle Width="150px"></ItemStyle>
                                                </asp:BoundField>

                                                <asp:TemplateField HeaderText="Charcoal Making">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCharcoalMaking" runat="server" Text='<%# Eval("CharcoalMaking")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlCharcoalMaking" runat="server">

                                                            <asp:ListItem Text="Yes" Value="118,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="DevelopmentProjects" HeaderText="Development Projects">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Development Projects">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDevelopmentProjects" runat="server" Text='<%# Eval("DevelopmentProjects")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlDevelopmentProjects" runat="server">

                                                            <asp:ListItem Text="Yes" Value="119,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="Fire" HeaderText="Fire">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Fire">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblFire" runat="server" Text='<%# Eval("Fire")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlFire" runat="server">

                                                            <asp:ListItem Text="Yes" Value="120,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%--  <asp:BoundField  DataField="FirewoodExtraction" HeaderText="Firewood Extraction">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Firewood Extraction">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblFirewoodExtraction" runat="server" Text='<%# Eval("FirewoodExtraction")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlFirewoodExtraction" runat="server">

                                                            <asp:ListItem Text="Yes" Value="121,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="Grazing" HeaderText="Grazing">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Grazing">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblGrazing" runat="server" Text='<%# Eval("Grazing")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlGrazing" runat="server">

                                                            <asp:ListItem Text="Yes" Value="122,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="IllegalLogging" HeaderText="Illegal Logging">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Illegal Logging">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblIllegalLogging" runat="server" Text='<%# Eval("IllegalLogging")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlIllegalLogging" runat="server">

                                                            <asp:ListItem Text="Yes" Value="123,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%--  <asp:BoundField  DataField="Mining" HeaderText="Mining">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Mining">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblMining" runat="server" Text='<%# Eval("Mining")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlMining" runat="server">

                                                            <asp:ListItem Text="Yes" Value="124,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%--<asp:BoundField  DataField="PathogenicAttack" HeaderText="Pathogenic Attack">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Pathogenic Attack">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblPathogenicAttack" runat="server" Text='<%# Eval("PathogenicAttack")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlPathogenicAttack" runat="server">

                                                            <asp:ListItem Text="Yes" Value="125,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="InvasiveSpecies" HeaderText="Invasive Species">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Invasive Species">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblInvasiveSpecies" runat="server" Text='<%# Eval("InvasiveSpecies")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlInvasiveSpecies" runat="server">

                                                            <asp:ListItem Text="Yes" Value="126,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="Flood" HeaderText="Flood">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Flood">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblFlood" runat="server" Text='<%# Eval("Flood")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlFlood" runat="server">

                                                            <asp:ListItem Text="Yes" Value="127,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%--<asp:BoundField  DataField="Drought" HeaderText="Drought">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Drought">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDrought" runat="server" Text='<%# Eval("Drought")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlDrought" runat="server">

                                                            <asp:ListItem Text="Yes" Value="128,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%--<asp:BoundField  DataField="Landslides" HeaderText="Landslides">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Landslides">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblLandslides" runat="server" Text='<%# Eval("Landslides")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlLandslides" runat="server">

                                                            <asp:ListItem Text="Yes" Value="129,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="Avalanche" HeaderText="Avalanche">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Avalanche">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblAvalanche" runat="server" Text='<%# Eval("Avalanche")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlAvalanche" runat="server">

                                                            <asp:ListItem Text="Yes" Value="130,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="Storm" HeaderText="Storm">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Storm">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblStorm" runat="server" Text='<%# Eval("Storm")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlStorm" runat="server">

                                                            <asp:ListItem Text="Yes" Value="131,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="Cyclone" HeaderText="Cyclone">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Cyclone">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblCyclone" runat="server" Text='<%# Eval("Cyclone")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlCyclone" runat="server">

                                                            <asp:ListItem Text="Yes" Value="132,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%--<asp:BoundField  DataField="Earthquake" HeaderText="Earthquake">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Earthquake">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblEarthquake" runat="server" Text='<%# Eval("Earthquake")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlEarthquake" runat="server">

                                                            <asp:ListItem Text="Yes" Value="133,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%--  <asp:BoundField  DataField="HeavyRainfall" HeaderText="Heavy Rainfall">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Heavy Rainfall">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblHeavyRainfall" runat="server" Text='<%# Eval("HeavyRainfall")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlHeavyRainfall" runat="server">

                                                            <asp:ListItem Text="Yes" Value="134,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="HeavySnowfall" HeaderText="Heavy Snowfall">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Heavy Snowfall">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblHeavySnowfall" runat="server" Text='<%# Eval("HeavySnowfall")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlHeavySnowfall" runat="server">

                                                            <asp:ListItem Text="Yes" Value="135,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="Other" HeaderText="Other">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Other">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblOther" runat="server" Text='<%# Eval("Other")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlOther" runat="server">

                                                            <asp:ListItem Text="Yes" Value="136,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="None" HeaderText="None">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="None">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblNone" runat="server" Text='<%# Eval("None")%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="ddlNone" runat="server">

                                                            <asp:ListItem Text="Yes" Value="137,"></asp:ListItem>
                                                            <asp:ListItem Text="No" Value=""></asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField  DataField="Mammals" HeaderText="Mammals">
                                             <%-- <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Sighting traces of flagship species: Mammals">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblMammals" runat="server" Text='<%# TrimTo(Eval("Mammals"),30)%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:ListBox ID="lstMammals" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>


                                                <asp:TemplateField HeaderText="Specify Others(Mammals)">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="txtMammalsother" runat="server" Text='<%# Bind("Mammalsothers") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbMammalsother" runat="server" Text='<%# Bind("Mammalsothers") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <%--<asp:BoundField DataField="Mammals_comments" HeaderText="Mammals Comments">
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Mammals Comments">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtMammals" runat="server" Text='<%# Bind("Mammals_comments") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbMammals" runat="server" Text='<%# Bind("Mammals_comments") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>





                                                <asp:TemplateField HeaderText="Sighting traces of flagship species: Birds">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBirds" runat="server" Text='<%# TrimTo(Eval("Birds"),30)%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>

                                                        <asp:ListBox ID="lstBirds" runat="server" SelectionMode="Multiple"></asp:ListBox>

                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Specify Others (Birds)">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="txtBirdsCommentsother" runat="server" Text='<%# Bind("Birdothers") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBirdsCommentsother" runat="server" Text='<%# Bind("Birdothers") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <%--<asp:BoundField DataField="Birds_comments" HeaderText="Birds Comments">
                                        </asp:BoundField>--%>

                                                <asp:TemplateField HeaderText="Birds Comments">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtBirdsComments" runat="server" Text='<%# Bind("Birds_comments") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblBirdsComments" runat="server" Text='<%# Bind("Birds_comments") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <%--<asp:BoundField  DataField="Reptiles" HeaderText="Reptiles">
                                              <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>



                                                <asp:TemplateField HeaderText="Sighting traces of flagship species: Reptiles">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblReptiles" runat="server" Text=' <%# TrimTo(Eval("Reptiles"),30)%>'></asp:Label>

                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:ListBox ID="lstReptiles" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:BoundField DataField="Reptiles_comments" ItemStyle-Width="150px" HeaderText="Reptiles Comments">
                                        </asp:BoundField>--%>

                                                <asp:TemplateField HeaderText="Specify Others (Reptiles)">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="txtReptilesCommentsother" runat="server" Text='<%# Bind("reptilesothers") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbReptilesCommentsother" runat="server" Text='<%# Bind("reptilesothers") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Reptiles Comments">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtReptilesComments" runat="server" Text='<%# Bind("Reptiles_comments") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbReptilesComments" runat="server" Text='<%# Bind("Reptiles_comments") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <%-- <asp:BoundField  DataField="Amphibians" HeaderText="Amphibians">
                                             <%-- <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>


                                                <asp:TemplateField HeaderText="Sighting traces of flagship species: Amphibians">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblAmphibians" runat="server" Text='<%# TrimTo(Eval("Amphibians"),30)%>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:ListBox ID="lstAmphibians" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                <%--<asp:BoundField DataField="Amphibians_comments" HeaderText="Amphibians Comments">
                                        </asp:BoundField>--%>


                                                <asp:TemplateField HeaderText="Specify Others (Amphibians)">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="txtAmphibiansCommentsother" runat="server" Text='<%# Bind("amphibiansothers") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbAmphibiansaCommentsother" runat="server" Text='<%# Bind("amphibiansothers") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>



                                                <asp:TemplateField HeaderText="Amphibians Comments">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtAmphibiansComments" runat="server" Text='<%# Bind("Amphibians_comments") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbAmphibiansaComments" runat="server" Text='<%# Bind("Amphibians_comments") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                                <%--  <asp:BoundField  DataField="Plants" HeaderText="Plants">
                                             <%-- <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>
                                                <asp:TemplateField HeaderText="Sighting traces of flagship species: Plants">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblPlants" runat="server" Text='<%# TrimTo(Eval("Plants"),15)%>'>></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:ListBox ID="lstPlants" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                                        <%--<asp:DropDownList ID="ddlPlants" runat="server">
                                                </asp:DropDownList>--%>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Specify Others (Plants)">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="txtplantothers" runat="server" Text='<%# Bind("plantothers") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblplantothers" runat="server" Text='<%# Bind("plantothers") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <%--<asp:BoundField DataField="Plants_comments" HeaderText="Plants Comments">
                                            
                                        </asp:BoundField>--%>

                                                <asp:TemplateField HeaderText="Plants Comments">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="txtPlantsComments" runat="server" Text='<%# Bind("Plants_comments") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbPlantsComments" runat="server" Text='<%# Bind("Plants_comments") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>





                                                <asp:TemplateField HeaderText="Edit" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                                    <ItemTemplate>
                                                        <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="Edit" runat="server" OnClientClick='<%= "scrollToRow(" + Container.DataItemIndex + "); return false;" %>' />
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" Text="Update" CommandName="Update" />
                                                        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger" Text="Cancel" CommandName="cancel" />
                                                    </EditItemTemplate>

                                                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                                    <ItemStyle Width="20%"></ItemStyle>

                                                </asp:TemplateField>



                                                <%--<asp:TemplateField HeaderText="Action" ShowHeader="False">


                                            <ItemTemplate>
                                                <asp:imageButton imageUrl='~/images/bin.png' ID="Button1" ToolTip="Delete" runat="server" CausesValidation="false" CommandName="
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        Delete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" OnClientClick="return confirmDelete1(this)" width="20px" Height="20px"  />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>

                                                <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ImageUrl='~/images/bin.png' ID="Button1" ToolTip="Delete" runat="server"
                                                            CausesValidation="false" CommandName="cmdDelete" CommandArgument="<%# Container.DataItemIndex %>"
                                                            OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>










                                                <%-- <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="cmdDelete1" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Delete"  OnClientClick="return confirmDelete(this)" />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>



                                                <%--   Approval button --%>

                                                <%--   <asp:TemplateField HeaderText="Action">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IsApproved") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("IsApproved") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>



                                                <%--<asp:TemplateField ShowHeader="False" HeaderText="Action">
                                            <ItemTemplate>
                                              <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="cmdToggle" CommandArgument='<%# Container.DataItemIndex %>' Text='<%# Convert.ToBoolean(Eval("IsApproved")) ? "On" : "Off" %>' OnClientClick='<%# "return showSwipeConfirmation(" + Eval("PlotDescId") + ", " + Convert.ToBoolean(Eval("PlotDescId")).ToString().ToLower() + ");" %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>

                                                <%-- <asp:TemplateField HeaderText="RFO Approve" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:Button ID="Button3" runat="server" CausesValidation="false" Text="RFO Not Approved" />
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>





                                                <asp:TemplateField HeaderText="RFO Approval" ShowHeader="False">
                                                    <ItemTemplate>
                                                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" CausesValidation="false" CommandName="cmdApprove" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Approve" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>


                                            </Columns>






                                            <PagerStyle CssClass="custom-pager" />


                                        </asp:GridView>



                                    </div>


                                </ContentTemplate>


                            </asp:UpdatePanel>

                            <ul class="pagination" id="pagingnation" visible="false" runat="server">
                                <asp:Repeater ID="rptPager" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <asp:LinkButton ID="lnkPage" runat="server" Text='<%#Eval("Text") %>' CommandArgument='<%# Eval("Value") %>'
                                                Enabled='<%# Eval("Enabled") %>' OnClick="lnkPage_Click"></asp:LinkButton>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>


                        </div>
                </div>
            </div>
        </div>
        <div>



            <triggers>
                <asp:PostBackTrigger ControlID="btnExport" />
            </triggers>

            <style>
                #recordNotFoundMessage {
                    text-align: center;
                    /* Center the text horizontally */ margin-top: -3px;
                    /* Adjust the margin from the top*/
                }
            </style>
            <script type="text/javascript">                function Search_function(strKey) {                    var strData = strKey.value.toLowerCase().split(" ");                    var tblData = document.getElementById("<%=GVPlotDescription.ClientID %>");                    var rowData;                    var found = false;                    for (var i = 1; i < tblData.rows.length; i++) {                        rowData = tblData.rows[i].innerHTML.toLowerCase();                        var styleDisplay = 'none';                        var allTermsFound = true;                        for (var j = 0; j < strData.length; j++) {                            if (rowData.indexOf(strData[j]) >= 0) {                                styleDisplay = '';                            } else {                                allTermsFound = false;                                break;                            }                        }                        if (allTermsFound) {                            found = true;                        }                        tblData.rows[i].style.display = styleDisplay;                    }                    var messageElement = document.getElementById('recordNotFoundMessage');                    if (!messageElement) {                        messageElement = document.createElement('div');                        messageElement.id = 'recordNotFoundMessage';                        messageElement.innerHTML = 'Record not found.';                        messageElement.style.textAlign = 'center';                        messageElement.style.width = '100vw';                        messageElement.style.marginTop = '50px';                        messageElement.style.color = 'red';                        //messageElement.style.paddingBottom = '18%';                        //messageElement.style.overflowY = 'clip';                        tblData.parentElement.appendChild(messageElement);                    }                    messageElement.style.display = found ? 'none' : 'block';                }                window.onload = function () {                    document.getElementById("<%= txtSearch.ClientID %>").value = "";                };      </script>
            <script type="text/javascript">                function Search_Gridview(event) {                    if (event.keyCode === 13) {                        event.preventDefault(); // Prevent the default action of the Enter key                        return false;                    }                }       </script>
            <script type="text/javascript">                function scrollToRow(rowId) {                    var row = document.getElementById('<%= GVPlotDescription.ClientID %>_ctl' + rowId + '_row'); // Adjust this ID based on your GridView's client ID                    if (row !== null) {                        row.scrollIntoView();                    }                } </script>
            <%--  For Surveyor Name it Should allow only alpha Numeric values --%>
            <script type="text/javascript">                function isAlphaNumeric(event) {                    var charCode = (event.which) ? event.which : event.keyCode;                    if ((charCode >= 48 && charCode <= 57) || // 0-9                        (charCode >= 65 && charCode <= 90) || // A-Z                        (charCode >= 97 && charCode <= 122)) { // a-z                        return true;                    }                    return false;                }        </script>
            <%--to restrict phone number to take 10 digits only--%>
            <script type="text/javascript">                function isNumberKey(evt) {                    var charCode = (evt.which) ? evt.which : event.keyCode;                    if (charCode > 31 && (charCode < 48 || charCode > 57)) {                        return false;                    }                    if (evt.target.value.length >= 10) {                        return false;                    }                    return true;                }  </script>
            <script type="text/javascript">                function initializeMultiselect() {                    $('[id*=lstMammals]').multiselect({                        includeSelectAllOption: true,                        enableFiltering: true                    });                }                function initializeMultiselect1() {                    $('[id*=lstBirds]').multiselect({                        includeSelectAllOption: true,                        enableFiltering: true                    });                }                function initializeMultiselect2() {                    $('[id*=lstReptiles]').multiselect({                        includeSelectAllOption: true,                        enableFiltering: true                    });                }                function initializeMultiselect3() {                    $('[id*=lstAmphibians]').multiselect({                        includeSelectAllOption: true,                        enableFiltering: true                    });                }                function initializeMultiselect4() {                    $('[id*=lstPlants]').multiselect({                        includeSelectAllOption: true,                        enableFiltering: true                    });                }                function initializeMultiselect5() {                    $('[id*=lstCrop]').multiselect({                        includeSelectAllOption: true,                        enableFiltering: true                    });                }                function initializeMultiselect6() {                    $('[id*=lstPlantation_Species]').multiselect({                        includeSelectAllOption: true,                        enableFiltering: true                    });                }                function initializeMultiselect7() {                    $('[id*=lstInjury]').multiselect({                        includeSelectAllOption: true,                        enableFiltering: true                    });                }                function initializeMultiselect8() {                    $('[id*=lstNameOfWeed]').multiselect({                        includeSelectAllOption: true,                        enableFiltering: true                    });                }                // Function to re-initialize the multiselect after partial postback (ASP.NET AJAX)                function pageLoad(sender, args) {                    initializeMultiselect();                    initializeMultiselect1();                    initializeMultiselect2();                    initializeMultiselect3();                    initializeMultiselect4();                    initializeMultiselect5();                    initializeMultiselect6();                    initializeMultiselect7();                    initializeMultiselect8();                }                // Initialize the multiselect on page load                $(document).ready(function () {                    initializeMultiselect();                    initializeMultiselect1();                    initializeMultiselect2();                    initializeMultiselect3();                    initializeMultiselect4();                    initializeMultiselect5();                    initializeMultiselect6();                    initializeMultiselect7();                    initializeMultiselect8();                });    </script>
            <script type="text/javascript">                // Function to initialize select2 for the dropdown                function initializeSelect2() {                    $('.search-dropdown').select2();                }                // Call the function after the UpdatePanel updates                var prm = Sys.WebForms.PageRequestManager.getInstance();                prm.add_endRequest(function () {                    initializeSelect2();                });                // Initial call (for the first load)                $(document).ready(function () {                    initializeSelect2();                });          </script>
            <script>                $(document).ready(function () {                    // Initialize Select2 for the DropDownList with the specified class                    $(".search-dropdown").select2({                        theme: "classic", // You can change the theme as needed                        placeholder: "Search for an option",                        allowClear: true, // Optionally allow clearing the selection                    });                });  </script>
            <script>                window.addEventListener('DOMContentLoaded', adjustCardBodyHeight);                window.addEventListener('resize', adjustCardBodyHeight);                function adjustCardBodyHeight() {                    const customPagerHeight = document.getElementById('customPager').offsetHeight;                    const windowHeight = window.innerHeight;                    const cardBody = document.getElementById('cardBody');                    const scrollbarWidth = window.innerWidth - document.documentElement.clientWidth;                    const maxAvailableHeight = windowHeight - customPagerHeight - scrollbarWidth;                    cardBody.style.maxHeight = `${maxAvailableHeight}px`;                }        </script>
            <script type="text/javascript">                // Function to initialize select2 for the dropdown                function initializeSelect2() {                    $('.search-dropdown').select2();                }                // Call the function after the UpdatePanel updates                var prm = Sys.WebForms.PageRequestManager.getInstance();                prm.add_endRequest(function () {                    initializeSelect2();                });                // Initial call (for the first load)                $(document).ready(function () {                    initializeSelect2();                });          </script>
        </div>
</asp:Content>

