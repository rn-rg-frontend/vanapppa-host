<%@ Page Title="" Language="C#" MasterPageFile="~/Range/Range.Master" AutoEventWireup="true" CodeBehind="AnnualFodderConsumption_RFO.aspx.cs" Inherits="vansystem.Range.AnnualFodderConsumption_RFO" %>

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

    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>


    <script>        var object = { status: false, ele: null };        function confirmDelete1(ev) {            if (object.status) {                object.status = false; // Reset status for next confirmation                return true;            }            swal({                title: "Are you sure you want to delete this entry?",                text: "This entry cannot be recovered and will be deleted permanently.",                type: "warning",                showCancelButton: true,                confirmButtonClass: "btn-danger",                confirmButtonText: "Yes, delete it!",                cancelButtonText: "No, cancel!",                closeOnConfirm: true,            },                function () {                    object.status = true;                    object.ele = ev;                    object.ele.click();                    object.status = false; // Reset status after confirmation is complete                });            return false;        }    </script>


    <style>
        table {
            width: auto;
            border-collapse: collapse;
            /* margin: 30px auto 0;*/
            margin-left: 1px;
        }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: -1.70rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            white-space: nowrap;
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

        h3 {
            margin-left: 3%;
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
            max-height: calc(83vh - 100px);
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

        @media screen and (max-width: 1917px) {

            .card-body {
                width: 100%;
                max-height: calc(80vh - 100px);
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

        @media screen and (max-width: 1153px) {

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
        @media only screen and (max-width: 414px) {
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
                left: 90%;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>

    <div <%--class="card" style="height: 826px; background-color: #EFEFEF"--%>>
        <div class="container-fluid mt-6">
            <div style="margin-left: 0%; /*width: 113%; */ margin-top: 88px;">
                <div class="d-md-flex justify-content-between text-center">
                    <div style="margin-left: 4% !important">
                        <h3 style="margin-inline: auto"><b>Annual Fodder Consumption</b></h3>

                    </div>
                    <div class="row d-sm-flex justify-content-center align-items-center text-center">
                        <div>
                            <asp:Label ID="Label2" runat="server" Style="display: none; margin-left: -140px; color: red;">No records found.</asp:Label>
                        </div>
                        <div>
                            Search:
                            <asp:TextBox ID="txtSearch" runat="server" Font-Size="20px" onkeydown="return Search_Gridview(event);" onkeyup="Search_function(this);" Style="background-color: #004990; color: white"></asp:TextBox>
                        </div>
                        <%--<asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" /><i class="fa-regular fa-file-excel"></i>--%>
                        <div class="pl-4">
                            <asp:Button ID="btnExport" runat="server" Style="height: 34px" Text=' Export to Excel' OnClick="btnExport_Click"></asp:Button>

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
                        <%-- <marquee><div id="recordNotFoundMessage" style="display: none; color: red;">No Records Found.</div></marquee>--%>
                    </div>
                </div>
                <%--<marquee><div id="recordNotFoundMessage" style="display: none; color: red;">No Records Found.</div></marquee>--%>

                <hr />




                <div class="card-body" style="height: 100vh!important; overflow-y: auto; margin-left: 3.5rem !important; width: 98%; /*margin-left: 1.7%; */">
                    <asp:UpdatePanel runat="server" ID="updatepanel1" >
                        <ContentTemplate>




                            <div class="box-content" style="display: flex; align-items: center; margin-top:-1%">

                                <asp:GridView ID="gvannnualfodder" AutoGenerateColumns="False" runat="server" DataKeyNames="Fodder_id,uniqueid" OnRowEditing="gvannnualfodder_RowEditing" OnRowUpdating="gvannnualfodder_RowUpdating" OnRowCancelingEdit="gvannnualfodder_RowCancelingEdit" ShowHeaderWhenEmpty="True" OnPageIndexChanging="gvannnualfodder_PageIndexChanging" OnRowDataBound="gvannnualfodder_RowDataBound"
                                    AllowPaging="True" OnSelectedIndexChanged="gvannnualfodder_SelectedIndexChanged" OnRowCommand="gvannnualfodder_RowCommand">
                                    <AlternatingRowStyle BackColor="White" />
                                    <RowStyle BackColor="#f5f5f5" />
                                      
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="5" LastPageText="Last" />

                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Survey ID">
                                            <EditItemTemplate>
                                                <asp:Label ID="lbFodder" runat="server" Text='<%# Eval("Fodder_id") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Fodder_id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Surveyor Name">
                                            <EditItemTemplate>
                                                <asp:Label ID="txtName" runat="server" onkeydown="return Search_Gridview(event)" Text='<%# Bind("Name") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                            <ItemStyle Width="150px" />
                                        </asp:TemplateField>


                                        <asp:BoundField DataField="gender" HeaderText="Gender" ReadOnly="true">
                                            <%--<ItemStyle Width="150px" />--%>
                                        </asp:BoundField>

                                        <asp:TemplateField HeaderText="Surveyor Phone No">
                                            <EditItemTemplate>
                                                <asp:Label ID="txtPhNo" runat="server" onkeypress="return isNumberKey(event)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("Phonenumber") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbPhNo" runat="server" Text='<%# Bind("Phonenumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Height="100px" Width="150px" />
                                            <ItemStyle Width="150px" />
                                        </asp:TemplateField>






                                        <asp:BoundField ItemStyle-Width="150px" DataField="Designation" HeaderText="Surveyor Designation" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                            <HeaderStyle Width="150" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="date_created" HeaderText="Survey Date" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                            <HeaderStyle Width="150" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Latitude" HeaderText="Latitude" ReadOnly="True" DataFormatString="{0:F6}">
                                            <HeaderStyle Width="150" />
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>

                                        <asp:BoundField DataField="Longitude" HeaderText="Longitude" ReadOnly="True" DataFormatString="{0:F6}">
                                            <HeaderStyle Width="150px" />

                                        </asp:BoundField>

                                        <asp:BoundField DataField="Altitude" HeaderText="Altitude" ReadOnly="True" DataFormatString="{0:F1}">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Accuracy" HeaderText="Accuracy" ReadOnly="True" DataFormatString="{0:F1}">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>


                                        <asp:BoundField DataField="StateId" HeaderText="State" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DivisionId" HeaderText="Forest Division" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="RangeId" HeaderText="Forest Range" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="BlockId" HeaderText="Forest Block" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>


                                        <asp:TemplateField HeaderText="Panchayat Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPanchayate" runat="server" Text='<%# Eval("Panchayat") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtPanchayat" onkeydown="return Search_Gridview(event)" runat="server" Text='<%# Eval("Panchayat") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="200%" />
                                        </asp:TemplateField>



                                        <asp:TemplateField HeaderText="Village">
                                            <EditItemTemplate>

                                                <asp:TextBox ID="txtVill" runat="server" Text='<%# Bind("Name_of_Village") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbVill" runat="server" Text='<%# Bind("Name_of_Village") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="House Number">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtHNo" runat="server" onkeydown="return Search_Gridview(event)" Text='<%# Bind("House_Number") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbHNo" runat="server" Text='<%# Bind("House_Number") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="Livestock_feed_Fodder" HeaderText="Do you get livestock feed/fodder under any Government scheme?" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>

                                        <%--   <asp:BoundField  DataField="Name_of_the_Scheme" HeaderText="Name of the Scheme" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <asp:TemplateField HeaderText="Name of the Scheme">
                                            <EditItemTemplate>

                                                <asp:TextBox ID="txtnameofscheme" runat="server" Text='<%# Bind("Name_of_the_Scheme") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbltxtnameofscheme" runat="server" Text='<%# Bind("Name_of_the_Scheme") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Quantity of fodder Provided (in Kgs)">
                                            <EditItemTemplate>

                                                <asp:TextBox ID="txtquantity1" runat="server" Text='<%# Bind("Quantity_of_fodder_provided") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblquantity1" runat="server" Text='<%# Bind("Quantity_of_fodder_provided") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>



                                        <%--    <asp:BoundField  DataField="Quantity_of_fodder_provided"  HeaderText="Quantity of fodder Provided (in Kgs)">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>--%>


                                        <asp:TemplateField HeaderText="Frequency (per month)">
                                            <EditItemTemplate>

                                                <asp:TextBox ID="txtfrequency1" runat="server" Text='<%# Bind("Frequency_per_month") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblfrequency1" runat="server" Text='<%# Bind("Frequency_per_month") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>


                                        <%--    <asp:BoundField  DataField="Frequency_per_month" HeaderText="Frequency (per month)">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <asp:BoundField DataField="Plantation" HeaderText="Do you get fodder seed under Govt. scheme for plantation in your farm?" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>


                                        <%--                                          <asp:BoundField  DataField="Plantation_Name_of_the_Scheme" HeaderText="Name of the Scheme" ReadOnly="true">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>--%>


                                        <asp:TemplateField HeaderText="Name of the Scheme">
                                            <EditItemTemplate>

                                                <asp:TextBox ID="txtPlantation_Name_of_the_Scheme" runat="server" Text='<%# Bind("Plantation_Name_of_the_Scheme") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblPlantation_Name_of_the_Scheme" runat="server" Text='<%# Bind("Plantation_Name_of_the_Scheme") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Quantity of fodder Provided (in Kgs)">
                                            <EditItemTemplate>

                                                <asp:TextBox ID="txtquantity2" runat="server" Text='<%# Bind("Quantity_of_fodder_so_obtained") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblquantity2" runat="server" Text='<%# Bind("Quantity_of_fodder_so_obtained") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Frequency (per month)">
                                            <EditItemTemplate>

                                                <asp:TextBox ID="txtfrequency2" runat="server" Text='<%# Bind("Plantation_Frequency_per_month") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblfrequency2" runat="server" Text='<%# Bind("Plantation_Frequency_per_month") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="Grazing_farm" HeaderText="If Grazing is being done in own farm/agri. Land (Outside Forest), then" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>

                                        <%--   <asp:BoundField  DataField="How_much_land_HHs" HeaderText="How much land is owned by the HHs (in local units)" ReadOnly="true">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>--%>


                                        <asp:TemplateField HeaderText="How much land is owned by the HHs (in local units)">
                                            <EditItemTemplate>

                                                <asp:TextBox ID="txtHow_much_land_HHs" runat="server" Text='<%# Bind("How_much_land_HHs") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblHow_much_land_HHs" runat="server" Text='<%# Bind("How_much_land_HHs") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>



                                        <asp:BoundField DataField="Whether_Fodder" HeaderText="Whether Fodder is being produced along with other crops in the farm owned by HHs" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="Whether_cattles" HeaderText="Whether cattles owned by HH are being sent for grazing in forest" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>

                                        <%-- <asp:BoundField  DataField="Reason_for_the_same_Record" HeaderText="If no, reason for the same is to be recorded" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <asp:TemplateField HeaderText="If no, reason for the same is to be recorded">
                                            <EditItemTemplate>

                                                <asp:TextBox ID="txtReason_for_the_same_Record" runat="server" Text='<%# Bind("Reason_for_the_same_Record") %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblReason_for_the_same_Record" runat="server" Text='<%# Bind("Reason_for_the_same_Record") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="Do_you_collect_fodder" HeaderText="Do you collect fodder from forest?" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="Period_code" HeaderText="Period Code" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="Big_Animals" HeaderText="Big Animals(fodder consuming)" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>


                                        <asp:TemplateField HeaderText="Number of Cows">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNCow" runat="server" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("no_of_cow") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbNCow" runat="server" Text='<%# Bind("no_of_cow") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Number of Bulls">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNBull" runat="server" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("no_of_bull") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbNBull" runat="server" Text='<%# Bind("no_of_bull") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Number of Buffalos">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNBuffalo" runat="server" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("no_of_buffalo") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbNBuffalo" runat="server" Text='<%# Bind("no_of_buffalo") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Number of Horses">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNHorses" runat="server" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("no_of_horse") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbNHorses" runat="server" Text='<%# Bind("no_of_horse") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Number of Camels">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtCamels" runat="server" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("no_of_camel") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbCamels" runat="server" Text='<%# Bind("no_of_camel") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Number of Mules">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtMule" runat="server" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("no_of_mule") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbMule" runat="server" Text='<%# Bind("no_of_mule") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Number of Donkeys">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDonkey" runat="server" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("no_of_donkey") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbDonkey" runat="server" Text='<%# Bind("no_of_donkey") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Number of Other Big Animals">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtOtherBigAnimal" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" runat="server" Text='<%# Bind("no_of_otherbiganimal") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbOtherBigAnimal" runat="server" Text='<%# Bind("no_of_otherbiganimal") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="total_big_animals" HeaderText="Number of Total Big Animals" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="Small_Animal" HeaderText="Small Animal(fodder consuming)" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>


                                        <asp:TemplateField HeaderText="Number of Goats">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNGoat" runat="server" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("no_of_goat") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbNGoat" runat="server" Text='<%# Bind("no_of_goat") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Number of sheep">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNSheep" runat="server" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("no_of_sheep") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbNSheep" runat="server" Text='<%# Bind("no_of_sheep") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Number of Other Small Animals">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNOSMA" runat="server" oninput="NumberCheck(this)" onkeydown="return Search_Gridview(event)" Text='<%# Bind("no_of_othersmallanimals") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbNOSMA" runat="server" Text='<%# Bind("no_of_othersmallanimals") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>


                                        <asp:BoundField DataField="Total_small_animals" HeaderText="Number of Total Small Animals" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="total_animals" HeaderText="Number of Total Animals" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Stall_feeding_practice_used_for_Animals" HeaderText="Stall feeding practice used for Animals in each quarter" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="How_much_percent_of_fodder" HeaderText="How much percent of fodder is obtained in each quarter" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="How_much_percent_of_grazing" HeaderText="How much percent of grazing is done in each quarter" ReadOnly="True">
                                            <HeaderStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Remarks (if any)">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtRemark" runat="server" onkeydown="return Search_Gridview(event)" Text='<%# Bind("Remarks") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbRemark" runat="server" Text='<%# Bind("Remarks") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
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

                                        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl='~/images/bin.png' ID="Button1" runat="server" ToolTip="Delete" CausesValidation="false" CommandArgument="<%# Container.DataItemIndex %>" CommandName="cmdDelete" OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="RFO Approval" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" CausesValidation="false" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" CommandName="cmdApprove" Text="Approve" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerStyle CssClass="custom-pager" />

                                </asp:GridView>


                            </div>



                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <ul class="pagination" id="pagingnation" visible="true" runat="server" style="margin-top: 6px; margin-left: 9px; color: #5cb85c">

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

    <%--    <script type="text/javascript">
        function Search_function(strKey) {

            var strData = strKey.value.toLowerCase().split(" ");

            var tblData = document.getElementById("<%=gvannnualfodder.ClientID %>");
            var rowData;
            var found = false;

            for (var i = 2; i < tblData.rows.length; i++) {
                rowData = tblData.rows[i].innerHTML;
                var styleDisplay = 'none';
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.toLowerCase().indexOf(strData[j]) >= 0) {
                        styleDisplay = '';
                        found = true;
                    } else {
                        styleDisplay = 'none';
                        break;
                    }
                }
                tblData.rows[i].style.display = styleDisplay;
            }


            var messageElement = document.getElementById('recordNotFoundMessage');
            if (messageElement) {
                messageElement.style.display = found ? 'none' : 'block';
            }
        }
    </script>--%>



    <script type="text/javascript">
        function Search_function(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");

            var tblData = document.getElementById("<%=gvannnualfodder.ClientID %>");
            var rowData;
            var found = false;

            for (var i = 1; i < tblData.rows.length - 1; i++) {
                rowData = tblData.rows[i].innerHTML.toLowerCase();
                var matchFound = true;
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.indexOf(strData[j]) === -1) {
                        matchFound = false;
                        break;
                    }
                }

                tblData.rows[i].style.display = matchFound ? '' : 'none';
                found = found || matchFound;
            }

            var messageElement = document.getElementById('recordNotFoundMessage');
            if (!messageElement) {
                messageElement = document.createElement('div');
                messageElement.id = 'recordNotFoundMessage';
                messageElement.innerHTML = 'Record not found.';
                messageElement.style.textAlign = 'center';
                messageElement.style.width = '100vw';                messageElement.style.marginTop = '50px';                messageElement.style.color = 'red';                //messageElement.style.paddingBottom = '18%';                //messageElement.style.overflowY = 'clip';
                tblData.parentElement.appendChild(messageElement);
            }

            messageElement.style.display = found ? 'none' : 'block';
        }


    </script>

    <%--  type="text/javascript">
        function Search_Gridview(event) {
            // Check if the key pressed is Enter (key code 13)
            if (event.keyCode === 13) {
                event.preventDefault(); // Prevent the default action of the Enter key
                return false;
            }
        }--%>







    <script type="text/javascript">
        function Search_Gridview(event) {
            // Check if the key pressed is Enter (key code 13)
            if (event.keyCode === 13) {
                event.preventDefault(); // Prevent the default action of the Enter key
                return false;
            }

        }
    </script>







    <script type="text/javascript">        function scrollToRow(rowId) {            var row = document.getElementById('<%= gvannnualfodder.ClientID %>_ctl' + rowId + '_row'); // Adjust this ID based on your GridView's client ID            if (row !== null) {                row.scrollIntoView();            }        } </script>
    <%--to restrict phone number to take 10 digits only--%>
    <script type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            if (evt.target.value.length >= 10) {
                return false;
            }
            return true;
        }
    </script>





</asp:Content>
