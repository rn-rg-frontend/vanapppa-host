<%@ Page Title="" Language="C#" MasterPageFile="~/Range/Range.Master" AutoEventWireup="true" CodeBehind="TOF.aspx.cs" Inherits="vansystem.Range.TOF" EnableEventValidation="false" %>

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
            /*margin: 50px auto;*/
            margin-left: 1px;
            margin-top: -1px;
        }

           .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 78%;
                transform: translateX(-50%);
                z-index: 999;
            }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: -0vh;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            background: #5cb85c;
            color: white;
            font-weight: bold;
            text-align: center;
            z-index: 10;
            white-space:nowrap;
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
            width: 98%;
            max-height: calc(87vh - 100px);
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
                max-height: calc(82vh - 100px);
                margin-right: -4% !important;
                margin-left: 1% !important;
                padding-top:0%;
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
        /*.custom-pager {
            text-align: center;
            margin-top: 50px;
            position: fixed;
            bottom: -52px;
            left: 75%;
            margin-bottom: 0;*/ /* Set margin-bottom to 0 */
        /*}

            .custom-pager a:hover,
            .custom-pager a:active,
            .custom-pager a.active {
                background-color: #ddd;
            }*/

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

        body {
            font-family: "GillSans", sans-serif !important;
            font-size: 16px !important;
        }
    </style>







    <script>
        var object = { status: false, ele: null };

        function confirmDelete1(ev) {
            if (object.status) {
                object.status = false; // Reset status for next confirmation
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
                    object.status = false; // Reset status after confirmation is complete
                });

            return false;
        }
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" style="overflow-x: clip;">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div>
        <div class="container-fluid mt-6">
            <div style="margin-left: 0%; margin-top: 88px;">
                <div class="d-md-flex justify-content-between text-center">
                    <div style="margin-left: 3% !important;">
                        <h3><b>Availability of Timber in Tree Outside Forest (TOF)</b></h3>
                    </div>
                    <div class="row d-sm-flex justify-content-center align-items-center text-center">
                        <div>
                            <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No records found.</asp:Label>
                        </div>
                        <div class="d-flex justify-content-center align-items-center pl-4">
                            Search:
                             
                                <asp:TextBox ID="txtSearch1" runat="server" Font-Size="20px" onkeydown="return Search_Gridview(event); adjustGridViewPosition();" onkeyup="Search_function(this); adjustGridViewPosition();" Style="background-color: #004990; color: white"></asp:TextBox>
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





                            <div class="box-content" onkeydown="return Search_Gridview(event)" style="display: flex; align-items: center;">



                                <asp:GridView ID="gvtof" runat="server" AutoGenerateColumns="false" DataKeyNames="id" OnRowEditing="gvtof_RowEditing" OnRowUpdating="gvtof_RowUpdating" OnRowCancelingEdit="gvtof_RowCancelingEdit" OnPageIndexChanging="gvtof_PageIndexChanging" GridLines="Horizontal" AllowPaging="true" PageSize="10" ShowHeaderWhenEmpty="true" OnRowCommand="gvtof_RowCommand" OnRowDataBound="gvtof_RowDataBound">
                                    <AlternatingRowStyle BackColor="White" />
                                    <RowStyle BackColor="#f5f5f5" />
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Survey ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surveyor Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyorName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("name").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtSurveyorName" runat="server" Text='<%# Eval("name") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <%--  <asp:BoundField ItemStyle-Width="150px" DataField="Gender" HeaderText="Gender">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <asp:TemplateField HeaderText="Gender" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblGender" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--  <EditItemTemplate>
                                                 <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("madp4_estimated_collection_kgs").ToString()) %>'  onkeydown="return Search_Gridview(event)" ID="txtGender" runat="server" Text='<%# Eval("Gender") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surveyor Phone No" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyorPhoneNo" runat="server" Text='<%# Eval("phonenumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--<EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("phonenumber").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtSurveyorPhoneNo" runat="server" Text='<%# Eval("phonenumber") %>' Width="140" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surveyor Designation" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblDesignation" runat="server" Text='<%# Eval("Designation") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Survey Date" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblDate" runat="server" Text='<%# Eval("date_created") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="State" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblState" runat="server" Text='<%# Eval("StateName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Forest Division" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblDivision" runat="server" Text='<%# Eval("DivisionName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Forest Range" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblRange" runat="server" Text='<%# Eval("RangeName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Forest Block" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblBlock" runat="server" Text='<%# Eval("BlockName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Tehsil Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblTehsilName" runat="server" Text='<%# Eval("tehsil_name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("tehsil_name").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtTehsilName" runat="server" Text='<%# Eval("tehsil_name") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name of Village" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblVillage" runat="server" Text='<%# Eval("village_name_IV_unit_and_UFS_block_no") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("village_name_IV_unit_and_UFS_block_no").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtVillage" runat="server" Text='<%# Eval("village_name_IV_unit_and_UFS_block_no") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <%--  <asp:BoundField ItemStyle-Width="150px" DataField="Panchayat" HeaderText="Panchayat" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Name of Panchayat" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblPanchayat" runat="server" Text='<%# Eval("Panchayatname") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("panchayatname").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtPanchayat" runat="server" Text='<%# Eval("panchayatname") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="House Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblHouseNumber" runat="server" Text='<%# Eval("house_number") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("house_number").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtHouseNumber" runat="server" Text='<%# Eval("house_number") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <%-- <asp:TemplateField HeaderText="Latitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" /><ItemTemplate>
                                                <asp:Label ID="lblLatitude" runat="server" Text='<%# Eval("lattitude") %>'></asp:Label>
                                            </ItemTemplate>
                                              <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Longitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" /><ItemTemplate>
                                                <asp:Label ID="lblLongitude" runat="server" Text='<%# Eval("longitude") %>'></asp:Label>
                                            </ItemTemplate>
                                              <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Altitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" /><ItemTemplate>
                                                <asp:Label ID="lblAltitude" runat="server" Text='<%# Eval("altitude") %>'></asp:Label>
                                            </ItemTemplate>
                                              <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Accuracy" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" /><ItemTemplate>
                                                <asp:Label ID="lblAccuracy" runat="server" Text='<%# Eval("accuracy") %>'></asp:Label>
                                            </ItemTemplate>
                                              <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText="Latitude">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" runat="server" Text='<%# Bind("lattitude", "{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Longitude">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" runat="server" Text='<%# Bind("longitude", "{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Altitude">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAltitude" runat="server" Text='<%# Bind("altitude", "{0:F2}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Accuracy">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblAccuracy" runat="server" Text='<%# Bind("accuracy", "{0:F2}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Whether the Household is Owner of Timber Species? " HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lbltimber_specie" runat="server" Text='<%# Eval("whether_the_household_is_owner_of_timber_species") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Purpose of Cutting" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblpurpose" runat="server" Text='<%# TrimTo(Eval("purpose_of_cutting"),30) %>'></asp:Label>
                                            </ItemTemplate>

                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other Purpose of Tree Cutting" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblotherpurpose" runat="server" Text='<%# Eval("other_purpose_of_tree_cutting") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("other_purpose_of_tree_cutting").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtother_purpose_of_tree_cutting" runat="server" Text='<%# Eval("other_purpose_of_tree_cutting") %>' Width="140" MaxLength="4"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Permission is Required for Cutting or Exempted" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblpermission" runat="server" Text='<%# Eval("permission_is_required_for_cutting_or_exempted") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remarks" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemark" runat="server" Text='<%# Eval("remark") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("remark").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtremark" runat="server" Text='<%# Eval("remark") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Details of Timber Tree Species Owned by HH" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lbltimber" runat="server" Text='<%# Eval("details_of_timber_tree_species_owned_by_HH") %>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>
                                        <%-- <asp:TemplateField HeaderText="Details of another Timber Tree Species Owned by HH" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" /><ItemTemplate>
                                                <asp:Label ID="lblanothertimber" runat="server" Text='<%# Eval("details_of_another_timber_tree_species_owned_by_HH") %>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText="Species Code" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblspecies_code" runat="server" Text='<%# Eval("species_code") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("species_code").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtspecies_code" runat="server" Text='<%# Eval("species_code") %>' Width="140" MaxLength="4"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Species Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblspecies_name" runat="server" Text='<%# Eval("species_name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("species_name").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtSpecies" runat="server" Text='<%# Eval("species_name") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Diameter(DBH_in_cm)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblDiameter" runat="server" Text='<%# Eval("dbh_in_cm") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("dbh_in_cm").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtDiameter" runat="server" Text='<%# Eval("dbh_in_cm") %>' Width="140" onkeypress="return isNumberKey(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Total Number or Count of Trees in above mentioned DBH Class" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lbldbhclass" runat="server" Text='<%# Eval("total_number_trees_in_above_mentioned_dbh_class") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("total_number_trees_in_above_mentioned_dbh_class").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtdbhclass" runat="server" Text='<%# Eval("total_number_trees_in_above_mentioned_dbh_class") %>' Width="140" onkeypress="return isNumberKey(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Species Remarks" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <HeaderStyle CssClass="sortable-header" />
                                            <ItemTemplate>
                                                <asp:Label ID="lblremarks" runat="server" Text='<%# Eval("remarks") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("remarks").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtremarks" runat="server" Text='<%# Eval("remarks") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
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
                                        <asp:TemplateField HeaderText="Delete" ShowHeader="false">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="ImageButton1" runat="server" ToolTip="Delete" CausesValidation="false" CommandName="cmdDelete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" ImageUrl="~/images/bin.png" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="RFO Approval" ShowHeader="false">
                                            <ItemTemplate>
                                                <asp:Button ID="Button1" runat="server" CssClass="btn-approved btn-primary" class="btn-approved" CausesValidation="false" CommandName="cmdApprove" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Approve" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>

                                    <PagerStyle CssClass="custom-pager" />

                                </asp:GridView>

                            </div>
                        </ContentTemplate>
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

    <script>
        $(document).ready(function () {
            // Initialize Select2 for the DropDownList with the specified class
            $(".search-dropdown").select2({
                theme: "classic", // You can change the theme as needed
                placeholder: "Search for an option",
                allowClear: true, // Optionally allow clearing the selection
            });
        });
    </script>



    <script type="text/javascript">
        function scrollToRow(rowId) {
            var row = document.getElementById('<%= gvtof.ClientID %>_ctl' + rowId + '_row'); // Adjust this ID based on your GridView's client ID
            if (row !== null) {
                row.scrollIntoView();
            }
        }
    </script>


    <script type="text/javascript">
        function Search_function(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");
            var tblData = document.getElementById("<%=gvtof.ClientID %>");
            var rowData;
            var found = false;

            for (var i = 1; i < tblData.rows.length; i++) {
                rowData = tblData.rows[i].innerHTML.toLowerCase();
                var styleDisplay = 'none'; 
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.indexOf(strData[j]) >= 0) {
                        
                        styleDisplay = '';
                        found = true;
                        break;
                    }
                }
                tblData.rows[i].style.display = styleDisplay;
            }

            var messageElement = document.getElementById('recordNotFoundMessage');
            if (!messageElement) {
                messageElement = document.createElement('div');
                messageElement.id = 'recordNotFoundMessage';
                messageElement.innerHTML = 'Record not found.';
                messageElement.style.textAlign = 'center';
                messageElement.style.width = '100vw';                messageElement.style.marginTop = '50px';
                messageElement.style.color = 'red';
                messageElement.style.maxWidth = '60%';
                //messageElement.style.paddingBottom = '18%';
                //messageElement.style.overflowY = 'clip';
                tblData.parentElement.appendChild(messageElement);
            }

            messageElement.style.display = found ? 'none' : 'block';
        }

        window.onload = function () {
            document.getElementById("<%= txtSearch1.ClientID %>").value = "";
        };
    </script>




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

</asp:Content>
