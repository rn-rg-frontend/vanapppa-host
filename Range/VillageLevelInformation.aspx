<%@ Page Title="" Language="C#" MasterPageFile="~/Range/Range.Master" AutoEventWireup="true" CodeBehind="VillageLevelInformation.aspx.cs" Inherits="vansystem.Range.VillageLevelInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


     <style>
        .select2-container-fixed {
            position: relative !important;
            /*z-index: 50;*/
        }

        /*table{
            margin-left:20px    ;
        }*/

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: 4.2rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            z-index: 1;
            white-space: nowrap;
            padding: 0.75rem;
            font-weight: bold;
            text-align: center;
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


        /* h3 {
            margin-left: 60px;
        }*/


        .sticky-header {
            background-color: forestgreen !important;
            color: white !important;
            position: sticky;
            top: 0%;
            z-index: 10;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
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
            /* max-height: calc(83vh - 100px);
            min-height: calc(83vh - 100px);*/
            max-height: calc(78vh - 100px);
            min-height: 65vh;
            padding-top: 0px !important;
        }

        /*.card-body {
            background-color: rgb(252, 252, 252);
            overflow: auto;
            margin-left: 2%;
            margin-bottom: 60px;
            width: 96%;
            max-height: calc(78vh - 100px);
        }*/

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

        .plot-tree {
            background-color: #fcfbfb;
        }

        @media screen and (max-width: 1917px) {

            .card-body {
                width: 100%;
                max-height: calc(81vh - 100px);
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
                max-height: calc(75vh - 100px);
                margin-right: -4% !important;
                margin-left: 1% !important;
                width: 100% !important;
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
                <a href="VillageLevelInformation.aspx.designer.cs">VillageLevelInformation.aspx.designer.cs</a> padding-left: 22px !important;
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
                transform: translateX(-50%);
                z-index: 999;
            }
        }

        @media screen and (max-width: 700px) {
            .pag {
                margin-left: 20%;
            }
        }

        .custom-pager {
            text-align: center;
            margin-top: 50px;
            position: fixed;
            bottom: 10px;
            left: 90%;
            margin-bottom: 0;
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
    </style>
    <style>
        .dropdown-menu {
            MAX-HEIGHT: 150PX;
            OVERFLOW-Y: AUTO;
        }

        #recordNotFoundMessage {
            text-align: center;
            margin-top: -3px;
        }

        body {
            font-family: "GillSans", sans-serif !important;
            font-size: 16px !important;
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



    </script>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container-fluid mt-6">
        <div style="margin-left: 0%; margin-top: 88px;">
            <div class="d-md-flex justify-content-between text-center">
                <div style="margin-left: 3% !important;">
                    <h3 style="margin-inline: auto; margin-left: 40px !important;"><b>Village Level Information</b></h3>

                </div>
                <div class="row d-sm-flex justify-content-center align-items-end text-center">

                    <div>
                         <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No records found.</asp:Label>
                    </div>

                    <div class="d-flex justify-content-center align-items-center pl-4">
                        Search:
                        <asp:TextBox ID="txtSearch" runat="server" Font-Size="20px" onkeydown="return Search_Gridview(event)" onkeyup="Search_function(this)" Style="background-color: #004990; color: white"></asp:TextBox>

                    </div>
                    <%--<asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" /><i class="fa-regular fa-file-excel"></i>--%>
                    <div class="pl-4" style="padding-top: 6px;">
                        <asp:Button ID="btnExport" runat="server" Style="height: 34px" Text=' Export to Excel' OnClick="btnExport_Click"></asp:Button>

                    </div>
                    <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top: 6px; padding-right:15px;">
                        Show
                        <div class="pl-2 pr-2">
                            <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" Style="background-color: #004990; color: white; height: 34px; width: 70px; border-radius: 3px; height: 30px;" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
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

            <%--<marquee>
                <div id="recordNotFoundMessage" style="display: none; color: red;">No Records Found.</div>
            </marquee>--%>

            <hr />
        </div>            
                <div class="card-body" id="cardBody" style="overflow-y: auto; margin-left: 3.5rem !important; width: 98% !important;">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="box-content" onkeydown="return Search_Gridview(event)">

                                <asp:GridView ID="gvVLI" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" DataKeyNames="id" GridLines="Horizontal" OnRowCancelingEdit="gvVLI_RowCancelingEdit" OnRowEditing="gvVLI_RowEditing" OnRowUpdating="gvVLI_RowUpdating" OnRowDataBound="gvVLI_RowDataBound" AllowPaging="true" PageSize="10" OnPageIndexChanging="gvVLI_PageIndexChanging" OnRowCommand="gvVLI_RowCommand" OnPreRender="gvVLI_PreRender">
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
                                        <asp:TemplateField HeaderText="Survey ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Surveyor Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyorName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--<EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("name").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtSurveyorName" runat="server" Text='<%# Eval("name") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gender" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>
                                                <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>
                                                <asp:TextBox ID="txtSurveyorName" runat="server" Text='<%# Eval("name") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Surveyor Phone No" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyorPhoneNo" runat="server" Text='<%# Eval("phonenumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("phonenumber").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtSurveyorPhoneNo" runat="server" Text='<%# Eval("phonenumber") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surveyor Designation" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldesignation" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Survey Date" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDate_created" runat="server" Text='<%# Eval("date_created") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Latitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" runat="server" Text='<%# Eval("Latitude","{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Longitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" runat="server" Text='<%# Eval("Longitude","{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Altitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAltitude" runat="server" Text='<%# Eval("Altitude","{0:F1}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Accuracy" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAccuracy" runat="server" Text='<%# Eval("Accuracy","{0:F1}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="State" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblStateName" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Forest Division" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDivisionName" runat="server" Text='<%# Eval("Division") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Forest Range" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRangeName" runat="server" Text='<%# Eval("Range") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Forest Block" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBlockName" runat="server" Text='<%# Eval("Block") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Village" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVillageName" runat="server" Text='<%# Eval("Village") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Village").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtSurveyorVillageName" runat="server" Text='<%# Eval("Village") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Name of Panchayat" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPanchayat" runat="server" Text='<%# Eval("Panchayat") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("Panchayat").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtPanchayat" runat="server" Text='<%# Eval("Panchayat") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>

                                        <%--  <asp:TemplateField HeaderText="Type of hamlet/village" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>
                                                <asp:Label ID="lblTypeofhamletvillage" runat="server" Text='<%# Eval("village_type") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlTypeofhamletvillage" runat="server">
                                                    <asp:ListItem Text="Select any one" Value="" />

                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText="Buffer/Stratum" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBuffer" runat="server" Text='<%# Eval("buffer") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Name of Tehsil/Town" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltehsil" runat="server" Text='<%# Eval("tehsil") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name of Revenue Block" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>
                                                <asp:Label ID="lblrevenue_block" runat="server" Text='<%# Eval("revenue_block") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Male" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmale" runat="server" Text='<%# Eval("male") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Female" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfemale" runat="server" Text='<%# Eval("female") %>'></asp:Label>
                                            </ItemTemplate>

                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Children (below 15 years of age)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblchildren" runat="server" Text='<%# Eval("children") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Total" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltotal" runat="server" Text='<%# Eval("total") %>'></asp:Label>
                                            </ItemTemplate>

                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Number of Households in BPL Category" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblbpl_category" runat="server" Text='<%# Eval("bpl_category") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Number of Households in APL Category	" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblapl_category" runat="server" Text='<%# Eval("apl_category") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("weightcarriedbywoman").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtSurveyorweightcarriedbywoman" runat="server" Text='<%# Eval("weightcarriedbywoman") %>' Width="140" oninput="DecimalCheck(this);"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />


                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Any additional households in new category" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbladditional_new_category" runat="server" Text='<%# Eval("additional_new_category") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--<EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("weightcarriedbychild").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtSurveyorweightcarriedbychild" runat="server" Text='<%# Eval("weightcarriedbychild") %>' Width="140" oninput="DecimalCheck(this);"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Total number of Households" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltotal_household" runat="server" Text='<%# Eval("total_household") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("total_household").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txttotal_household" runat="server" Text='<%# Eval("total_household") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>

                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Average household size" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblavg" runat="server" Text='<%# Eval("avg") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("avg").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtavg" runat="server" Text='<%# Eval("avg") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agriculture" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblagriculture" runat="server" Text='<%# Eval("agriculture") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("agriculture").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtagriculture" runat="server" Text='<%# Eval("agriculture") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Service" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblservice" runat="server" Text='<%# Eval("service") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("service").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtservice" runat="server" Text='<%# Eval("service") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Ex-servicemen/retired" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblex_servicemen" runat="server" Text='<%# Eval("ex_servicemen") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("ex_servicemen").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtex_servicemen" runat="server" Text='<%# Eval("ex_servicemen") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Wage labour" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwage_labour" runat="server" Text='<%# Eval("wage_labour") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("wage_labour").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtwage_labour" runat="server" Text='<%# Eval("wage_labour") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Business" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblbusiness" runat="server" Text='<%# Eval("business") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("business").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtbusiness" runat="server" Text='<%# Eval("business") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Any other (cb other primary occupation)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcb_other_primary_occupation" runat="server" Text='<%# Eval("cb_other_primary_occupation") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>
                                                <asp:DropDownList ID="ddlcb_other_primary_occupation" runat="server">
                                                    
                                                    <asp:ListItem Text="Select any one" Value="" />
                                                    <asp:ListItem Text="Yes" Value="Yes" />
                                                    <asp:ListItem Text="No" Value="No" />
                                                </asp:DropDownList>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Any other (et other primary occupation name)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblet_other_primary_occupation_name" runat="server" Text='<%# Eval("et_other_primary_occupation_name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("et_other_primary_occupation_name").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtet_other_primary_occupation_name" runat="server" Text='<%# Eval("et_other_primary_occupation_name") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Any other (et other primary occupation number)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblet_other_primary_occupation_number" runat="server" Text='<%# Eval("et_other_primary_occupation_number") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("et_other_primary_occupation_number").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtet_other_primary_occupation_number" runat="server" Text='<%# Eval("et_other_primary_occupation_number") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Area of village" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblvillage_area" runat="server" Text='<%# Eval("village_area") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("village_area").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtvillage_area" runat="server" Text='<%# Eval("village_area") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type of Land?(Agriculture (Irrigated))" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblagriculture_irritated" runat="server" Text='<%# Eval("agriculture_irritated") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("agriculture_irritated").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtagriculture_irritated" runat="server" Text='<%# Eval("agriculture_irritated") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type of Land?(Agriculture (Unirrigated))" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblagriculture_un_irritated" runat="server" Text='<%# Eval("agriculture_un_irritated") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("agriculture_un_irritated").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtagriculture_un_irritated" runat="server" Text='<%# Eval("agriculture_un_irritated") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type of Land?(Horticulture)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblhorticulture" runat="server" Text='<%# Eval("horticulture") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("horticulture").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txthorticulture" runat="server" Text='<%# Eval("horticulture") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type of Land?(Barren agriculture)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblbarren" runat="server" Text='<%# Eval("barren") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("barren").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtbarren" runat="server" Text='<%# Eval("barren") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type of Land?(Civil settlement)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcivil" runat="server" Text='<%# Eval("civil") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("civil").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtcivil" runat="server" Text='<%# Eval("civil") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type of Land?(Van Panchayat)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblvan" runat="server" Text='<%# Eval("van") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("van").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtvan" runat="server" Text='<%# Eval("van") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type of Land?(Forest land)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblforest_land" runat="server" Text='<%# Eval("forest_land") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("forest_land").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtforest_land" runat="server" Text='<%# Eval("forest_land") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type of Land?(Any other (cb other type of land))" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcb_other_type_of_land" runat="server" Text='<%# Eval("cb_other_type_of_land") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--<EditItemTemplate>
                                                <asp:DropDownList ID="ddlcb_other_type_of_land" runat="server">
                                                    <asp:ListItem Text="Select any one" Value="" />
                                                    <asp:ListItem Text="Yes" Value="Yes" />
                                                    <asp:ListItem Text="No" Value="No" />
                                                </asp:DropDownList>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type of Land?(Any other (et other type of land name))" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblet_other_type_of_land_name" runat="server" Text='<%# Eval("et_other_type_of_land_name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("et_other_type_of_land_name").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtet_other_type_of_land_name" runat="server" Text='<%# Eval("et_other_type_of_land_name") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type of Land?(Any other (et other type of land number))" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblet_other_type_of_land_number" runat="server" Text='<%# Eval("et_other_type_of_land_number") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("et_other_type_of_land_number").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtet_other_type_of_land_number" runat="server" Text='<%# Eval("et_other_type_of_land_number") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Landless" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblandless" runat="server" Text='<%# Eval("landless") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("landless").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtlandless" runat="server" Text='<%# Eval("landless") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Upto 0.5 ha/(25 nalis)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblupto_05" runat="server" Text='<%# Eval("upto_05") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("upto_05").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtupto_05" runat="server" Text='<%# Eval("upto_05") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="greater 5 ha-1ha/(26-50 nalis)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblgreater_5" runat="server" Text='<%# Eval("greater_5") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("greater_5").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtgreater_5" runat="server" Text='<%# Eval("greater_5") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="greater 1ha to 2ha/(51-100 nalis)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblgreater_1" runat="server" Text='<%# Eval("greater_1") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("greater_1").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtgreater_1" runat="server" Text='<%# Eval("greater_1") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="greater 2 ha (100 nalis)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblgreater_2" runat="server" Text='<%# Eval("greater_2") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("greater_2").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtgreater_2" runat="server" Text='<%# Eval("greater_2") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Individual Right (Number)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblindividual_number" runat="server" Text='<%# Eval("individual_number") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("individual_number").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtindividual_number" runat="server" Text='<%# Eval("individual_number") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Individual Right (Extent)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblindividual_extent" runat="server" Text='<%# Eval("individual_extent") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("individual_extent").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtindividual_extent" runat="server" Text='<%# Eval("individual_extent") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Community Rights (Number)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcommunity_number" runat="server" Text='<%# Eval("community_number") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("community_number").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtcommunity_number" runat="server" Text='<%# Eval("community_number") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Community Rights (Extent)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcommunity_extent" runat="server" Text='<%# Eval("community_extent") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("community_extent").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtcommunity_extent" runat="server" Text='<%# Eval("community_extent") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Development Rights (Number)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldev_number" runat="server" Text='<%# Eval("dev_number") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("dev_number").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtdev_number" runat="server" Text='<%# Eval("dev_number") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Development Rights (Extent)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldev_extent" runat="server" Text='<%# Eval("dev_extent") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("dev_extent").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtdev_extent" runat="server" Text='<%# Eval("dev_extent") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Grazing" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblgrazing" runat="server" Text='<%# Eval("grazing") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("grazing").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtgrazing" runat="server" Text='<%# Eval("grazing") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Lopping" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllooping" runat="server" Text='<%# Eval("looping") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("looping").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtlooping" runat="server" Text='<%# Eval("looping") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Grass Collection" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblgrass" runat="server" Text='<%# Eval("grass") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("grass").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtgrass" runat="server" Text='<%# Eval("grass") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Fuelwood" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfuel_wood" runat="server" Text='<%# Eval("fuel_wood") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("fuel_wood").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtfuel_wood" runat="server" Text='<%# Eval("fuel_wood") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Timber" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltimber" runat="server" Text='<%# Eval("timber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("timber").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txttimber" runat="server" Text='<%# Eval("timber") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="NTFP" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblntfp" runat="server" Text='<%# Eval("ntfp") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("ntfp").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtntfp" runat="server" Text='<%# Eval("ntfp") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Boulders and sand" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblboulders" runat="server" Text='<%# Eval("boulders") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("boulders").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtboulders" runat="server" Text='<%# Eval("boulders") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other rights over forest resources(cb Other Rights)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcbOtherRights" runat="server" Text='<%# Eval("cbOtherRights") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--  <EditItemTemplate>
                                                <asp:DropDownList ID="ddlcbOtherRights" runat="server">
                                                    <asp:ListItem Text="Select any one" Value="" />
                                                    <asp:ListItem Text="Yes" Value="Yes" />
                                                    <asp:ListItem Text="No" Value="No" />
                                                </asp:DropDownList>
                                            </EditItemTemplate>--%>

                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other rights over forest resources(et Other Rights Name)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbletOtherRightsName" runat="server" Text='<%# Eval("etOtherRightsName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("etOtherRightsName").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtetOtherRightsName" runat="server" Text='<%# Eval("etOtherRightsName") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Other rights over forest resources(et Other Rights Number)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbletOtherRightsNumber" runat="server" Text='<%# Eval("etOtherRightsNumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("etOtherRightsNumber").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtetOtherRightsNumber" runat="server" Text='<%# Eval("etOtherRightsNumber") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Others (not specified in above categories(cb Other Not Specified))" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcbOtherNotSpecified" runat="server" Text='<%# Eval("cbOtherNotSpecified") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%--<EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("cbOtherNotSpecified").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtcbOtherNotSpecified" runat="server" Text='<%# Eval("cbOtherNotSpecified") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Others (not specified in above categories(et Other Not Specified Name))" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbletOtherNotSpecifiedName" runat="server" Text='<%# Eval("etOtherNotSpecifiedName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("etOtherNotSpecifiedName").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtetOtherNotSpecifiedName" runat="server" Text='<%# Eval("etOtherNotSpecifiedName") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Others (not specified in above categories(et Other Not Specified Number))" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbletOtherNotSpecifiedNumber" runat="server" Text='<%# Eval("etOtherNotSpecifiedNumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("etOtherNotSpecifiedNumber").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtetOtherNotSpecifiedNumber" runat="server" Text='<%# Eval("etOtherNotSpecifiedNumber") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Tap water" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltap_water" runat="server" Text='<%# Eval("tap_water") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("tap_water").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txttap_water" runat="server" Text='<%# Eval("tap_water") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Hand pump" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblhand_pump" runat="server" Text='<%# Eval("hand_pump") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("hand_pump").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txthand_pump" runat="server" Text='<%# Eval("hand_pump") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Well" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwell" runat="server" Text='<%# Eval("well") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("well").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtwell" runat="server" Text='<%# Eval("well") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Spring/Pond/Tank" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblspring" runat="server" Text='<%# Eval("spring") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("spring").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtspring" runat="server" Text='<%# Eval("spring") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Other (specify(cb Other Drinking Source))" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcbOtherDrinkingSource" runat="server" Text='<%# Eval("cbOtherDrinkingSource") %>'></asp:Label>
                                            </ItemTemplate>
                                            <%-- <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("cbOtherDrinkingSource").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtcbOtherDrinkingSource" runat="server" Text='<%# Eval("cbOtherDrinkingSource") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Other (specify(et Other Drinking Source Name))" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbletOtherDrinkingSourceName" runat="server" Text='<%# Eval("etOtherDrinkingSourceName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("etOtherDrinkingSourceName").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtetOtherDrinkingSourceName" runat="server" Text='<%# Eval("etOtherDrinkingSourceName") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other (specify(et Other Drinking Source Number))" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbletOtherDrinkingSourceNumber" runat="server" Text='<%# Eval("etOtherDrinkingSourceNumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("etOtherDrinkingSourceNumber").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtetOtherDrinkingSourceNumber" runat="server" Text='<%# Eval("etOtherDrinkingSourceNumber") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="River/stream/canal" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblriver" runat="server" Text='<%# Eval("river") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("river").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtriver" runat="server" Text='<%# Eval("river") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Tank/Pond" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltank_pond" runat="server" Text='<%# Eval("tank_pond") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("tank_pond").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txttank_pond" runat="server" Text='<%# Eval("tank_pond") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Water harvesting structure (Lift Irrigation, Check Dams and others)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwater_harvesting" runat="server" Text='<%# Eval("water_harvesting") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("water_harvesting").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtwater_harvesting" runat="server" Text='<%# Eval("water_harvesting") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Pump set" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblpump_set" runat="server" Text='<%# Eval("pump_set") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("pump_set").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtpump_set" runat="server" Text='<%# Eval("pump_set") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Any other specify(cb Other Irrigation)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcbOtherIrrigation" runat="server" Text='<%# Eval("cbOtherIrrigation") %>'></asp:Label>
                                            </ItemTemplate>


                                            <%--  <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("cbOtherIrrigation").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtcbOtherIrrigation" runat="server" Text='<%# Eval("cbOtherIrrigation") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Any other specify(et Other Irrigation Name)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbletOtherIrrigationName" runat="server" Text='<%# Eval("etOtherIrrigationName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("etOtherIrrigationName").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtetOtherIrrigationName" runat="server" Text='<%# Eval("etOtherIrrigationName") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Any other specify(et Other Irrigation Number)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbletOtherIrrigationNumber" runat="server" Text='<%# Eval("etOtherIrrigationNumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("etOtherIrrigationNumber").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtetOtherIrrigationNumber" runat="server" Text='<%# Eval("etOtherIrrigationNumber") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name of water Stream/ River" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblname_of_Water" runat="server" Text='<%# Eval("name_of_Water") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("name_of_Water").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtname_of_Water" runat="server" Text='<%# Eval("name_of_Water") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Duration of water available Flow" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblstreams_duration" runat="server" Text='<%# Eval("streams_duration") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("streams_duration").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtstreams_duration" runat="server" Text='<%# Eval("streams_duration") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Past Trend ( 5-10 yrs) (increased/ decreased/ unchanged)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblstreams_past_trends" runat="server" Text='<%# Eval("streams_past_trends") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("streams_past_trends").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="SplCharCheck(this)" ID="txtstreams_past_trends" runat="server" Text='<%# Eval("streams_past_trends") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Distance from village (in Km)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblstreams_distance" runat="server" Text='<%# Eval("streams_distance") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("streams_distance").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtstreams_distance" runat="server" Text='<%# Eval("streams_distance") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Extent of pond (ha)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblpond_extent" runat="server" Text='<%# Eval("pond_extent") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("pond_extent").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtpond_extent" runat="server" Text='<%# Eval("pond_extent") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Duration of water available Flow (months)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblponds_duration" runat="server" Text='<%# Eval("ponds_duration") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("ponds_duration").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtponds_duration" runat="server" Text='<%# Eval("ponds_duration") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Depth of water (m)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblponds_water_depth" runat="server" Text='<%# Eval("ponds_water_depth") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("ponds_water_depth").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtponds_water_depth" runat="server" Text='<%# Eval("ponds_water_depth") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Past trend (5-10 years) (increased/ decreased/ unchanged)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblponds_past_trends" runat="server" Text='<%# Eval("ponds_past_trends") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("ponds_past_trends").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtponds_past_trends" runat="server" Text='<%# Eval("ponds_past_trends") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Distance from village(in Km)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblponds_distance" runat="server" Text='<%# Eval("ponds_distance") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("ponds_distance").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtponds_distance" runat="server" Text='<%# Eval("ponds_distance") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Water level (m)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwater_level" runat="server" Text='<%# Eval("water_level") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("water_level").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtwater_level" runat="server" Text='<%# Eval("water_level") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Duration of water available Flow (months)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwells_duration" runat="server" Text='<%# Eval("wells_duration") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("wells_duration").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtwells_duration" runat="server" Text='<%# Eval("wells_duration") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>

                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Depth of well (m)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwells_water_depth" runat="server" Text='<%# Eval("wells_water_depth") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("wells_water_depth").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtwells_water_depth" runat="server" Text='<%# Eval("wells_water_depth") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Past trend (5-10 years) (increased/ decreased/ unchanged)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwells_past_trends" runat="server" Text='<%# Eval("wells_past_trends") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("wells_past_trends").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtwells_past_trends" runat="server" Text='<%# Eval("wells_past_trends") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Distance from village (in Km)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwells_distance" runat="server" Text='<%# Eval("wells_distance") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("wells_distance").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtwells_distance" runat="server" Text='<%# Eval("wells_distance") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Employment (in % of village HHs)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblemployment" runat="server" Text='<%# Eval("employment") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("employment").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtemployment" runat="server" Text='<%# Eval("employment") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Ecotourism (in % of village HHs)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblecotourism" runat="server" Text='<%# Eval("ecotourism") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("ecotourism").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtecotourism" runat="server" Text='<%# Eval("ecotourism") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Extraction & selling of fuelwood (in % of village HHs)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblextraction" runat="server" Text='<%# Eval("extraction") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("extraction").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtextraction" runat="server" Text='<%# Eval("extraction") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other NTFP (Extraction, processing & selling) (in % of village HHs)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblother_ntfp" runat="server" Text='<%# Eval("other_ntfp") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("other_ntfp").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtother_ntfp" runat="server" Text='<%# Eval("other_ntfp") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name of Informant" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblinformant_name" runat="server" Text='<%# Eval("informant_name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("informant_name").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtinformant_name" runat="server" Text='<%# Eval("business") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Type of Informant" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblinformant_type" runat="server" Text='<%# Eval("informant_type") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("informant_type").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtinformant_type" runat="server" Text='<%# Eval("business") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Type of Informant(et OtherInformantType)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbletOtherInformantType" runat="server" Text='<%# Eval("etOtherInformantType") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("etOtherInformantType").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtetOtherInformantType" runat="server" Text='<%# Eval("etOtherInformantType") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Gender" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblinformant_gender" runat="server" Text='<%# Eval("informant_gender") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("informant_gender").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="SplCharCheck(this)" ID="txtinformant_gender" runat="server" Text='<%# Eval("informant_gender") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Age" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblage" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("age").ToString()) %>' onkeydown="return Search_Gridview(event)" ID="txtage" runat="server" Text='<%# Eval("age") %>' Width="140" oninput="return validateAge(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Occupation" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbloccupation" runat="server" Text='<%# Eval("occupation") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("occupation").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="SplCharCheck(this)" ID="txtoccupation" runat="server" Text='<%# Eval("occupation") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Education" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbleducation" runat="server" Text='<%# Eval("education") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("education").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="SplCharCheck(this)" ID="txteducation" runat="server" Text='<%# Eval("education") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remarks" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
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
                                                <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-primary" Text="Edit" CommandName="Edit" />

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
                                        

                                        <%--<asp:CommandField  ShowEditButton="True" />--%>
                                    </Columns>
                                    <PagerStyle CssClass="custom-pager" />
                                </asp:GridView>


                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:PostBackTrigger ControlID="btnExport" />
                        </Triggers>
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




    <%--<script>
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
    </script>--%>

    <script type="text/javascript">        function Search_function(strKey) {            var strData = strKey.value.toLowerCase().split(" ");            var tblData = document.getElementById("<%=gvVLI.ClientID %>");            var rowData;            var found = false;            for (var i = 2; i < tblData.rows.length; i++) {                rowData = tblData.rows[i].innerHTML;                var styleDisplay = 'none';                for (var j = 0; j < strData.length; j++) {                    if (rowData.toLowerCase().indexOf(strData[j]) >= 0) {                        styleDisplay = '';                        found = true;                    } else {                        styleDisplay = 'none';                        break;                    }                }                tblData.rows[i].style.display = styleDisplay;            }            var messageElement = document.getElementById('recordNotFoundMessage');            if (!messageElement) {                messageElement = document.createElement('div');                messageElement.id = 'recordNotFoundMessage';                messageElement.innerHTML = 'Record not found.';                messageElement.style.textAlign = 'center';                messageElement.style.marginTop = '19px';                messageElement.style.color = 'red';                messageElement.style.paddingBottom = '18%';                messageElement.style.overflowY = 'clip';                tblData.parentElement.appendChild(messageElement);            }            messageElement.style.display = found ? 'none' : 'block';        }        window.onload = function () {            document.getElementById("<%= txtSearch.ClientID %>").value = "";        };
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
        function scrollToRow(rowId) {            var row = document.getElementById('<%= gvVLI.ClientID %>_ctl' + rowId + '_row'); // Adjust this ID based on your GridView's client ID            if (row !== null) {                row.scrollIntoView();            }        }        function validateAge(txtBox) {
            var age = txtBox.value;
            if (!isNaN(age) && age >= 0 && age <= 120) {
                return true;
            } else {
                alert("Please enter a valid age between 0 and 120.");
                txtBox.value = "";
                return false;
            }
        }        function validateAge(txtBox) {            var age = txtBox.value;            if (!isNaN(age) && age !== "0" && age >= 1 && age <= 99) {                return true;            } else {                alert("Please enter a valid age between 1 and 99.");                txtBox.value = "";                return false;            }        } </script>
    <%--<script type="text/javascript">
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
    </script>--%>

      

</asp:Content>


