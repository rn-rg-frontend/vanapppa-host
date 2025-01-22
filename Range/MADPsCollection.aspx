<%@ Page Title="" Language="C#" MasterPageFile="~/Range/Range.Master" AutoEventWireup="true" CodeBehind="MADPsCollection.aspx.cs" Inherits="vansystem.Range.MADPsCollection" EnableEventValidation="false" %>

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
            top: 2rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            font-weight: bold;
            text-align: center;
            white-space:nowrap;
            z-index: 10;
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
            top: -1.5rem;
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
            margin-left: 1.7%;
            margin-bottom: 60px;
            width: 99% !important;
            /*max-height: calc(81vh - 100px);
            min-height: calc(81vh - 100px);*/
            max-height: calc(86vh - 100px);
            min-height:65vh;
            margin-top: -1%;
        }

        .plot-tree {
            background-color: #fcfbfb;
        }

        @media screen and (max-width: 1917px) {

            .card-body {
                width: 100%;
                max-height: calc(84vh - 100px);
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
                margin-left: 0.7% !important;
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
                padding-left: 2px !important;
            }

            /*th {
                background: #51c551 !important;
                color: white !important;
                position: sticky !important;
                top: 3vh;
                box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            }*/
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
            left: 90%;
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

        .btn:not([disabled]):not(.disabled):not(.btn-link):hover, .btn:not([disabled]):not(.disabled):not(.btn-link):focus {
            text-decoration: initial;
            -webkit-transform: translate3d(0, -1px, 0);
            transform: initial;
            -webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.4);
            box-shadow: initial;
        }

        .btn.disabled, .btn[disabled], fieldset[disabled] .btn {
            cursor: not-allowed;
            -webkit-box-shadow: none;
            box-shadow: none;
            opacity: 1.65;
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
                        <h3 style="margin-inline: auto; margin-left: 40px !important"><b>NTFP (including MADPs) Collection</b></h3>
                    </div>
                    <div class="row d-md-flex justify-content-center align-items-end text-center">
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

                <%-- <marquee>
                    <div id="recordNotFoundMessage" style="display: none; color: red;">No Records Found.</div>
                </marquee>--%>
                <hr />

               <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 3.5rem !important; width: 98%; ">

                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>





                            <div class="box-content" onkeydown="return Search_Gridview(event)">

                                <asp:GridView ID="gvMADP" AutoGenerateColumns="False" runat="server" DataKeyNames="id" OnRowEditing="gvMADP_RowEditing" OnRowUpdating="gvMADP_RowUpdating" OnRowCancelingEdit="gvMADP_RowCancelingEdit" OnPageIndexChanging="gvMADP_PageIndexChanging" AllowPaging="true" PageSize="10" ShowHeaderWhenEmpty="true" OnRowCommand="gvMADP_RowCommand" OnRowDataBound="gvMADP_RowDataBound" OnPreRender="gvMADP_PreRender">
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
                                        <asp:TemplateField HeaderText="Survey ID">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surveyor Name">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblName" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--<EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtName" runat="server" Text='<%# Bind("name") %>' Enabled='<%# !string.IsNullOrEmpty(Eval("name").ToString()) %>'></asp:TextBox>
                                            </EditItemTemplate>--%>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Gender">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGender" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surveyor Phone No">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblPhoneNumber" runat="server" Text='<%# Bind("phonenumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtPhoneNumber" runat="server" Text='<%# Bind("phonenumber") %>' MaxLength="10" onkeypress="return isNumberKey(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("phonenumber").ToString()) %>'></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <ItemStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surveyor Designation">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblDesignation" runat="server" Text='<%# Bind("designation") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Survey Date">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblDateCreated" runat="server" Text='<%# Bind("date_created") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="State">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblState" runat="server" Text='<%# Bind("StateName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Forest Division">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblDivision" runat="server" Text='<%# Bind("DivisionName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Forest Range">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblRange" runat="server" Text='<%# Bind("RangeName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Forest Block">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblBlock" runat="server" Text='<%# Bind("BlockName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name of Village">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblVillage" runat="server" Text='<%# Bind("name_of_village") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtVillage" runat="server" Text='<%# Bind("name_of_village") %>' Enabled='<%# !string.IsNullOrEmpty(Eval("name_of_village").ToString()) %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name of Panchayat">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblPanchayat" runat="server" Text='<%# Bind("Panchayat") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtPanchayat" runat="server" Text='<%# Bind("Panchayat") %>' Enabled='<%# !string.IsNullOrEmpty(Eval("Panchayat").ToString()) %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="House Number">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblHouseNumber" runat="server" Text='<%# Bind("house_no") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtHouseNumber" runat="server" Text='<%# Bind("house_no") %>' Enabled='<%# !string.IsNullOrEmpty(Eval("house_no").ToString()) %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Latitude">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" runat="server" Text='<%# Eval("latitude", "{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Longitude">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" runat="server" Text='<%# Eval("longitude", "{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Altitude">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAltitude" runat="server" Text='<%# Eval("altitude", "{0:F2}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Accuracy">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAccuracy" runat="server" Text='<%# Eval("accuracy", "{0:F2}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Do you collect NTFP from forest?">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblCollectNTFP" runat="server" Text='<%# Bind("do_you_collect_ntfp_from_forest") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--  <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtCollectNTFP" runat="server" Text='<%# Bind("do_you_collect_ntfp_from_forest") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Species Name">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblSpecies" runat="server" Text='<%# Bind("species_name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--  <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtSpecies" runat="server" Text='<%# Bind("species_name") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="NTFP Part Collected">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblNTFPPart" runat="server" Text='<%# TrimTo(Eval("ntfp_part_collected"),30) %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--<EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtNTFPPart" runat="server" Text='<%# Bind("ntfp_part_collected") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mode of Collection">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblModeOfCollection" runat="server" Text='<%# Bind("madp1_mode_of_collection") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--   <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtModeOfCollection" runat="server" Text='<%# Bind("madp1_mode_of_collection") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Estimated Collection (in Kgs)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblEstimatedCollection" runat="server" Text='<%# Bind("madp1_estimated_collection_kgs") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtEstimatedCollection" runat="server" Text='<%# Bind("madp1_estimated_collection_kgs") %>' onkeypress="return isNumberKey(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("madp1_estimated_collection_kgs").ToString()) %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Utilized for Personal Use (%)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblUtilizedForPersonalUse" runat="server" Text='<%# Bind("madp1_utilized_for_personal_use") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtUtilizedForPersonalUse" runat="server" Text='<%# Bind("madp1_utilized_for_personal_use") %>' Enabled="false"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="For Sale (%)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblForSale" runat="server" Text='<%# Bind("madp1_for_sale") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtForSale" runat="server" Text='<%# Bind("madp1_for_sale") %>' Enabled="false"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Whether Harvesting Levels Sustainable?">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblHarvestingLevelsSustainable" runat="server" Text='<%# Bind("madp1_whether_harvesting_levels_sustainable") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--   <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtHarvestingLevelsSustainable" runat="server" Text='<%# Bind("madp1_whether_harvesting_levels_sustainable") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Reason Harvesting Levels NOT Managed as Sustainable">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblReasonNotManagedAsSustainable" runat="server" Text='<%# Bind("madp1_reason_harvesting_levels_NOT_managed_as_sustainable") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtReasonNotManagedAsSustainable" runat="server" Text='<%# Bind("madp1_reason_harvesting_levels_NOT_managed_as_sustainable") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remarks (if any)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemarks" runat="server" Text='<%# Bind("madp1_remarks") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("madp1_remarks").ToString()) %>' ID="txtRemarks" runat="server" Text='<%# Bind("madp1_remarks") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mode of Collection">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp2ModeOfCollection" runat="server" Text='<%# Bind("madp2_mode_of_collection") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp2ModeOfCollection" runat="server" Text='<%# Bind("madp2_mode_of_collection") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Estimated Collection (in Kgs)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp2EstimatedCollection" runat="server" Text='<%# Bind("madp2_estimated_collection_kgs") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp2EstimatedCollection" runat="server" Text='<%# Bind("madp2_estimated_collection_kgs") %>' onkeypress="return isNumberKey(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("madp2_estimated_collection_kgs").ToString()) %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Utilized for Personal Use (%)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp2UtilizedForPersonalUse" runat="server" Text='<%# Bind("madp2_utilized_for_personal_use") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp2UtilizedForPersonalUse" runat="server" Text='<%# Bind("madp2_utilized_for_personal_use") %>' Enabled="false"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="For Sale (%)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp2ForSale" runat="server" Text='<%# Bind("madp2_for_sale") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp2ForSale" runat="server" Text='<%# Bind("madp2_for_sale") %>' Enabled="false"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Whether Harvesting Levels Sustainable?">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp2HarvestingLevelsSustainable" runat="server" Text='<%# Bind("madp2_whether_harvesting_levels_sustainable") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--  <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp2HarvestingLevelsSustainable" runat="server" Text='<%# Bind("madp2_whether_harvesting_levels_sustainable") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Reason Harvesting Levels NOT Managed as Sustainable">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp2ReasonNotManagedAsSustainable" runat="server" Text='<%# Bind("madp2_reason_harvesting_levels_NOT_managed_as_sustainable") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--   <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp2ReasonNotManagedAsSustainable" runat="server" Text='<%# Bind("madp2_reason_harvesting_levels_NOT_managed_as_sustainable") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remarks (if any)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp2Remarks" runat="server" Text='<%# Bind("madp2_remarks") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("madp1_remarks").ToString()) %>' ID="txtMadp2Remarks" runat="server" Text='<%# Bind("madp2_remarks") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mode of Collection">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp3ModeOfCollection" runat="server" Text='<%# Bind("madp3_mode_of_collection") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp3ModeOfCollection" runat="server" Text='<%# Bind("madp3_mode_of_collection") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Estimated Collection (in Kgs)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp3EstimatedCollection" runat="server" Text='<%# Bind("madp3_estimated_collection_kgs") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp3EstimatedCollection" runat="server" Text='<%# Bind("madp3_estimated_collection_kgs") %>' onkeypress="return isNumberKey(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("madp3_estimated_collection_kgs").ToString()) %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Utilized for Personal Use (%)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp3UtilizedForPersonalUse" runat="server" Text='<%# Bind("madp3_utilized_for_personal_use") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp3UtilizedForPersonalUse" runat="server" Text='<%# Bind("madp3_utilized_for_personal_use") %>' Enabled="false"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="For Sale (%)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp3ForSale" runat="server" Text='<%# Bind("madp3_for_sale") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp3ForSale" runat="server" Text='<%# Bind("madp3_for_sale") %>' Enabled="false"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Whether Harvesting Levels Sustainable?">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp3HarvestingLevelsSustainable" runat="server" Text='<%# Bind("madp3_whether_harvesting_levels_sustainable") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--  <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp3HarvestingLevelsSustainable" runat="server" Text='<%# Bind("madp3_whether_harvesting_levels_sustainable") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Reason Harvesting Levels NOT Managed as Sustainable">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp3ReasonNotManagedAsSustainable" runat="server" Text='<%# Bind("madp3_reason_harvesting_levels_NOT_managed_as_sustainable") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--  <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp3ReasonNotManagedAsSustainable" runat="server" Text='<%# Bind("madp3_reason_harvesting_levels_NOT_managed_as_sustainable") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remarks (if any)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp3Remarks" runat="server" Text='<%# Bind("madp3_remarks") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("madp1_remarks").ToString()) %>' ID="txtMadp3Remarks" runat="server" Text='<%# Bind("madp3_remarks") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Mode of Collection">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp4ModeOfCollection" runat="server" Text='<%# Bind("madp4_mode_of_collection") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--   <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp4ModeOfCollection" runat="server" Text='<%# Bind("madp4_mode_of_collection") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Estimated Collection (in Kgs)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp4EstimatedCollection" runat="server" Text='<%# Bind("madp4_estimated_collection_kgs") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp4EstimatedCollection" runat="server" Text='<%# Bind("madp4_estimated_collection_kgs") %>' onkeypress="return isNumberKey(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("madp4_estimated_collection_kgs").ToString()) %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Utilized for Personal Use (%)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp4UtilizedForPersonalUse" runat="server" Text='<%# Bind("madp4_utilized_for_personal_use") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp4UtilizedForPersonalUse" runat="server" Text='<%# Bind("madp4_utilized_for_personal_use") %>' Enabled="false"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="For Sale (%)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp4ForSale" runat="server" Text='<%# Bind("madp4_for_sale") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp4ForSale" runat="server" Text='<%# Bind("madp4_for_sale") %>' Enabled="false"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Whether Harvesting Levels Sustainable?">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp4HarvestingLevelsSustainable" runat="server" Text='<%# Bind("madp4_whether_harvesting_levels_sustainable") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp4HarvestingLevelsSustainable" runat="server" Text='<%# Bind("madp4_whether_harvesting_levels_sustainable") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Reason Harvesting Levels NOT Managed as Sustainable">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp4ReasonNotManagedAsSustainable" runat="server" Text='<%# Bind("madp4_reason_harvesting_levels_NOT_managed_as_sustainable") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>                                         <asp:TextBox onkeydown="return Search_Gridview(event)" ID="txtMadp4ReasonNotManagedAsSustainable" runat="server" Text='<%# Bind("madp4_reason_harvesting_levels_NOT_managed_as_sustainable") %>'></asp:TextBox>                                    </EditItemTemplate>--%>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remarks (if any)">
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblMadp4Remarks" runat="server" Text='<%# Bind("madp4_remarks") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox onkeydown="return Search_Gridview(event)" Enabled='<%# !string.IsNullOrEmpty(Eval("madp1_remarks").ToString()) %>' ID="txtMadp4Remarks" runat="server" Text='<%# Bind("madp4_remarks") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="Edit" runat="server" OnClientClick='<%= "scrollToRow(" + Container.DataItemIndex + "); return false;" %>' />
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
                        <Triggers>
                            <%-- <asp:PostBackTrigger ControlID="btnExport" />--%>
                            <asp:AsyncPostBackTrigger ControlID="gvMADP" EventName="RowEditing" />
                        </Triggers>
                    </asp:UpdatePanel>
                    <ul class="pagination" id="pagingnation" visible="false" runat="server" style="margin-top: 1px; margin-left: 9px; color: #5cb85c">
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

    <script type="text/javascript">        function Search_function(strKey) {            var strData = strKey.value.toLowerCase().split(" ");            var tblData = document.getElementById("<%=gvMADP.ClientID %>");            var rowData;            var found = false;            for (var i = 2; i < tblData.rows.length; i++) {                rowData = tblData.rows[i].innerHTML;                var styleDisplay = 'none';                for (var j = 0; j < strData.length; j++) {                    if (rowData.toLowerCase().indexOf(strData[j]) >= 0) {                        styleDisplay = '';                        found = true;                    } else {                        styleDisplay = 'none';                        break;                    }                }                tblData.rows[i].style.display = styleDisplay;            }            var messageElement = document.getElementById('recordNotFoundMessage');            if (!messageElement) {                messageElement = document.createElement('div');                messageElement.id = 'recordNotFoundMessage';                messageElement.innerHTML = 'Record not found.';                messageElement.style.textAlign = 'center';                messageElement.style.width = '100vw';                messageElement.style.marginTop = '50px';                messageElement.style.color = 'red';                //messageElement.style.paddingBottom = '18%';                //messageElement.style.overflowY = 'clip';                tblData.parentElement.appendChild(messageElement);            }            messageElement.style.display = found ? 'none' : 'block';        }        window.onload = function () {            document.getElementById("<%= txtSearch.ClientID %>").value = "";        };
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
        function scrollToRow(rowId) {            var row = document.getElementById('<%= gvMADP.ClientID %>_ctl' + rowId + '_row'); // Adjust this ID based on your GridView's client ID            if (row !== null) {                row.scrollIntoView();            }        } </script>
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
</asp:Content>
