<%@ Page Title="" Language="C#" MasterPageFile="~/Range/Range.Master" AutoEventWireup="true" CodeBehind="Household.aspx.cs" Inherits="vansystem.Range.Household" %>

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

        table {
            width: auto;
            border-collapse: collapse;
            /*margin: 50px auto;*/
            /*margin-left: 1px;*/
            margin-top: -1.3%;
        }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: 2.40rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            z-index: 10;
            font-weight: bold;
            text-align: center;
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

        .sticky-header {
           background-color: forestgreen !important;
            color: white !important;
            position: sticky;
            top: -1.3rem;
            z-index: 10;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
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
        /*.card-body {
            background-color: rgb(252, 252, 252);
            overflow: auto;*/
            /*margin-left: 2%;*/
            /*margin-bottom: 60px;
            width: 96%;
            max-height: calc(83vh - 100px);
            margin-top: -1%;
        }*/

        .card-body {
            background-color: rgb(252, 252, 252);
            overflow: auto;
            margin-left: 2%;
            margin-bottom: 60px;
            width: 96%;
            max-height: calc(84vh - 100px);
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


        .plot-tree {
            background-color: #fcfbfb;
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

        @media screen and (max-width: 1537px) {

            .card-body {
                width: 100%;
                max-height: calc(79vh - 100px);
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
                left: 88%;
                transform: translateX(-50%);
                z-index: 999;
            }

            /*.box-content {
                padding-left: 22px !important;
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

        /*.custom-pager {
            text-align: center;
            margin-top: 50px;
            position: fixed;
            bottom: -49px;
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

        .dropdown-menu {
            MAX-HEIGHT: 150PX;
            OVERFLOW-Y: AUTO;
        }

       /* .select2-container-fixed {
            position: relative !important;
            z-index: 50;
        }*/

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

        function YearCheck(input) {
            let value = input.value;

            // Keep only digits and limit to 4 digits
            let year = value.replace(/[^0-9]/g, "").substring(0, 4);

            input.value = year;
        }






    </script>






</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div>
        <div class="container-fluid mt-6">
            <div style="margin-left: 0%; margin-top: 102px;">
                <div class="d-md-flex justify-content-between text-center">
                    <div style="margin-left: 3% !important;">
                        <h3 style="margin-inline: auto; margin-left: 40px !important;"><b>Household Information</b></h3>
                    </div>
                    <div class="row d-sm-flex justify-content-center align-items-end text-center">

                        <div>
                            <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No records found.</asp:Label>
                        </div>
                        <div class="d-flex justify-content-center align-items-center pl-4">
                            Search:       
                            <asp:TextBox ID="txtSearch" runat="server" Font-Size="20px" onkeydown="return Search_Gridview(event); adjustGridViewPosition();" onkeyup="Search_function(this);  adjustGridViewPosition();" Style="background-color: #004990; color: white"></asp:TextBox>
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
                        <hr />
                    </div>
                </div>

               <%-- <marquee>
                    <div id="recordNotFoundMessage" style="display: none; color: red;">No Records Found.</div>
                </marquee>--%>
                <hr />

            </div>

            <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 2%; width: 99%;">


                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>





                        <div class="box-content" onkeydown="return Search_Gridview(event)">
                            <asp:GridView ID="gvHousehold" DataKeyNames="id" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="gvHousehold_PageIndexChanging" OnRowEditing="gvHousehold_RowEditing" OnRowUpdating="gvHousehold_RowUpdating" OnPreRender="gvHousehold_PreRender" OnRowCancelingEdit="gvHousehold_RowCancelingEdit" AllowPaging="True" Style="width: 100%" ShowHeaderWhenEmpty="True" OnRowCommand="gvHousehold_RowCommand" OnRowDataBound="gvHousehold_RowDataBound">


                                <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                <Columns>
                                    <asp:TemplateField HeaderText="S.No" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Survey ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSurveyID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Surveyor Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSurveyorName" runat="server" Text='<%# Eval("surveyor") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Gender" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Surveyor Phone No" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblSurveyorPhoneNo" runat="server" Text='<%# Eval("phonenumber") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Surveyor Designation" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbldesignation" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Survey Date" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDate_created" runat="server" Text='<%# Eval("Date_created") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="State" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblState" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Forest Division" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDivision" runat="server" Text='<%# Eval("division") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Forest Range" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRange" runat="server" Text='<%# Eval("range") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Forest Block" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblBlock" runat="server" Text='<%# Eval("block") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Name of the Respodent" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblrespodent" runat="server" Text='<%# Eval("respodent") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtrespodent" runat="server" Text='<%# Eval("respodent") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("respodent").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Village Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblVillage" runat="server" Text='<%# Eval("village") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtVillageName" runat="server" Text='<%# Eval("village") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("village").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="IV unit and UFS Block No" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblBlockNo" runat="server" Text='<%# Eval("ufs_block_no") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtufs_block_no" runat="server" Text='<%# Eval("ufs_block_no") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("ufs_block_no").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Name of Panchayat" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblpanchayat" runat="server" Text='<%# Eval("panchayat") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPanchayat" runat="server" Text='<%# Eval("panchayat") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("panchayat").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Household No." HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblHouseNo" runat="server" Text='<%# Eval("house_no") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtHouseNo" runat="server" Text='<%# Eval("house_no") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("house_no").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Latitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblLatitude" runat="server" Text='<%# Bind("latitude", "{0:F6}") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Longitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblLongitude" runat="server" Text='<%# Bind("longitude", "{0:F6}") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Altitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAltitude" runat="server" Text='<%# Bind("altitude", "{0:F2}") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Accuracy" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAccuracy" runat="server" Text='<%# Bind("accuracy", "{0:F2}") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>



                                    <asp:TemplateField HeaderText="Relation with the head of family" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRelation" runat="server" Text='<%# Eval("relationtohead") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%--   <EditItemTemplate>
                                                <asp:DropDownList ID="ddlRelation" runat="server">
                                                </asp:DropDownList>
                                            </EditItemTemplate>--%>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Name of the Head of the Household" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblnameofhead" runat="server" Text='<%# Eval("nameofhead") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtnameofhead" runat="server" Text='<%# Eval("nameofhead") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("nameofhead").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Number of Males in Family" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblno_males" runat="server" Text='<%# Eval("no_males") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtno_males" runat="server" Text='<%# Eval("no_males") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("no_males").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="NumberCheckAndCalculate(this)" ClientIDMode="Static"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Number of Females in Family" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblno_female" runat="server" Text='<%# Eval("no_female") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtno_female" runat="server" Text='<%# Eval("no_female") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("no_female").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="NumberCheckAndCalculate(this)" ClientIDMode="Static"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Number of Children in Family" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblno_child" runat="server" Text='<%# Eval("no_child") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtno_child" runat="server" Text='<%# Eval("no_child") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("no_child").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="NumberCheckAndCalculate(this)" ClientIDMode="Static"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Total Number of Persons Living in the Household" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblfamilymembers" runat="server" Text='<%# Eval("total_familymembers") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtfamilymembers" runat="server" Text='<%# Eval("total_familymembers") %>' Width="140" Enabled="false" onkeydown="return Search_Gridview(event)" onchange="calculateTotalFamilyMembers()" ClientIDMode="Static"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Type of Building Actually Visited" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltypeofhousing" runat="server" Text='<%# Eval("typeofbuilding") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%-- <EditItemTemplate>
                                                <asp:DropDownList ID="ddltypeofbuilding" runat="server">
                                                </asp:DropDownList>
                                            </EditItemTemplate>--%>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Ration Card" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblrationcard" runat="server" Text='<%# Eval("rationcard") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%--  <EditItemTemplate>
                                                <asp:DropDownList ID="ddlrationcard" runat="server">
                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>--%>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status of Household" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltypeof_card" runat="server" Text='<%# Eval("typeof_card") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%--<EditItemTemplate>
                                                <asp:DropDownList ID="ddltypeof_card" runat="server">
                                                </asp:DropDownList>
                                            </EditItemTemplate>--%>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="NREGS Card" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblnregs" runat="server" Text='<%# Eval("nregs") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%-- <EditItemTemplate>
                                                <asp:DropDownList ID="ddlnregs" runat="server">
                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>--%>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Do You have Gas Connection in Use" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblgas_connection" runat="server" Text='<%# Eval("gas_connection") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Highest Education Level in HHs" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbleducation_level" runat="server" Text='<%# Eval("education_level") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Social Group Code" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblsocial_group" runat="server" Text='<%# Eval("social_group") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Means of Livelihood Code of Household" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblnumberofsurviving" runat="server" Text='<%# Eval("livehood_code") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Size of Land Holding (in ha)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblsize_land" runat="server" Text='<%# Eval("size_land") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtsize_land" runat="server" Text='<%# Eval("size_land") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("respodent").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="NumberCheck(this)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Ownership of the Household" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblownership_hh" runat="server" Text='<%# Eval("ownership_hh") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Type of Land" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltype_land" runat="server" Text='<%# Eval("type_land") %>'></asp:Label>
                                        </ItemTemplate>

                                    </asp:TemplateField>



                                    <asp:TemplateField HeaderText="If Irrigated,Source of Irrigation" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblsource_irrigate" runat="server" Text='<%# Eval("source_irrigate") %>'></asp:Label>
                                        </ItemTemplate>

                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Monthly Income" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblmonthly_income" runat="server" Text='<%# Eval("monthly_income") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtmonthly_income" runat="server" Text='<%# Eval("monthly_income") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("monthly_income").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="NumberCheck(this)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Women spend time in the collection of" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblwomen_spend_time_in_collection_of" runat="server" Text='<%# Eval("women_spend_time_in_collection_of") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%--<EditItemTemplate>
                                                <asp:ListBox ID="lstwomen_spend_time_in_collection_of" runat="server" SelectionMode="Multiple">
                                                    <asp:ListItem Text="Fuelwood" Value="Fuelwood" />
                                                    <asp:ListItem Text="Fodder" Value="Fodder" />
                                                    <asp:ListItem Text="Water" Value="Water" />
                                                    <asp:ListItem Text="Grazing" Value="Grazing" />
                                                </asp:ListBox>
                                            </EditItemTemplate>--%>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Time spend in hours" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblwomen_spend_time_in_collection" runat="server" Text='<%# Eval("women_spend_time_in_collection") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%-- <EditItemTemplate>
                                                <asp:TextBox ID="txtwomen_spend_time_in_collection" runat="server" Text='<%# Eval("women_spend_time_in_collection") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("hardwork_be_reduced_in_collection").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Distance Travelled to collect resources" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblwomen_distance_travel_for_collection" runat="server" Text='<%# Eval("women_distance_travel_for_collection") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%--<EditItemTemplate>
                                                <asp:TextBox ID="txtwomen_distance_travel_for_collection" runat="server" Text='<%# Eval("women_distance_travel_for_collection") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("women_distance_travel_for_collection").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Laborious work or Hard work be reduced" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblhardwork_be_reduced_in_collection" runat="server" Text='<%# Eval("hardwork_be_reduced_in_collection") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txthardwork_be_reduced_in_collection" runat="server" Text='<%# Eval("hardwork_be_reduced_in_collection") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("hardwork_be_reduced_in_collection").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Is the Forest department consulting communities well before on the Enclosure/Fencing of areas for plantation(s)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblforest_department_consulting_community" runat="server" Text='<%# Eval("forest_department_consulting_community") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtforest_department_consulting_community" runat="server" Text='<%# Eval("forest_department_consulting_community") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("forest_department_consulting_community").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Have you faced human-wildlife conflict-related problems in the last years" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblconflictrelatedproblems" runat="server" Text='<%# Eval("conflictrelatedproblems") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <%--  <asp:TemplateField HeaderText="Where do you collect" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblWhere_collect" runat="server" Text='<%# Eval("Where_collect") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                    <%--------------------------------------CROP--------------------------------------------%>


                                    <%--     <asp:TemplateField HeaderText="Crop Damage Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcropdamage_number" runat="server" Text='<%# Eval("cropdamage_number") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                    <asp:TemplateField HeaderText="Name of crop" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltypeofcrop" runat="server" Text='<%# Eval("typeofcrop") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txttypeofcrop" runat="server" Text='<%# Eval("typeofcrop") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("typeofcrop").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Type of Wild Animal" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltypeofwildanimalcrop" runat="server" Text='<%# Eval("typeofwildanimalscrop") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txttypeofwildanimalscrop" runat="server" Text='<%# Eval("typeofwildanimalscrop") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("typeofwildanimalscrop").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Number of Wild Animals Involved" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblnumberofwildanimalsinvolvedcrop" runat="server" Text='<%# Eval("numberofwildanimalsinvolvedcrop") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtnumberofwildanimalsinvolvedcrop" runat="server" Text='<%# Eval("numberofwildanimalsinvolvedcrop") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("numberofwildanimalsinvolvedcrop").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="NumberCheck(this)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Area in bigha" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblarea" runat="server" Text='<%# Eval("area") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtarea" runat="server" Text='<%# Eval("area") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("area").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="DecimalCheck(this)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Damaged amount in kg" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblamountofdamaged" runat="server" Text='<%# Eval("amountofdamaged") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtamountofdamaged" runat="server" Text='<%# Eval("amountofdamaged") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("amountofdamaged").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="NumberCheck(this)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Time of Conflict" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltimecrop" runat="server" Text='<%# Eval("timecrop") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Months of Damage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblmonthsofDamagecrop" runat="server" Text='<%# Eval("monthsofDamagecrop") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Crop Damage Year" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblcropDamageYear" runat="server" Text='<%# Eval("cropDamageYear") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>









                                    <%--------------------------------------livestock damage--------------------------------------------%>

                                    <%--<asp:TemplateField HeaderText="Livestock Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllivestocknumber" runat="server" Text='<%# Eval("livestock_number") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
                                    <asp:TemplateField HeaderText="Type of Livestock" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltypeoflivestock" runat="server" Text='<%# Eval("typeoflivestock") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%-- <EditItemTemplate>
                                                <asp:TextBox ID="txttypeoflivestock" runat="server" Text='<%# Eval("typeoflivestock") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("typeoflivestock").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Type of Wild Animal" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltypeofwildanimallivestock" runat="server" Text='<%# Eval("typeofwildanimallivestock") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txttypeofwildanimallivestock" runat="server" Text='<%# Eval("typeofwildanimallivestock") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("typeofwildanimallivestock").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Number of Livestock" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblnumberoflivestock" runat="server" Text='<%# Eval("numberoflivestock") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtnumberoflivestock" runat="server" Text='<%# Eval("numberoflivestock") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("numberoflivestock").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="NumberCheck(this)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Number of WildAnimals Involved" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblnumberofWildAnimalsInvolvedlivestock" runat="server" Text='<%# Eval("numberofWildAnimalsInvolvedlivestok") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtnumberofWildAnimalsInvolvedlivestok" runat="server" Text='<%# Eval("numberofWildAnimalsInvolvedlivestok") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("numberofWildAnimalsInvolvedlivestok").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="NumberCheck(this)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Time of Conflict" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltime_of_livestock" runat="server" Text='<%# Eval("time_of_livestock") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Months of Damage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblmonthsofDamagelivestock" runat="server" Text='<%# Eval("monthsofDamagelivestock") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Year of Conflict" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbllivestockDamageYear" runat="server" Text='<%# Eval("livestockDamageYear") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <%--------------------------------------Property--------------------------------------------%>

                                    <%-- <asp:TemplateField HeaderText="Property Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblproperty_number" runat="server" Text='<%# Eval("property_number") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    --%>
                                    <asp:TemplateField HeaderText="Type of Property" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltypeofproperty" runat="server" Text='<%# Eval("typeofproperty") %>'></asp:Label>
                                        </ItemTemplate>
                                        <%--<EditItemTemplate>
                                                <asp:TextBox ID="txttypeofproperty" runat="server" Text='<%# Eval("typeofproperty") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("typeofproperty").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>--%>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Type of wild animal" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltypeofwildanimalsproperty" runat="server" Text='<%# Eval("typeofwildanimalsproperty") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txttypeofwildanimalsproperty" runat="server" Text='<%# Eval("typeofwildanimalsproperty") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("typeofwildanimalsproperty").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Number of WildAnimals Involved" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblnumberofWildAnimalsInvolvedproperty" runat="server" Text='<%# Eval("numberofWildAnimalsInvolvedproperty") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtnumberofWildAnimalsInvolvedproperty" runat="server" Text='<%# Eval("numberofWildAnimalsInvolvedproperty") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("numberofWildAnimalsInvolvedproperty").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="NumberCheck(this)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Damaged amount in rupees" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblamountofdamageproperty" runat="server" Text='<%# Eval("amountofdamage") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtamountofdamage" runat="server" Text='<%# Eval("amountofdamage") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("amountofdamage").ToString()) %>' onkeydown="return Search_Gridview(event)" oninput="NumberCheck(this)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Time of Conflict" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltimeproperty" runat="server" Text='<%# Eval("timeproperty") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Months of Damage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblmonthsofDamageproperty" runat="server" Text='<%# Eval("monthsofDamageproperty") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Damage Year" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDamageYear" runat="server" Text='<%# Eval("DamageYear") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <%--------------------------------------Human--------------------------------------------%>

                                    <%--                                        <asp:TemplateField HeaderText="Number of wild animals involved" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblhuman_wildlife_number" runat="server" Text='<%# Eval("human_wildlife_number") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>

                                    <asp:TemplateField HeaderText="Site of the incident" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblsiteoftheincident" runat="server" Text='<%# Eval("siteoftheincident") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Injury or Death" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblinjuryordeath" runat="server" Text='<%# Eval("injuryordeath") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Activity during which incident took place" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblactivityduringincident" runat="server" Text='<%# Eval("activityduringincident") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Type of wild animal" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltypeofwildanimals" runat="server" Text='<%# Eval("typeofwildanimals") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txttypeofwildanimals" runat="server" Text='<%# Eval("typeofwildanimals") %>' Width="140" Enabled='<%# !string.IsNullOrEmpty(Eval("typeofwildanimals").ToString()) %>' onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Time of Conflict" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltimehuman" runat="server" Text='<%# Eval("timehuman") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>



                                    <asp:TemplateField HeaderText="Month of Damage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblmonth" runat="server" Text='<%# Eval("month") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Year of Conflict" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Label ID="lblyear" runat="server" Text='<%# Eval("year") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>



                                    <asp:TemplateField HeaderText="Edit" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="edit" runat="server" />
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

    <script type="text/javascript">        function Search_function(strKey) {            var strData = strKey.value.toLowerCase().split(" ");            var tblData = document.getElementById("<%=gvHousehold.ClientID %>");            var rowData;            var found = false;            for (var i = 2; i < tblData.rows.length; i++) {                rowData = tblData.rows[i].innerHTML;                var styleDisplay = 'none';                for (var j = 0; j < strData.length; j++) {                    if (rowData.toLowerCase().indexOf(strData[j]) >= 0) {                        styleDisplay = '';                        found = true;                    } else {                        styleDisplay = 'none';                        break;                    }                }                tblData.rows[i].style.display = styleDisplay;            }            var messageElement = document.getElementById('recordNotFoundMessage');            if (!messageElement) {                messageElement = document.createElement('div');                messageElement.id = 'recordNotFoundMessage';                messageElement.innerHTML = 'Record not found.';                messageElement.style.textAlign = 'center';                messageElement.style.width = '100vw';                messageElement.style.marginTop = '50px';                messageElement.style.color = 'red';                //messageElement.style.paddingBottom = '18%';                //messageElement.style.overflowY = 'clip';                tblData.parentElement.appendChild(messageElement);            }            messageElement.style.display = found ? 'none' : 'block';        }        window.onload = function () {            document.getElementById("<%= txtSearch.ClientID %>").value = "";        };
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
        function scrollToRow(rowId) {            var row = document.getElementById('<%= gvHousehold.ClientID %>_ctl' + rowId + '_row'); // Adjust this ID based on your GridView's client ID            if (row !== null) {                row.scrollIntoView();            }        } </script>
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




    <%-- <script type="text/javascript">




        function initializeMultiselect() {
            $('[id*=lstwomen_spend_time_in_collection_of]').multiselect({
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
    </script>--%>

    <script type="text/javascript">
        function NumberCheckAndCalculate(inputElement) {
            NumberCheck(inputElement);
            calculateTotalFamilyMembers();
        }
    </script>
</asp:Content>
