﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Range/Range.Master" AutoEventWireup="true" CodeBehind="WoodyLitter_Full.aspx.cs" Inherits="vansystem.Range.WoodyLitter_Full" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript">    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />


    <style>
        .select2-container-fixed {
            position: relative !important;
            /*z-index: 1;*/
        }

        table {
            width: auto;
            border-collapse: collapse;
            margin: 50px auto;
            margin-left: 1px;
            margin-top: -0.3%;
        }

        th {
            background: #5cb85c;
            color: white;
            font-weight: bold;
            text-align: center;
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
    </style>
    <style>
        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: -2vh;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
        }

        th, td {
            padding: 0.75rem;
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



        :root {
            overflow-y: clip;
            overflow-x: clip;
        }

        .card-body {
            background-color: rgb(252, 252, 252);
            overflow-x: scroll;
            overflow-y: scroll;
            margin-left: 2%;
            width: 99%;
            max-height: 73vh;
            margin-top: 0.5%;
        }

        .plot-tree {
            background-color: #fcfbfb;
        }

        @media screen and (max-width: 1917px) {

            .card-body {
                width: 100%;
                max-height: calc(82vh - 100px);
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
        }

        @media screen and (max-width: 1537px) {

            .card-body {
                width: 100%;
                max-height: calc(80vh - 100px);
                margin-right: -4% !important;
                margin-left: 1% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 89%;
                transform: translateX(-50%);
                z-index: 999;
            }

            .box-content {
                padding-left: 22px !important;
            }
        }

        @media screen and (max-width: 1153px) {

            .card-body {
                width: 100%;
                max-height: calc(73vh - 100px);
                margin-right: -4% !important;
                margin-left: 1% !important;
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
        }

        @media screen and (max-width: 780px) {

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
                transform: translateX(-75%);
                z-index: 999;
            }
        }

        body {
            font-family: "GillSans", sans-serif !important;
            font-size: 16px !important;
        }

        .active {
            background-color: #004990 !important;
        }
    </style>



    <style>
        .custom-pager {
            text-align: center;
            margin-top: 50px;
            position: fixed;
            bottom: -52px;
            left: 75%;
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
    </script>



    <script>
        var object = { status: false, ele: null };

        function confirmDelete1(ev) {
            if (object.status) {
                object.status = false;
                return true;
            }

            swal({
                title: "Are you sure?",
                text: "Your will not be able to recover this record file!",
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
                    object.status = false; // Reset status after confirmation is complete
                });

            return false;
        }
    </script>
    <script type="text/javascript">
        function Search_Gridview(event) {
            // Check if the key pressed is Enter (key code 13)
            if (event.keyCode === 13) {
                event.preventDefault(); // Prevent the default action of the Enter key
                return false;
            }

        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div <%--class="card" style="height: 826px; background-color: #EFEFEF"--%>>
        <div class="container-fluid mt-6">
            <div style="margin-left: 0%; /*width: 113%; */ margin-top: 88px;">

                <div class="plot-tree d-md-flex justify-content-between align-content-between">
                    <div>
                        <h3 id="stickyHeader"><b>Plot Enumeration-Woody Litter</b></h3>
                    </div>
                    <div style="margin-top: 20px;">
                        <asp:LinkButton runat="server" ID="masterdata" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="masterdata_Command" Text="Master Data"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Tree1" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Tree_Command" Text="Tree"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Bamboo" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Bamboo_Command" Text="Bamboo"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Shurb" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Shurb_Command" Text="Shrub"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Sapling" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Sapling_Command" Text="Sapling"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Herb" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Herb_Command" Text="Herb"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Seedling" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Seedling_Command" Text="Seedling"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Grass" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Grass_Command" Text="Grass"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Climber" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Climber_Command" Text="Climber"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="LeafLitter" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="LeafLitter_Command" Text="Leaf Litter"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success active" ID="WoodyLitter" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="WoodyLitter_Command" Text="Woody Litter"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Soil" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Soil_Command" Text="Soil"> </asp:LinkButton>
                        <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="DeadWood" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="DeadWood_Command" Text="Dead Wood"> </asp:LinkButton>
                         <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Stump" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Stump_Command" Text="Stump"> </asp:LinkButton>
                         <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="NonClump" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="NonClump_Command" Text="Non Clump"> </asp:LinkButton>
                    </div>


                </div>
                <div class="d-flex justify-content-center align-items-center" style="margin-left: 60%; margin-top: 1%; padding-right: 35px;" >
                    Show
                    <div class="pl-2 pr-2">
                        <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" Style="background-color: #004990; color: white; width: 70px; border-radius: 3px; height: 30px;">
                            <asp:ListItem Text="10" Value="10" />
                            <asp:ListItem Text="25" Value="25" />
                            <asp:ListItem Text="50" Value="50" />
                        </asp:DropDownList>
                    </div>
                    entries                                       
                </div>

                <div class="card-body" style="height: 100vh!important; overflow-y: auto; margin-left: 2%; width: 99%;">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="box-content">
                                <asp:GridView ID="GVWoodylitter" runat="server" AutoGenerateColumns="false" OnRowEditing="GVWoodylitter_RowEditing" OnRowUpdating="GVWoodylitter_RowUpdating" OnPageIndexChanging="GVWoodylitter_PageIndexChanging" OnRowCancelingEdit="GVWoodylitter_RowCancelingEdit" OnRowDataBound="GVWoodylitter_RowDataBound" ShowHeaderWhenEmpty="true" Style="width: 100%" DataKeyNames="id" AllowPaging="true" PageSize="10">
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>


                                        <asp:BoundField ItemStyle-Width="150px" DataField="enumeration_id" HeaderText="Surveyor ID" ReadOnly="true">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="direction" HeaderText="Select corner plot">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Select corner plot">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldirection" runat="server" Text='<%# Eval("direction_names")%>'></asp:Label>
                                            </ItemTemplate>
                                            <%--                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddldirection" runat="server">
                                                </asp:DropDownList>
                                            </EditItemTemplate>--%>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Woody litter weight (in Grams)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwoody_litter_weight_in_grams" runat="server" Text='<%# Eval("woody_litter_weight_in_grams") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtwoody_litter_weight_in_grams" runat="server" Text='<%# Eval("woody_litter_weight_in_grams") %>' Width="140" oninput="DecimalCheck(this);" onkeydown="return Search_Gridview(event)"></asp:TextBox>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Sample weight" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsub_sample_weight" runat="server" Text='<%# Eval("sub_sample_weight") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtsub_sample_weight" runat="server" Text='<%# Eval("sub_sample_weight") %>' Width="140" oninput="DecimalCheck(this);" onkeydown="return Search_Gridview(event)"></asp:TextBox>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Sample Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsample_number" runat="server" Text='<%# Eval("sample_number") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtsample_number" runat="server" Text='<%# Eval("sample_number") %>' Width="140" onkeydown="return Search_Gridview(event)"></asp:TextBox>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks (if any)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblremarks" runat="server" Text='<%# Eval("remarks") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtremarks" runat="server" Text='<%# Eval("remarks") %>' Width="140" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Action" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="Edit" runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" Text="Update" CommandName="Update" />
                                                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger" Text="Cancel" CommandName="cancel" />
                                            </EditItemTemplate>

                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerStyle CssClass="custom-pager" />
                                </asp:GridView>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>
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


    <script type="text/javascript">
        function initializeMultiselect() {
            $('[id*=lstntfp]').multiselect({
                includeSelectAllOption: true
            });
        }


        // Function to re-initialize the multiselect after partial postback (ASP.NET AJAX)
        function pageLoad(sender, args) {
            initializeMultiselect();


        }
        // Initialize the multiselect on page load
        $(document).ready(function () {
            initializeMultiselect();


        });


    </script>
    <%--  <script>

        $(document).ready(function () {
            // Initialize Select2 for the DropDownList with the specified class
            $(".search-dropdown").select2({
                theme: "classic", // You can change the theme as needed
                placeholder: "Search for an option",
                allowClear: true, // Optionally allow clearing the selection
            });
        });
    </script>--%>

    <script type="text/javascript">
        // Function to initialize select2 for the dropdown
        function initializeSelect2() {
            $('.search-dropdown').select2();

            // Adjust the position of the dropdown container
            $('.select2-container').addClass('select2-container-fixed');
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


</asp:Content>
