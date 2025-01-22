<%@ Page Title="" Language="C#" MasterPageFile="~/Range/Range.Master" AutoEventWireup="true" CodeBehind="AnnualFuelConsumption.aspx.cs" Inherits="vansystem.Range.AnnualFuelConsumption" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Include jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Bootstrap CSS and JS -->
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


    <style>
        .select2-container-fixed {
            position: relative !important;
            /*z-index: 50;*/
        }

        table {
            width: auto;
            border-collapse: collapse;
            margin: 50px auto;
            margin-left: 1px;
            margin-top: -1.3%;
        }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: 2.20rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            font-weight: bold;
            text-align: center;
            white-space: nowrap;
            z-index: 10;
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


        h3 {
            margin-left: 60px;
        }



        th, td {
            padding: 0.75rem;
        }

        .pag {
            margin-left: 64%;
        }

        @media screen and (max-width: 768px) {
            .pag {
                margin-left: 10px;
            }
        }





        .sweet-alert button.cancel {
            background-color: #dc3545 !important;
        }

        .listboxCSS {
            font-size: 8pt;
            font-family: Arial;
            border: 0;
            overflow-y: auto;
            height: 120px;
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
            width: 50%;
            background-color: #fcfbfb;
            padding: 29px;
            text-align: left;
        }

        .sticky-header {
            background-color: forestgreen !important;
            color: white !important;
            position: sticky;
            top: -1.50rem;
            z-index: 1;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
        }

        .app-sidebar__user-name, .app-sidebar__user-designation {
            white-space: nowrap;
            -o-text-overflow: ellipsis;
            text-overflow: ellipsis;
            margin-bottom: -33px;
            margin-left: 26%;
            padding-left: 38%;
        }


        :root {
            overflow-y: clip;
            overflow-x: clip;
        }
        /*
        .card-body {
            background-color: rgb(252, 252, 252);
            overflow-x:scroll;
            overflow-y:scroll;
            margin-left: 2%; 
            width: 99%;
            max-height: 73vh;
            margin-top: 0.5%;
        }
*/
        .card-body {
            background-color: rgb(252, 252, 252);
            overflow: auto;
            margin-left: 2%;
            margin-bottom: 60px;
            width: 96%;
            max-height: calc(86vh - 100px);
            margin-top: -1%;
        }

        .plot-tree {
            background-color: #fcfbfb;
        }

        @media screen and (max-width: 1917px) {

            .card-body {
                width: 100%;
                max-height: calc(85vh - 100px);
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
                left: 90%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }

        @media screen and (max-width: 1537px) {

            .card-body {
                width: 100%;
                max-height: calc(83vh - 100px);
                margin-right: -4% !important;
                margin-left: 1% !important;
                /* padding-bottom:12%;*/
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
                transform: translateX(-50%);
                z-index: 999;
            }

            .box-content {
                padding-left: 1px !important;
            }
        }

        @media screen and (max-width: 1153px) {

            .card-body {
                width: 100%;
                max-height: calc(73vh - 100px);
                margin-right: -4% !important;
                margin-left: 1% !important;
            }

            .pag {
                margin-left: 53px;
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
                transform: translateX(-50%);
                z-index: 999;
            }
        }

        @media screen and (max-width: 780px) {

            .card-body {
                width: 100%;
                max-height: calc(66vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .pag {
                margin-left: 9px;
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
        }

        @media screen and (max-width: 700px) {
            .pag {
                margin-left: 20%;
            }
        }
    </style>
    <style>
        .custom-pager {
            text-align: center;
            margin-top: 50px;
            position: fixed;
            bottom: -52px;
            left: 92%;
            margin-bottom: 0; /* Set margin-bottom to 0 */
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
    </style>
    <style>
        .dropdown-menu {
            MAX-HEIGHT: 150PX;
            OVERFLOW-Y: AUTO;
        }
    </style>
    <style>
        .select2-container-fixed {
            position: relative !important;
            z-index: 50;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


    <div>
        <div class="container-fluid mt-6">
            <div style="margin-left: 0%; margin-top: 88px;">
                <div class="d-md-flex  justify-content-between align-items-center text-center">
                    <div style="margin-left: 3% !important;">
                        <h3 style="margin-inline: auto; margin-left: 40px !important"><b>Annual Fuel Consumption</b></h3>
                    </div>
                    <div class="row d-sm-flex justify-content-center align-items-center text-center">
                        <div>
                            <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No records found.</asp:Label>
                        </div>
                        <div class="d-flex justify-content-center align-items-center pl-4">
                            Search:                                                            
                            <asp:TextBox ID="txtSearch" runat="server" Font-Size="20px" onkeydown="return Search_Gridview(event); adjustGridViewPosition();" onkeyup="Search_function(this); adjustGridViewPosition();" Style="background-color: #004990; color: white"></asp:TextBox>
                        </div>
                        <div class="pl-4">
                            <asp:Button ID="btnExport" Style="height: 34px" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />
                        </div>
                        <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top: 6px; padding-right: 15px;">
                            Show                           
                            <div class="pl-2 pr-2">
                                <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" Style="background-color: #004990; color: white; width: 70px; border-radius: 3px; height: 30px;" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
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

                <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 3.5rem !important; width: 98%;">


                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>







                            <div class="box-content" onkeydown="return Search_Gridview(event)">

                                <asp:GridView ID="gvAFC" runat="server" AutoGenerateColumns="false" DataKeyNames="Fule_id" OnRowEditing="gvAFC_RowEditing" OnRowUpdating="gvAFC_RowUpdating" OnRowCancelingEdit="gvAFC_RowCancelingEdit" OnPageIndexChanging="gvAFC_PageIndexChanging" GridLines="Horizontal" AllowPaging="true" PageSize="10" ShowHeaderWhenEmpty="true" OnRowCommand="gvAFC_RowCommand" OnRowDataBound="gvAFC_RowDataBound" OnPreRender="gvAFC_PreRender">
                                    <AlternatingRowStyle BackColor="White" />
                                    <RowStyle BackColor="#f5f5f5" />
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                   <Columns>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="200%">
                                            <%-- <HeaderStyle CssClass="sortable-header" />--%>
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Fule_id" HeaderText="Survey ID" ReadOnly="True">
                                            <HeaderStyle HorizontalAlign="Center" CssClass="sortable-header" />
                                            <ItemStyle Width="20%" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Surveyor Name">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyorName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--<EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Name").ToString()) %>' ID="txtSurveyorName" runat="server" Text='<%# Bind("Name") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gender">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Surveyor Phone No">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblPhoneNumber" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("PhoneNumber").ToString()) %>' ID="txtPhoneNumber" runat="server" Text='<%# Bind("PhoneNumber") %>' onkeypress="return isNumberKey(event)" Width="150px" MaxLength="10" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Surveyor Designation">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblDesignation" runat="server" Text='<%# Eval("Designation") %>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Survey Date">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyDate" runat="server" Text='<%# Eval("date_created") %>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>



                                        <asp:TemplateField HeaderText="State">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblState" runat="server" Text='<%# Eval("StateName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Forest Division">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblDivision" runat="server" Text='<%# Eval("DivisionName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Forest Range">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblRange" runat="server" Text='<%# Eval("RangeName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Forest Block">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblBlock" runat="server" Text='<%# Eval("BlockName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText=" Name of Village">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblVillage" runat="server" Text='<%# Eval("Name_of_Village") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Name_of_Village").ToString()) %>' ID="txtVillage" runat="server" Text='<%# Bind("Name_of_Village") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Name of Panchayat">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblPanchayat" runat="server" Text='<%# Eval("Panchayat") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Panchayat").ToString()) %>' ID="txtPanchayat" runat="server" Text='<%# Bind("Panchayat") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="House Number">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblHouseNumber" runat="server" Text='<%# Eval("House_Number") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("House_Number").ToString()) %>' ID="txtHouseNumber" runat="server" Text='<%# Bind("House_Number") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Latitude">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" runat="server" Text='<%# Bind("Latitude", "{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Longitude">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" runat="server" Text='<%# Bind("Longitude", "{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Altitude">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAltitude" runat="server" Text='<%# Bind("Altitude", "{0:F2}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Accuracy">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAccuracy" runat="server" Text='<%# Bind("Accuracy", "{0:F2}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Do You Collect Fuel Wood ?">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelWood" runat="server" Text='<%# Eval("Do_you_collect_fuel_wood") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsb1q1" runat="server" Text='<%# Eval("Fuelwood_kgsb1q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsb1q1").ToString()) %>' ID="txtFuelwood_kgsb1q1" runat="server" Text='<%# Bind("Fuelwood_kgsb1q1") %>' onkeypress="return isNumberKey(event)" onkeydown="return Search_Gridview(event)" ClientIDMode="Static" oninput="checkFuelwoodValue1(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsb1q1" runat="server" Text='<%# Eval("Agri_Waste_kgsb1q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsb1q1").ToString()) %>' ID="txtAgri_Waste_kgsb1q1" runat="server" Text='<%# Bind("Agri_Waste_kgsb1q1") %>' onkeypress="return isNumberKey(event)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsb1q1" runat="server" Text='<%# Eval("Cow_dung_kgsb1q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsb1q1").ToString()) %>' ID="txtCow_dung_kgsb1q1" runat="server" Text='<%# Bind("Cow_dung_kgsb1q1") %>' onkeypress="return isNumberKey(event)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsb1q1" runat="server" Text='<%# Eval("Charcoal_kgsb1q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsb1q1").ToString()) %>' ID="txtCharcoal_kgsb1q1" runat="server" Text='<%# Bind("Charcoal_kgsb1q1") %>' onkeypress="return isNumberKey(event)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsb1q1" runat="server" Text='<%# Eval("Coal_kgsb1q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsb1q1").ToString()) %>' ID="txtCoal_kgsb1q1" runat="server" Text='<%# Bind("Coal_kgsb1q1") %>' onkeypress="return isNumberKey(event)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsb1q1" runat="server" Text='<%# Eval("Gas_LPG_kgsb1q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsb1q1").ToString()) %>' onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsb1q1" runat="server" Text='<%# Bind("Gas_LPG_kgsb1q1") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrb1q1" runat="server" Text='<%# Eval("Kerosene_Ltrb1q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrb1q1").ToString()) %>' onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrb1q1" runat="server" Text='<%# Bind("Kerosene_Ltrb1q1") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhb1q1" runat="server" Text='<%# Eval("Electricity_unit_kWhb1q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhb1q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhb1q1" runat="server" Text='<%# Bind("Electricity_unit_kWhb1q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source code for fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblb1q1Source_of_fuelwood_collected" runat="server" Text='<%# Eval("b1q1Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtb1q1Source_of_fuelwood_collected" runat="server" Text='<%# Bind("b1q1Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsb2q1" runat="server" Text='<%# Eval("Fuelwood_kgsb2q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsb2q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgsb2q1" runat="server" Text='<%# Bind("Fuelwood_kgsb2q1") %>' ClientIDMode="Static" oninput="checkFuelwoodValue2(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsb2q1" runat="server" Text='<%# Eval("Agri_Waste_kgsb2q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsb2q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgsb2q1" runat="server" Text='<%# Bind("Agri_Waste_kgsb2q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsb2q1" runat="server" Text='<%# Eval("Cow_dung_kgsb2q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsb2q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgsb2q1" runat="server" Text='<%# Bind("Cow_dung_kgsb2q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsb2q1" runat="server" Text='<%# Eval("Charcoal_kgsb2q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsb2q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgsb2q1" runat="server" Text='<%# Bind("Charcoal_kgsb2q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsb2q1" runat="server" Text='<%# Eval("Coal_kgsb2q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsb2q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgsb2q1" runat="server" Text='<%# Bind("Coal_kgsb2q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsb2q1" runat="server" Text='<%# Eval("Gas_LPG_kgsb2q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsb2q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsb2q1" runat="server" Text='<%# Bind("Gas_LPG_kgsb2q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrb2q1" runat="server" Text='<%# Eval("Kerosene_Ltrb2q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrb2q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrb2q1" runat="server" Text='<%# Bind("Kerosene_Ltrb2q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhb2q1" runat="server" Text='<%# Eval("Electricity_unit_kWhb2q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhb2q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhb2q1" runat="server" Text='<%# Bind("Electricity_unit_kWhb2q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source Code for Fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblb2q1Source_of_fuelwood_collected" runat="server" Text='<%# Eval("b2q1Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtb2q1Source_of_fuelwood_collected" runat="server" Text='<%# Bind("b2q1Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsb3q1" runat="server" Text='<%# Eval("Fuelwood_kgsb3q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsb3q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgsb3q1" runat="server" Text='<%# Bind("Fuelwood_kgsb3q1") %>' ClientIDMode="Static" oninput="checkFuelwoodValue3(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsb3q1" runat="server" Text='<%# Eval("Agri_Waste_kgsb3q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsb3q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgsb3q1" runat="server" Text='<%# Bind("Agri_Waste_kgsb3q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsb3q1" runat="server" Text='<%# Eval("Cow_dung_kgsb3q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsb3q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgsb3q1" runat="server" Text='<%# Bind("Cow_dung_kgsb3q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsb3q1" runat="server" Text='<%# Eval("Charcoal_kgsb3q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsb3q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgsb3q1" runat="server" Text='<%# Bind("Charcoal_kgsb3q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsb3q1" runat="server" Text='<%# Eval("Coal_kgsb3q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsb3q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgsb3q1" runat="server" Text='<%# Bind("Coal_kgsb3q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsb3q1" runat="server" Text='<%# Eval("Gas_LPG_kgsb3q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsb3q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsb3q1" runat="server" Text='<%# Bind("Gas_LPG_kgsb3q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrb3q1" runat="server" Text='<%# Eval("Kerosene_Ltrb3q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrb3q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrb3q1" runat="server" Text='<%# Bind("Kerosene_Ltrb3q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhb3q1" runat="server" Text='<%# Eval("Electricity_unit_kWhb3q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhb3q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhb3q1" runat="server" Text='<%# Bind("Electricity_unit_kWhb3q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source code for fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblb3q1Source_of_fuelwood_collected" runat="server" Text='<%# Eval("b3q1Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtb3q1Source_of_fuelwood_collected" runat="server" Text='<%# Bind("b3q1Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>



                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsb4q1" runat="server" Text='<%# Eval("Fuelwood_kgsb4q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsb4q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgsb4q1" runat="server" Text='<%# Bind("Fuelwood_kgsb4q1") %>' ClientIDMode="Static" oninput="checkFuelwoodValue4(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsb4q1" runat="server" Text='<%# Eval("Agri_Waste_kgsb4q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsb4q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgsb4q1" runat="server" Text='<%# Bind("Agri_Waste_kgsb4q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsb4q1" runat="server" Text='<%# Eval("Cow_dung_kgsb4q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsb4q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgsb4q1" runat="server" Text='<%# Bind("Cow_dung_kgsb4q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsb4q1" runat="server" Text='<%# Eval("Charcoal_kgsb4q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsb4q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgsb4q1" runat="server" Text='<%# Bind("Charcoal_kgsb4q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsb4q1" runat="server" Text='<%# Eval("Coal_kgsb4q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsb4q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgsb4q1" runat="server" Text='<%# Bind("Coal_kgsb4q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsb4q1" runat="server" Text='<%# Eval("Gas_LPG_kgsb4q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsb4q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsb4q1" runat="server" Text='<%# Bind("Gas_LPG_kgsb4q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrb4q1" runat="server" Text='<%# Eval("Kerosene_Ltrb4q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrb4q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrb4q1" runat="server" Text='<%# Bind("Kerosene_Ltrb4q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhb4q1" runat="server" Text='<%# Eval("Electricity_unit_kWhb4q1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhb4q1").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhb4q1" runat="server" Text='<%# Bind("Electricity_unit_kWhb4q1") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Source Code for Fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblb4q1Source_of_fuelwood_collected" runat="server" Text='<%# Eval("b4q1Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtb4q1Source_of_fuelwood_collected" runat="server" Text='<%# Bind("b4q1Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks (if any)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblQ1Remarks" runat="server" Text='<%# TrimTo(Eval("Q1Remarks"),30) %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("Q1Remarks").ToString()) %>' ID="txtQ1Remarks" runat="server" Text='<%# Bind("Q1Remarks") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>




                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsc1q2" runat="server" Text='<%# Eval("Fuelwood_kgsc1q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsc1q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgsc1q2" runat="server" Text='<%# Bind("Fuelwood_kgsc1q2") %>' ClientIDMode="Static" oninput="checkFuelwoodValue5(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsc1q2" runat="server" Text='<%# Eval("Agri_Waste_kgsc1q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsc1q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgsc1q2" runat="server" Text='<%# Bind("Agri_Waste_kgsc1q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsc1q2" runat="server" Text='<%# Eval("Cow_dung_kgsc1q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsc1q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgsc1q2" runat="server" Text='<%# Bind("Cow_dung_kgsc1q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsc1q2" runat="server" Text='<%# Eval("Charcoal_kgsc1q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsc1q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgsc1q2" runat="server" Text='<%# Bind("Charcoal_kgsc1q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsc1q2" runat="server" Text='<%# Eval("Coal_kgsc1q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsc1q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgsc1q2" runat="server" Text='<%# Bind("Coal_kgsc1q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsc1q2" runat="server" Text='<%# Eval("Gas_LPG_kgsc1q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsc1q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsc1q2" runat="server" Text='<%# Bind("Gas_LPG_kgsc1q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrc1q2" runat="server" Text='<%# Eval("Kerosene_Ltrc1q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrc1q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrc1q2" runat="server" Text='<%# Bind("Kerosene_Ltrc1q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhc1q2" runat="server" Text='<%# Eval("Electricity_unit_kWhc1q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhc1q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhc1q2" runat="server" Text='<%# Bind("Electricity_unit_kWhc1q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source Code for Fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblc1q2Source_of_fuelwood_collected" runat="server" Text='<%# Eval("c1q2Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtc1q2Source_of_fuelwood_collected" runat="server" Text='<%# Bind("c1q2Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsc2q2" runat="server" Text='<%# Eval("Fuelwood_kgsc2q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsc2q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgsc2q2" runat="server" Text='<%# Bind("Fuelwood_kgsc2q2") %>' ClientIDMode="Static" oninput="checkFuelwoodValue6(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsc2q2" runat="server" Text='<%# Eval("Agri_Waste_kgsc2q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsc2q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgsc2q2" runat="server" Text='<%# Bind("Agri_Waste_kgsc2q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsc2q2" runat="server" Text='<%# Eval("Cow_dung_kgsc2q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsc2q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgsc2q2" runat="server" Text='<%# Bind("Cow_dung_kgsc2q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsc2q2" runat="server" Text='<%# Eval("Charcoal_kgsc2q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsc2q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgsc2q2" runat="server" Text='<%# Bind("Charcoal_kgsc2q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsc2q2" runat="server" Text='<%# Eval("Coal_kgsc2q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsc2q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgsc2q2" runat="server" Text='<%# Bind("Coal_kgsc2q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsc2q2" runat="server" Text='<%# Eval("Gas_LPG_kgsc2q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsc2q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsc2q2" runat="server" Text='<%# Bind("Gas_LPG_kgsc2q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrc2q2" runat="server" Text='<%# Eval("Kerosene_Ltrc2q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrc2q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrc2q2" runat="server" Text='<%# Bind("Kerosene_Ltrc2q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhc2q2" runat="server" Text='<%# Eval("Electricity_unit_kWhc2q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhc2q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhc2q2" runat="server" Text='<%# Bind("Electricity_unit_kWhc2q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source code for fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblc2q2Source_of_fuelwood_collected" runat="server" Text='<%# Eval("c2q2Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtc2q2Source_of_fuelwood_collected" runat="server" Text='<%# Bind("c3q2Source_of_fuelwood_collected") %>' ClientIDMode="Static" Enabled="false"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsc3q2" runat="server" Text='<%# Eval("Fuelwood_kgsc3q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsc3q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgsc3q2" runat="server" Text='<%# Bind("Fuelwood_kgsc3q2") %>' ClientIDMode="Static" oninput="checkFuelwoodValue7(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsc3q2" runat="server" Text='<%# Eval("Agri_Waste_kgsc3q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsc3q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgsc3q2" runat="server" Text='<%# Bind("Agri_Waste_kgsc3q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsc3q2" runat="server" Text='<%# Eval("Cow_dung_kgsc3q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsc3q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgsc3q2" runat="server" Text='<%# Bind("Cow_dung_kgsc3q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsc3q2" runat="server" Text='<%# Eval("Charcoal_kgsc3q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsc3q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgsc3q2" runat="server" Text='<%# Bind("Charcoal_kgsc3q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsc3q2" runat="server" Text='<%# Eval("Coal_kgsc3q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsc3q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgsc3q2" runat="server" Text='<%# Bind("Coal_kgsc3q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsc3q2" runat="server" Text='<%# Eval("Gas_LPG_kgsc3q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsc3q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsc3q2" runat="server" Text='<%# Bind("Gas_LPG_kgsc3q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrc3q2" runat="server" Text='<%# Eval("Kerosene_Ltrc3q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrc3q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrc3q2" runat="server" Text='<%# Bind("Kerosene_Ltrc3q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhc3q2" runat="server" Text='<%# Eval("Electricity_unit_kWhc3q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhc3q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhc3q2" runat="server" Text='<%# Bind("Electricity_unit_kWhc3q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source Code for Fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblc3q2Source_of_fuelwood_collected" runat="server" Text='<%# Eval("c3q2Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtc3q2Source_of_fuelwood_collected" runat="server" Text='<%# Bind("b3q1Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsc4q2" runat="server" Text='<%# Eval("Fuelwood_kgsc4q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsc4q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgsc4q2" runat="server" Text='<%# Bind("Fuelwood_kgsc4q2") %>' ClientIDMode="Static" oninput="checkFuelwoodValue8(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsc4q2" runat="server" Text='<%# Eval("Agri_Waste_kgsc4q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsc4q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgsc4q2" runat="server" Text='<%# Bind("Agri_Waste_kgsc4q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsc4q2" runat="server" Text='<%# Eval("Cow_dung_kgsc4q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsc4q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgsc4q2" runat="server" Text='<%# Bind("Cow_dung_kgsc4q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsc4q2" runat="server" Text='<%# Eval("Charcoal_kgsc4q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsc4q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgsc4q2" runat="server" Text='<%# Bind("Charcoal_kgsc4q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsc4q2" runat="server" Text='<%# Eval("Coal_kgsc4q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsc4q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgsc4q2" runat="server" Text='<%# Bind("Coal_kgsc4q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsc4q2" runat="server" Text='<%# Eval("Gas_LPG_kgsc4q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsc4q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsc4q2" runat="server" Text='<%# Bind("Gas_LPG_kgsc4q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrc4q2" runat="server" Text='<%# Eval("Kerosene_Ltrc4q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrc4q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrc4q2" runat="server" Text='<%# Bind("Kerosene_Ltrc4q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhc4q2" runat="server" Text='<%# Eval("Electricity_unit_kWhc4q2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhc4q2").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhc4q2" runat="server" Text='<%# Bind("Electricity_unit_kWhc4q2") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Source code for fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblc4q2Source_of_fuelwood_collected" runat="server" Text='<%# Eval("c4q2Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtc4q2Source_of_fuelwood_collected" runat="server" Text='<%# Bind("c4q2Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks (if any)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblQ2Remarks" runat="server" Text='<%# TrimTo(Eval("Q2Remarks"),30) %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("Q2Remarks").ToString()) %>' ID="txtQ2Remarks" runat="server" Text='<%# Bind("Q2Remarks") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>



                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsd1q3" runat="server" Text='<%# Eval("Fuelwood_kgsd1q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsd1q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgsd1q3" runat="server" Text='<%# Bind("Fuelwood_kgsd1q3") %>' ClientIDMode="Static" oninput="checkFuelwoodValue9(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsd1q3" runat="server" Text='<%# Eval("Agri_Waste_kgsd1q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsd1q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgsd1q3" runat="server" Text='<%# Bind("Agri_Waste_kgsd1q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsd1q3" runat="server" Text='<%# Eval("Cow_dung_kgsd1q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsd1q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgsd1q3" runat="server" Text='<%# Bind("Cow_dung_kgsd1q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsd1q3" runat="server" Text='<%# Eval("Charcoal_kgsd1q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsd1q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgsd1q3" runat="server" Text='<%# Bind("Charcoal_kgsd1q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsd1q3" runat="server" Text='<%# Eval("Coal_kgsd1q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsd1q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgsd1q3" runat="server" Text='<%# Bind("Coal_kgsd1q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsd1q3" runat="server" Text='<%# Eval("Gas_LPG_kgsd1q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsd1q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsd1q3" runat="server" Text='<%# Bind("Gas_LPG_kgsd1q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrd1q3" runat="server" Text='<%# Eval("Kerosene_Ltrd1q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrd1q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrd1q3" runat="server" Text='<%# Bind("Kerosene_Ltrd1q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhd1q3" runat="server" Text='<%# Eval("Electricity_unit_kWhd1q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhd1q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhd1q3" runat="server" Text='<%# Bind("Electricity_unit_kWhd1q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source code for fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lbld1q3Source_of_fuelwood_collected" runat="server" Text='<%# Eval("d1q3Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtd1q3Source_of_fuelwood_collected" runat="server" Text='<%# Bind("d1q3Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsd2q3" runat="server" Text='<%# Eval("Fuelwood_kgsd2q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsd2q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgsd2q3" runat="server" Text='<%# Bind("Fuelwood_kgsd2q3") %>' ClientIDMode="Static" oninput="checkFuelwoodValue10(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsd2q3" runat="server" Text='<%# Eval("Agri_Waste_kgsd2q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsd2q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgsd2q3" runat="server" Text='<%# Bind("Agri_Waste_kgsd2q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsd2q3" runat="server" Text='<%# Eval("Cow_dung_kgsd2q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsd2q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgsd2q3" runat="server" Text='<%# Bind("Cow_dung_kgsd2q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsd2q3" runat="server" Text='<%# Eval("Charcoal_kgsd2q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsd2q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgsd2q3" runat="server" Text='<%# Bind("Charcoal_kgsd2q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsd2q3" runat="server" Text='<%# Eval("Coal_kgsd2q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsd2q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgsd2q3" runat="server" Text='<%# Bind("Coal_kgsd2q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsd2q3" runat="server" Text='<%# Eval("Gas_LPG_kgsd2q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsd2q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsd2q3" runat="server" Text='<%# Bind("Gas_LPG_kgsd2q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrd2q3" runat="server" Text='<%# Eval("Kerosene_Ltrd2q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrd2q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrd2q3" runat="server" Text='<%# Bind("Kerosene_Ltrd2q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhd2q3" runat="server" Text='<%# Eval("Electricity_unit_kWhd2q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhd2q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhd2q3" runat="server" Text='<%# Bind("Electricity_unit_kWhd2q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source Code for Fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lbld2q3Source_of_fuelwood_collected" runat="server" Text='<%# Eval("d2q3Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtd2q3Source_of_fuelwood_collected" runat="server" Text='<%# Bind("d3q3Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsd3q3" runat="server" Text='<%# Eval("Fuelwood_kgsd3q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsd3q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgsd3q3" runat="server" Text='<%# Bind("Fuelwood_kgsd3q3") %>' ClientIDMode="Static" oninput="checkFuelwoodValue11(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsd3q3" runat="server" Text='<%# Eval("Agri_Waste_kgsd3q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsd3q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgsd3q3" runat="server" Text='<%# Bind("Agri_Waste_kgsd3q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsd3q3" runat="server" Text='<%# Eval("Cow_dung_kgsd3q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsd3q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgsd3q3" runat="server" Text='<%# Bind("Cow_dung_kgsd3q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsd3q3" runat="server" Text='<%# Eval("Charcoal_kgsd3q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsd3q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgsd3q3" runat="server" Text='<%# Bind("Charcoal_kgsd3q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsd3q3" runat="server" Text='<%# Eval("Coal_kgsd3q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsd3q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgsd3q3" runat="server" Text='<%# Bind("Coal_kgsd3q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsd3q3" runat="server" Text='<%# Eval("Gas_LPG_kgsd3q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsd3q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsd3q3" runat="server" Text='<%# Bind("Gas_LPG_kgsd3q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrd3q3" runat="server" Text='<%# Eval("Kerosene_Ltrd3q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrd3q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrd3q3" runat="server" Text='<%# Bind("Kerosene_Ltrd3q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhd3q3" runat="server" Text='<%# Eval("Electricity_unit_kWhd3q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhd3q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhd3q3" runat="server" Text='<%# Bind("Electricity_unit_kWhd3q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source Code for Fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lbld3q3Source_of_fuelwood_collected" runat="server" Text='<%# Eval("d3q3Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtd3q3Source_of_fuelwood_collected" runat="server" Text='<%# Bind("d3q3Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgsd4q3" runat="server" Text='<%# Eval("Fuelwood_kgsd4q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgsd4q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgsd4q3" runat="server" Text='<%# Bind("Fuelwood_kgsd4q3") %>' ClientIDMode="Static" oninput="checkFuelwoodValue12(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgsd4q3" runat="server" Text='<%# Eval("Agri_Waste_kgsd4q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgsd4q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgsd4q3" runat="server" Text='<%# Bind("Agri_Waste_kgsd4q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgsd4q3" runat="server" Text='<%# Eval("Cow_dung_kgsd4q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgsd4q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgsd4q3" runat="server" Text='<%# Bind("Cow_dung_kgsd4q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgsd4q3" runat="server" Text='<%# Eval("Charcoal_kgsd4q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgsd4q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgsd4q3" runat="server" Text='<%# Bind("Charcoal_kgsd4q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgsd4q3" runat="server" Text='<%# Eval("Coal_kgsd4q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgsd4q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgsd4q3" runat="server" Text='<%# Bind("Coal_kgsd4q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgsd4q3" runat="server" Text='<%# Eval("Gas_LPG_kgsd4q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgsd4q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgsd4q3" runat="server" Text='<%# Bind("Gas_LPG_kgsd4q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltrd4q3" runat="server" Text='<%# Eval("Kerosene_Ltrd4q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltrd4q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltrd4q3" runat="server" Text='<%# Bind("Kerosene_Ltrd4q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhd4q3" runat="server" Text='<%# Eval("Electricity_unit_kWhd4q3") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhd4q3").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhd4q3" runat="server" Text='<%# Bind("Electricity_unit_kWhd4q3") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Source Code for Fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lbld4q3Source_of_fuelwood_collected" runat="server" Text='<%# Eval("d4q3Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtd4q3Source_of_fuelwood_collected" runat="server" Text='<%# Bind("d4q3Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks (if any)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblQ3Remarks" runat="server" Text='<%# TrimTo(Eval("Q3Remarks"),30) %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("Q3Remarks").ToString()) %>' ID="txtQ3Remarks" runat="server" Text='<%# Bind("Q3Remarks") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>



                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgse1q4" runat="server" Text='<%# Eval("Fuelwood_kgse1q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgse1q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgse1q4" runat="server" Text='<%# Bind("Fuelwood_kgse1q4") %>' ClientIDMode="Static" oninput="checkFuelwoodValue13(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgse1q4" runat="server" Text='<%# Eval("Agri_Waste_kgse1q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgse1q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgse1q4" runat="server" Text='<%# Bind("Agri_Waste_kgse1q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgse1q4" runat="server" Text='<%# Eval("Cow_dung_kgse1q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgse1q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgse1q4" runat="server" Text='<%# Bind("Cow_dung_kgse1q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgse1q4" runat="server" Text='<%# Eval("Charcoal_kgse1q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgse1q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgse1q4" runat="server" Text='<%# Bind("Charcoal_kgse1q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgse1q4" runat="server" Text='<%# Eval("Coal_kgse1q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgse1q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgse1q4" runat="server" Text='<%# Bind("Coal_kgse1q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgse1q4" runat="server" Text='<%# Eval("Gas_LPG_kgse1q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgse1q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgse1q4" runat="server" Text='<%# Bind("Gas_LPG_kgse1q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltre1q4" runat="server" Text='<%# Eval("Kerosene_Ltre1q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltre1q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltre1q4" runat="server" Text='<%# Bind("Kerosene_Ltre1q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhe1q4" runat="server" Text='<%# Eval("Electricity_unit_kWhe1q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhe1q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhe1q4" runat="server" Text='<%# Bind("Electricity_unit_kWhe1q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source Code for Fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lble1q4Source_of_fuelwood_collected" runat="server" Text='<%# Eval("e1q4Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txte1q4Source_of_fuelwood_collected" runat="server" Text='<%# Bind("e1q4Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgse2q4" runat="server" Text='<%# Eval("Fuelwood_kgse2q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgse2q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgse2q4" runat="server" Text='<%# Bind("Fuelwood_kgse2q4") %>' ClientIDMode="Static" oninput="checkFuelwoodValue14(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgse2q4" runat="server" Text='<%# Eval("Agri_Waste_kgse2q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgse2q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgse2q4" runat="server" Text='<%# Bind("Agri_Waste_kgse2q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgse2q4" runat="server" Text='<%# Eval("Cow_dung_kgse2q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgse2q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgse2q4" runat="server" Text='<%# Bind("Cow_dung_kgse2q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgse2q4" runat="server" Text='<%# Eval("Charcoal_kgse2q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgse2q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgse2q4" runat="server" Text='<%# Bind("Charcoal_kgse2q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgse2q4" runat="server" Text='<%# Eval("Coal_kgse2q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgse2q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgse2q4" runat="server" Text='<%# Bind("Coal_kgse2q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgse2q4" runat="server" Text='<%# Eval("Gas_LPG_kgse2q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgse2q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgse2q4" runat="server" Text='<%# Bind("Gas_LPG_kgse2q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltre2q4" runat="server" Text='<%# Eval("Kerosene_Ltre2q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltre2q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltre2q4" runat="server" Text='<%# Bind("Kerosene_Ltre2q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhe2q4" runat="server" Text='<%# Eval("Electricity_unit_kWhe2q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhe2q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhe2q4" runat="server" Text='<%# Bind("Electricity_unit_kWhe2q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source Code for Fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lble2q4Source_of_fuelwood_collected" runat="server" Text='<%# Eval("e2q4Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txte2q4Source_of_fuelwood_collected" runat="server" Text='<%# Bind("e2q4Source_of_fuelwood_collected") %>' ClientIDMode="Static" Enabled="false"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgse3q4" runat="server" Text='<%# Eval("Fuelwood_kgse3q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgse3q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgse3q4" runat="server" Text='<%# Bind("Fuelwood_kgse3q4") %>' ClientIDMode="Static" oninput="checkFuelwoodValue15(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgse3q4" runat="server" Text='<%# Eval("Agri_Waste_kgse3q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgse3q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgse3q4" runat="server" Text='<%# Bind("Agri_Waste_kgse3q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgse3q4" runat="server" Text='<%# Eval("Cow_dung_kgse3q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgse3q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgse3q4" runat="server" Text='<%# Bind("Cow_dung_kgse3q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgse3q4" runat="server" Text='<%# Eval("Charcoal_kgse3q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgse3q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgse3q4" runat="server" Text='<%# Bind("Charcoal_kgse3q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgse3q4" runat="server" Text='<%# Eval("Coal_kgse3q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgse3q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgse3q4" runat="server" Text='<%# Bind("Coal_kgse3q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgse3q4" runat="server" Text='<%# Eval("Gas_LPG_kgse3q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgse3q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgse3q4" runat="server" Text='<%# Bind("Gas_LPG_kgse3q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltre3q4" runat="server" Text='<%# Eval("Kerosene_Ltre3q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltre3q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltre3q4" runat="server" Text='<%# Bind("Kerosene_Ltre3q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhe3q4" runat="server" Text='<%# Eval("Electricity_unit_kWhe3q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhe3q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhe3q4" runat="server" Text='<%# Bind("Electricity_unit_kWhe3q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Source Code for Fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lble3q4Source_of_fuelwood_collected" runat="server" Text='<%# Eval("e3q4Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txte3q4Source_of_fuelwood_collected" runat="server" Text='<%# Bind("e3q4Source_of_fuelwood_collected") %>' ClientIDMode="Static" Enabled="false"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Fuelwood (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblFuelwood_kgse4q4" runat="server" Text='<%# Eval("Fuelwood_kgse4q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Fuelwood_kgse4q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtFuelwood_kgse4q4" runat="server" Text='<%# Bind("Fuelwood_kgse4q4") %>' ClientIDMode="Static" oninput="checkFuelwoodValue16(this);"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agri Waste (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgri_Waste_kgse4q4" runat="server" Text='<%# Eval("Agri_Waste_kgse4q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Agri_Waste_kgse4q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtAgri_Waste_kgse4q4" runat="server" Text='<%# Bind("Agri_Waste_kgse4q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cow Dung (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCow_dung_kgse4q4" runat="server" Text='<%# Eval("Cow_dung_kgse4q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Cow_dung_kgse4q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCow_dung_kgse4q4" runat="server" Text='<%# Bind("Cow_dung_kgse4q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Charcoal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoal_kgse4q4" runat="server" Text='<%# Eval("Charcoal_kgse4q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Charcoal_kgse4q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCharcoal_kgse4q4" runat="server" Text='<%# Bind("Charcoal_kgse4q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Coal (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCoal_kgse4q4" runat="server" Text='<%# Eval("Coal_kgse4q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Coal_kgse4q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtCoal_kgse4q4" runat="server" Text='<%# Bind("Coal_kgse4q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gas/LPG (Kgs.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGas_LPG_kgse4q4" runat="server" Text='<%# Eval("Gas_LPG_kgse4q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Gas_LPG_kgse4q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtGas_LPG_kgse4q4" runat="server" Text='<%# Bind("Gas_LPG_kgse4q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Kerosene (Ltr.)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblKerosene_Ltre4q4" runat="server" Text='<%# Eval("Kerosene_Ltre4q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Kerosene_Ltre4q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtKerosene_Ltre4q4" runat="server" Text='<%# Bind("Kerosene_Ltre4q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Electricity (KWh)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblElectricity_unit_kWhe4q4" runat="server" Text='<%# Eval("Electricity_unit_kWhe4q4") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Electricity_unit_kWhe4q4").ToString()) %>' onkeydown="return Search_Gridview(event)" onkeypress="return isNumberKey(event)" ID="txtElectricity_unit_kWhe4q4" runat="server" Text='<%# Bind("Electricity_unit_kWhe4q4") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Source Code for Fuelwood">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lble4q4Source_of_fuelwood_collected" runat="server" Text='<%# Eval("e4q4Source_of_fuelwood_collected") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txte4q4Source_of_fuelwood_collected" runat="server" Text='<%# Bind("e4q4Source_of_fuelwood_collected") %>' Enabled="false" ClientIDMode="Static"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks (if any)">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblQ4Remarks" runat="server" Text='<%# TrimTo(Eval("Q4Remarks"),30) %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("Q4Remarks").ToString()) %>' ID="txtQ4Remarks" runat="server" Text='<%# Bind("Q4Remarks") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="edit" runat="server" OnClientClick='<%= "scrollToRow(" + Container.DataItemIndex + "); return false;" %>' />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" Text="Update" CommandName="Update" />
                                                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger" Text="Cancel" CommandName="cancel" />
                                            </EditItemTemplate>

                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl='~/images/bin.png' ID="Button1" ToolTip="Delete" runat="server" CausesValidation="false" CommandName="cmdDelete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                       <asp:TemplateField HeaderText="RFO Approval" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button class="btn-approved" ID="Button2" runat="server" CssClass="btn btn-primary" CausesValidation="false" CommandName="cmdApprove" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Approve" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                    </Columns>
                                    <PagerStyle CssClass="custom-pager" />
                                </asp:GridView>

                            </div>
                        </ContentTemplate>


                    </asp:UpdatePanel>
                    <ul class="pagination" id="pagingnation" visible="false" runat="server" style="margin-top: 6px; margin-left: 9px; color: #5cb85c">

                        <asp:Repeater ID="rptPager" runat="server">
                            <ItemTemplate>
                                <li>
                                    <asp:LinkButton ID="lnkPage" runat="server" Text='<%#Eval("Text") %>' CommandArgument='<%# Eval("Value") %>'
                                        Enabled='<%# Eval("Enabled") %>' OnClick="lnkPage_Click">
                                    </asp:LinkButton>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>

            </div>
        </div>
    </div>

    <triggers>
        <asp:PostBackTrigger ControlID="btnExport" />

    </triggers>


    <script type="text/javascript">
        function Search_Gridview(event) {
            if (event.keyCode === 13) {
                // Prevent the default behavior of the Enter key (form submission)
                event.preventDefault();
                // Perform your search logic here
                adjustGridViewPosition();
                // Additional search logic...
                return false;
            }
            return true;
        }
    </script>




    <script>
        window.addEventListener('DOMContentLoaded', adjustCardBodyHeight);
        window.addEventListener('resize', adjustCardBodyHeight);

        function adjustCardBodyHeight() {
            const customPagerHeight = document.getElementById('customPager').offsetHeight;
            const windowHeight = window.innerHeight;
            const cardBody = document.getElementById('cardBody');
            const scrollbarWidth = window.innerWidth - document.documentElement.clientWidth;
            const maxAvailableHeight = windowHeight - customPagerHeight - scrollbarWidth;
            cardBody.style.maxHeight = `${maxAvailableHeight}px`;
        }
    </script>

    <script type="text/javascript">        function Search_function(strKey) {            var strData = strKey.value.toLowerCase().split(" ");            var tblData = document.getElementById("<%=gvAFC.ClientID %>");            var rowData;            var found = false;            for (var i = 2; i < tblData.rows.length; i++) {                rowData = tblData.rows[i].innerHTML;                var styleDisplay = 'none';                for (var j = 0; j < strData.length; j++) {                    if (rowData.toLowerCase().indexOf(strData[j]) >= 0) {                        styleDisplay = '';                        found = true;                    } else {                        styleDisplay = 'none';                        break;                    }                }                tblData.rows[i].style.display = styleDisplay;            }            var messageElement = document.getElementById('recordNotFoundMessage');            if (!messageElement) {                messageElement = document.createElement('div');                messageElement.id = 'recordNotFoundMessage';                messageElement.innerHTML = 'Record not found.';                messageElement.style.textAlign = 'center';                messageElement.style.width = '100vw';                messageElement.style.marginTop = '50px';                messageElement.style.color = 'red';                //messageElement.style.paddingBottom = '18%';                //messageElement.style.overflowY = 'clip';                tblData.parentElement.appendChild(messageElement);            }            messageElement.style.display = found ? 'none' : 'block';        }        window.onload = function () {            document.getElementById("<%= txtSearch.ClientID %>").value = "";        };
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
        function scrollToRow(rowId) {            var row = document.getElementById('<%= gvAFC.ClientID %>_ctl' + rowId + '_row'); // Adjust this ID based on your GridView's client ID            if (row !== null) {                row.scrollIntoView();            }        } </script>
    <script type="text/javascript">
        // Function to initialize select2 for the dropdown
        function initializeSelect2() {
            $('.search-dropdown').select2();
        }

        // Call the function after the UpdatePanel updates
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_endRequest(function () {
            initializeSelect2();
        });

        // Initial call (for the first load)
        $(document).ready(function () {
            initializeSelect2();
        });
    </script>
    <script>        var object = { status: false, ele: null };        function confirmDelete1(ev) {            if (object.status) {                object.status = false; // Reset status for next confirmation                return true;            }            swal({                title: "Are you sure you want to delete this entry?",                text: "This entry cannot be recovered and will be deleted permanently.",                type: "warning",                showCancelButton: true,                confirmButtonClass: "btn-danger",                confirmButtonText: "Yes, delete it!",                cancelButtonText: "No, cancel!",                closeOnConfirm: true,            },                function () {                    object.status = true;                    object.ele = ev;                    object.ele.click();                    object.status = false; // Reset status after confirmation is complete                });            return false;        }    </script>
    <script type="text/javascript">
        function checkFuelwoodValue1(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb1q1Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue2(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb2q1Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue3(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb3q1Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue4(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb4q1Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue5(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb1q2Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue6(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb2q2Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue7(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb3q2Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue8(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb4q2Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue9(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb1q3Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue10(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb2q3Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue11(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb3q3Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue12(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb4q3Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue13(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb1q4Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue14(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb2q4Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue15(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb3q4Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

        function checkFuelwoodValue16(input) {
            var fuelwoodValue = input.value;
            var sourceTextbox = document.getElementById('txtb4q4Source_of_fuelwood_collected');

            // Check if fuelwoodValue is empty or 0
            if (fuelwoodValue === "" || parseFloat(fuelwoodValue) === 0) {
                sourceTextbox.value = ''; // Clear the value of source textbox
            }
        }

    </script>
</asp:Content>
