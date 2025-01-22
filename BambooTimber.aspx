<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="BambooTimber.aspx.cs" Inherits="vansystem.BambooTimber" EnableEventValidation="false" %>

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


    <script>        var object = { status: false, ele: null };        function confirmDelete1(ev) {            if (object.status) {                object.status = false; // Reset status for next confirmation                return true;            }            swal({                title: "Are you sure you want to delete this entry?",                text: "This entry cannot be recovered and will be deleted permanently.",                type: "warning",                showCancelButton: true,                confirmButtonClass: "btn-danger",                confirmButtonText: "Yes, delete it!",                cancelButtonText: "No, cancel!",                closeOnConfirm: true,            },                function () {                    object.status = true;                    object.ele = ev;                    object.ele.click();                    object.status = false; // Reset status after confirmation is complete                });            return false;        }    </script>

    <style>
        .sweet-alert button.cancel {
            background-color: #dc3545 !important;
        }



        table {
            width: 100%;
            /* border-collapse: collapse;*/
            margin: 50px auto;
            margin-left: 0.1px;
            margin-top: 1.5%;
        }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: 2rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            white-space: nowrap;
            font-weight: bold;
            text-align: center;
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

        .box-content {
            max-height: 50%;
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
        /* h3 {
            margin-left: 80px;
        }*/

        body {
            font-family: "GillSans", sans-serif !important;
            font-size: 16px !important;
        }



        th, td {
            padding: 0.75rem;
            /*border: 1px solid black;*/
        }

        thead th {
            z-index: 1; /* Ensure it's above the table content */
        }


        /* Customize scrollbar */
        /* div::-webkit-scrollbar {
            width: 12px;
        }*/

        /*  div::-webkit-scrollbar-thumb {
            background-color: #888;
            border-radius: 6px;
        }

        div::-webkit-scrollbar-track {
            background-color: #eee;
        }*/

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
            top: 7%;
            left: -15px;
            width: 100%;
            background-color: #fcfbfb; /* Change this to your desired background color */
            padding: 29px;
            text-align: left;
            /*z-index: -1;*/
            /*z-index: 100;*/ /* Set a higher z-index to ensure it stays on top of other elements */
        }

        .card-body {
            background-color: rgb(252, 252, 252);
            overflow: auto;
            margin-left: 3%; /* Adjust margin as needed */
           /* width: 99%;*/ /* Adjust width percentage as needed */
            max-height: 72vh;
            /*margin-top:9%;*/
        }

        /* Add any additional styles as needed */

        @media screen and (max-width: 768px) {
            /* Adjust styles for smaller screens if needed */
            .card-body {
                width: 100%;
                margin-left: 0;
            }
        }
    </style>
    <style>
        .custom-pager {
            text-align: center;
            margin-top: 50px;
            position: fixed;
            bottom: -45px;
            left: 92%;
            margin-bottom: 0; /* Set margin-bottom to 0 */
        }

        .sticky-header {
            background-color: forestgreen; /* Set background color to green */
            color: white !important;
            position: sticky;
            top: -1.5rem;
            z-index: 10; /* Ensure it stays on top of other elements */
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
        }


        /*.custom-pager a {
        padding: 3px 10px;*/ /* Adjust the padding to reduce height */
        /*margin: 0 5px;
        border: 3px solid #ccc;
        text-decoration: none;
        color: #333;
        background-color: #f8f8f8;
        border-radius: 3px;
    }*/

        .custom-pager a:hover,
        .custom-pager a:active,
        .custom-pager a.active {
            background-color: #ddd;
        }

        @media screen and (max-width: 1917px) {

            .card-body {
                width: 100%;
                max-height: calc(81vh - 100px);
                margin-right: -4% !important;
                /*margin-left: 4% !important;*/
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: -7vh;
                left: 92%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }

        @media screen and (max-height:728px) {

            .card-body {
                width: 100%;
                max-height: calc(74vh - 100px);
                margin-right: -4% !important;
                margin-left: 3% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: -7vh;
                left: 92%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }
    </style>
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
    <style>
        .btn-approved {
            background-color: green;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>

    <div <%--class="card" style="height: 826px; background-color: #EFEFEF"--%>>
        <div class="container-fluid mt-6">
            <div style="margin-left: 0%; /*width: 113%; */ margin-top: 88px;">


                <%--  <div class="plot-climber d-md-flex justify-content-between align-items-center">--%>
                <div class="d-md-flex justify-content-between text-center align-items-center">
                    <%--  <div style="margin-left: 3% !important;">--%>
                    <div style="margin-left: 3% !important;">
                        <h3 style="margin-inline: auto; margin-left: 40px !important;"><b>Annual Bamboo Consumption</b></h3>
                    </div>

                    <div class="row d-sm-flex justify-content-center align-items-end text-center">

                        <div>
                            <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No records found.</asp:Label>
                        </div>
                        <div class="d-flex justify-content-center align-items-center pl-4">
                            Search:
                            <asp:TextBox ID="txtSearch1" runat="server" Style="background-color: #004990; color: white;" Font-Size="20px" onkeydown="return Search_Gridview(event)" onkeyup="Search_function(this)"></asp:TextBox>
                        </div>
                        <div class="pl-4" style="padding-top: 6px;">
                            <asp:Button ID="btnExport" runat="server" Style="height: 34px;" Text="Export to Excel" OnClick="btnExport_Click" />
                        </div>
                        <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top: 6px; padding-right: 15px;">
                            Show
                          <div class="pl-2 pr-2">
                              <asp:DropDownList ID="ddlPageSize" runat="server" Style="background-color: #004990; color: white; width: 70px; border-radius: 3px; height: 30px;" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                  <asp:ListItem Text="10" Value="10" />
                                  <asp:ListItem Text="25" Value="25" />
                                  <asp:ListItem Text="50" Value="50" />
                              </asp:DropDownList>
                          </div>
                            entries
                        </div>
                    </div>
                </div>
                <%--<marquee><div id="recordNotFoundMessage" style="display: none; color: red;">No Records Found.</div></marquee>--%>

                <hr />


            </div>

            <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 3.5rem !important; width: 98%; ">
                <asp:UpdatePanel runat="server" ID="updatepanel1">
                    <ContentTemplate>
                        <div class="box-content" style="display: flex; align-items: center;">

                            <asp:GridView ID="gvbambootimber" runat="server" AutoGenerateColumns="False" DataKeyNames="id" GridLines="Horizontal" OnRowCancelingEdit="gvbambootimber_RowCancelingEdit" OnRowEditing="gvbambootimber_RowEditing" OnRowUpdating="gvbambootimber_RowUpdating" AllowPaging="true" PageSize="10" OnPageIndexChanging="gvbambootimber_PageIndexChanging" OnPreRender="gvbambootimber_PreRender" OnRowDataBound="gvsmalltimber_RowDataBound" ShowHeaderWhenEmpty="true" Style="margin-top: -2rem; width:100%" OnRowCommand="gvbambootimber_RowCommand">
                                <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Sr No." ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Survey ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSurveyID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Surveyor Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSurveyorName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtSurveyorName" onkeydown="return Search_Gridview(event)" runat="server" Text='<%# Eval("name") %>' Width="140"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="gender" HeaderText="Gender" ReadOnly="true">
                                        <%--<ItemStyle Width="150px" />--%>
                                    </asp:BoundField>

                                    <asp:TemplateField HeaderText="Surveyor Phone No" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSurveyorPhoneNo" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtSurveyorPhoneNo" onkeydown="return Search_Gridview(event)" runat="server" Text='<%# Eval("PhoneNumber") %>' Width="100"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Surveyor Designation" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDesignation" runat="server" Text='<%# Eval("Designation") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Survey Date" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("date_created") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Latitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblLatitude" runat="server" Text='<%# Eval("Latitude") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Longitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblLongitude" runat="server" Text='<%# Eval("Longitude") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Altitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAltitude" runat="server" Text='<%# Eval("Altitude") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Accuracy" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAccuracy" runat="server" Text='<%# Eval("Accuracy") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="State" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Forest Division" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDivision" runat="server" Text='<%# Eval("Division") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Forest Range" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRange" runat="server" Text='<%# Eval("Range") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Forest Block" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblBlock" runat="server" Text='<%# Eval("Block") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <%--  <asp:TemplateField HeaderText="Tehsil Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTehsilName" runat="server" Text='<%# Eval("tehsil_name") %>'></asp:Label>
                                            </ItemTemplate>
                                               <EditItemTemplate>
                                                <asp:TextBox ID="txtTehsilName" runat="server" Text='<%# Eval("tehsil_name") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>--%>



                                    <asp:TemplateField HeaderText="Panchayat Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPanchayate" runat="server" Text='<%# Eval("Panchayatname") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPanchayat" onkeydown="return Search_Gridview(event)" runat="server" Text='<%# Eval("Panchayatname") %>' Width="140"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Village Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblvillageName" runat="server" Text='<%# Eval("name_of_village") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtvillageName" onkeydown="return Search_Gridview(event)" runat="server" Text='<%# Eval("name_of_village") %>' Width="140"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="House Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblHouseNumber" runat="server" Text='<%# Eval("house_number") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtHouseNumber" onkeydown="return Search_Gridview(event)" runat="server" Text='<%# Eval("house_number") %>' Width="140"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <%--------------------------------------------------------------------------------------------------------------------------%>
                                    <asp:TemplateField HeaderText="Bamboo Subcode" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblcoderoof" runat="server" Text='<%# Eval("bamboosubcoderoof") %>'></asp:Label>
                                        </ItemTemplate>

                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Ballies(4' length x 4” width)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblballies1" runat="server" Text='<%# Eval("bamboo_ballies1") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtballies1" onkeydown="return Search_Gridview(event)" runat="server" Text='<%# Eval("bamboo_ballies1") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>



                                    <asp:TemplateField HeaderText="Ballies(6' length x 4” width)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblballies2" runat="server" Text='<%# Eval("bamboo_ballies2") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtballies2" runat="server" Text='<%# Eval("bamboo_ballies2") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Ballies(8' length x 4” width)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblballies3" runat="server" Text='<%# Eval("bamboo_ballies3") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtballies3" runat="server" Text='<%# Eval("bamboo_ballies3") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <%--------------------------------------------------------------------------------------------------------------------------%>
                                    <asp:TemplateField HeaderText="Bamboo Subcode" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblcodefurniture" runat="server" Text='<%# Eval("bamboosubcodefurniture") %>'></asp:Label>
                                        </ItemTemplate>

                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Stool/Table(height up to 2’)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblstool1" runat="server" Text='<%# Eval("bamboo_stool1") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtstool1" runat="server" Text='<%# Eval("bamboo_stool1") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>



                                    <asp:TemplateField HeaderText="Stool/Table(height above 2’)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblstool2" runat="server" Text='<%# Eval("bamboo_stool2") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtstool2" runat="server" Text='<%# Eval("bamboo_stool2") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Bench(height up to 2’ and length 4’)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblbench1" runat="server" Text='<%# Eval("bamboo_bench1") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtbench1" runat="server" Text='<%# Eval("bamboo_bench1") %>' Width="140"
                                                oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Bench(height above 2’ and length above 4’)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblbench2" runat="server" Text='<%# Eval("bamboo_bench2") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtbench2" runat="server" Text='<%# Eval("bamboo_bench2") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>



                                    <asp:TemplateField HeaderText="Chauki(1' X 1' Complete wooden)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblchauki1" runat="server" Text='<%# Eval("bamboo_chauki1") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtchauki1" runat="server" Text='<%# Eval("bamboo_chauki1") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Chauki(1' X 1' with top other than wood)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblchauki2" runat="server" Text='<%# Eval("bamboo_chauki2") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtchauki2" runat="server" Text='<%# Eval("bamboo_chauki2") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Chauki(others)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblchauki3" runat="server" Text='<%# Eval("bamboo_chauki3") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtchauki3" runat="server" Text='<%# Eval("bamboo_chauki3") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <%-----------------------------------------------------------------------------------------------------------------------%>
                                    <asp:TemplateField HeaderText="Bamboo Subcode" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblcodefencing" runat="server" Text='<%# Eval("bamboosubcodefencing") %>'></asp:Label>
                                        </ItemTemplate>

                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Pole(Length up to 4’)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblpole1" runat="server" Text='<%# Eval("bamboo_pole1") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtpole1" runat="server" Text='<%# Eval("bamboo_pole1") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>



                                    <asp:TemplateField HeaderText="Pole(Length above 4’)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblpole2" runat="server" Text='<%# Eval("bamboo_pole2") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtpole2" runat="server" Text='<%# Eval("bamboo_pole2") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Bamboo culm(Length up to 8’)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblbamboo" runat="server" Text='<%# Eval("bamboo_bamboo") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtbamboo" runat="server" Text='<%# Eval("bamboo_bamboo") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <%--------------------------------------------------------------------------------------------------------------------------%>
                                    <asp:TemplateField HeaderText="Bamboo Subcode" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblcodeagriculture" runat="server" Text='<%# Eval("bamboosubcodeagriculture") %>'></asp:Label>
                                        </ItemTemplate>

                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Plough(Hul) Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPlough" runat="server" Text='<%# Eval("bamboo_plough") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPlough" runat="server" Text='<%# Eval("bamboo_plough") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Leveler Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblleveler" runat="server" Text='<%# Eval("bamboo_leveler") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtleveler" runat="server" Text='<%# Eval("bamboo_leveler") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Harrow(Henga) Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblharrow" runat="server" Text='<%# Eval("bamboo_harrow") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtharrow" runat="server" Text='<%# Eval("bamboo_harrow") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Others Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblother" runat="server" Text='<%# Eval("bamboo_other") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtotheer" runat="server" Text='<%# Eval("bamboo_other") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Not Applicable" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblnot_applicable" runat="server" Text='<%# Eval("bamboo_not_applicable") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtnot_applicable" runat="server" Text='<%# Eval("bamboo_not_applicable") %>' Width="140" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="Edit" runat="server" OnClientClick='<%= "scrollToRow(" + Container.DataItemIndex + "); return false;" %>' />
                                        </ItemTemplate>

                                        <EditItemTemplate>
                                            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" Text="Update" CommandName="Update" />
                                            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger" Text="Cancel" CommandName="cancel" />
                                        </EditItemTemplate>

                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle Width="20%" />

                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:ImageButton ImageUrl='~/images/bin.png' ID="Button1" ToolTip="Delete" runat="server"
                                                CausesValidation="false" CommandName="cmdDelete" CommandArgument="<%# Container.DataItemIndex %>"
                                                OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>



                                  

                                    <asp:TemplateField HeaderText="RFO Approval" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:Button ID="Button3" runat="server" CausesValidation="false" OnClientClick="return false;" Text="RFO Not Approved" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="DFO Approval" ShowHeader="False">
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
                <ul class="pagination" id="pagingnation" visible="false" runat="server" style="margin-top: 6px; margin-left: 9px; color: #5cb85c">

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


    <triggers>
        <asp:PostBackTrigger ControlID="btnExport" />
    </triggers>



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

    <script type="text/javascript">        function Search_function(strKey) {            var strData = strKey.value.toLowerCase().split(" ");            var tblData = document.getElementById("<%=gvbambootimber.ClientID %>");            var rowData;            var found = false;            for (var i = 2; i < tblData.rows.length; i++) {                rowData = tblData.rows[i].innerHTML;                var styleDisplay = 'none';                for (var j = 0; j < strData.length; j++) {                    if (rowData.toLowerCase().indexOf(strData[j]) >= 0) {                        styleDisplay = '';                        found = true;                    } else {                        styleDisplay = 'none';                        break;                    }                }                tblData.rows[i].style.display = styleDisplay;            }            var messageElement = document.getElementById('recordNotFoundMessage');            if (!messageElement) {
                messageElement = document.createElement('div');
                messageElement.id = 'recordNotFoundMessage';
                messageElement.innerHTML = 'Record not found.';
                messageElement.style.textAlign = 'center';
                messageElement.style.width = '100vw';
                messageElement.style.marginTop = '100px';
                messageElement.style.color = 'red';
                //messageElement.style.paddingBottom = '21%';
                //messageElement.style.overflowY = 'clip';
                tblData.parentElement.appendChild(messageElement);
            }            messageElement.style.display = found ? 'none' : 'block';        }        window.onload = function () {            document.getElementById("<%= txtSearch1.ClientID %>").value = "";        };
    </script>


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



    <script type="text/javascript">        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
        function scrollToRow(rowId) {            var row = document.getElementById('<%= gvbambootimber.ClientID %>_ctl' + rowId + '_row'); // Adjust this ID based on your GridView's client ID            if (row !== null) {                row.scrollIntoView();            }        } </script>


</asp:Content>
