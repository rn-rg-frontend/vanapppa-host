<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="PlotApproach.aspx.cs" Inherits="vansystem.PlotApproach" EnableEventValidation="false" MaintainScrollPositionOnPostback="true" %>

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
            margin-top: -1.3%;
        }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: -1.33rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            font-weight: bold;
            white-space: nowrap;
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
            border: 2px solid #ccc;
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

            .app-header {
                padding-right: 5%;
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

        .card-body {
            background-color: rgb(252, 252, 252);
            overflow: auto;
            /*margin-left: 2%;*/
            margin-bottom: 60px;
            width: 99%;
            max-height: calc(84vh - 100px);
            margin-top: -1%;
        }

        .plot-tree {
            background-color: #fcfbfb;
        }

        @media screen and (max-width: 1917px) {

            .card-body {
                width: 100%;
                max-height: calc(82vh - 100px);
                margin-right: -4% !important;
                /*margin-left: 2% !important;*/
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 92%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }

        @media screen and (max-width: 1537px) {

            .card-body {
                width: 100%;
                max-height: calc(80vh - 100px);
                margin-right: -4% !important;
                /*margin-left: 0.7% !important;*/
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
                left: 92%;
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
                /*margin-left: 1% !important;*/
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
                left: 92%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }

        @media screen and (max-width: 780px) {

            .card-body {
                width: 100%;
                max-height: calc(66vh - 100px);
                margin-right: -4% !important;
                /*margin-left: 2% !important;*/
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
                left: 92%;
                transform: translateX(-75%);
                z-index: 999;
            }
            /*  .app-nav__item {
  
    padding: 15%;
   
    margin-left: 682%;
}*/

        }

        @media screen and (max-width: 431px) {

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
                left: 92%;
                transform: translateX(-75%);
                z-index: 999;
            }
            /*  .app-nav__item {
  
    padding: 15%;
   
    margin-left: 682%;
}*/

        }



        @media screen and (max-width: 700px) {
            .pag {
                margin-left: 20%;
            }
        }

        /*@media screen and (max-width: 768px) {

            .app-nav__item {
                margin-left: 682%;
                transform: translateX(50%);
            }
        }*/

        @media screen and (min-width: 310px) and (max-width: 768px) {
            .app-header {
                height: 63px;
            }
        }

        .custom-pager {
            text-align: center;
            margin-top: 50px;
            position: fixed;
            bottom: 0px;
            left: 88%;
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

        /*.dropdown-menu {
            MAX-HEIGHT: 150PX;
            OVERFLOW-Y: AUTO;
        }*/


        body {
            font-family: "GillSans", sans-serif !important;
            font-size: 16px !important;
        }

        .listBoxMenu {
            display: none;
            position: absolute;
            background-color: #fff;
            border: 1px solid #ccc;
            z-index: 1000;
        }

            .listBoxMenu.show {
                display: block;
            }

        .dynamic-dropdown {
            position: absolute;
            display: none;
            /* Other styles */
        }
    </style>



    <%-- <style>
    .dropdown-menu {
        position: absolute;
        top: 100%;
        left: -3px;
        z-index: 10;
        display: none;
        float: right;
        min-width: 159px;
        padding: 8px 0; /* Adjust padding as per your design */
        margin: 0; /* Adjust margin as per your design */
        font-size: 14px;
        text-align: left;
        list-style: none;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
    }
</style>--%>






    <script>
        var object = { status: false, ele: null };

        function confirmDelete1(ev) {
            if (object.status) {
                object.status = false; // Reset status for next confirmation
                return true;
            }

            swal({
                title: "Are you sure you want to delete this entry?",
                //text: "This entry cannot be recovered and will be deleted permanently.",
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
    <style>
        /* @media screen and (max-width: 600px) {

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
                left: 63%;
                transform: translateX(-50%);
                z-index: 999;
            }

         }*/
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" style="overflow-x: clip;">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div>
        <div class="container-fluid mt-6">
            <div style="margin-left: 0%; margin-top: 88px;">

                <div>
                    <div class="d-md-flex justify-content-between align-items-center text-center">
                        <div style="margin-left: 3% !important;">
                            <h3 style="margin-inline: auto; margin-left: 40px !important;"><b>Plot Approach</b></h3>
                        </div>
                        <div class="row d-sm-flex justify-content-center align-items-center text-center">
                            <div>
                                <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No Records Found.</asp:Label>
                            </div>
                            <div class="d-flex justify-content-center align-items-center pl-4">
                                Search:
                                   
                            <asp:TextBox ID="txtSearch1" Style="background-color: #004990; color: white;" runat="server" Font-Size="20px" onkeydown="return Search_Gridview(event); adjustGridViewPosition();" onkeyup="Search_function(this); adjustGridViewPosition();"></asp:TextBox>
                            </div>
                            <div class="pl-4" style="padding-top: 6px;">
                                <asp:Button ID="btnExport" runat="server" Style="height: 34px;" Text="Export to Excel" OnClick="btnExport_Click" />
                            </div>
                            <%--<br />--%>
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
                    <hr class="pb-4" />
                </div>

                <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 3.5rem !important; width: 98%; /*margin-left: 1.7%; */">


                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>

                            <!-- Place the content you want to update asynchronously inside the UpdatePanel -->
                            <p class="app-sidebar__user-name"><%=Session["name"].ToString() %></p>


                            <div class="box-content" onkeydown="return Search_Gridview(event)" <%--style="display: flex; align-items: center;"--%>>

                                <asp:GridView ID="GVPlotApproach" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" runat="server" DataKeyNames="PlotApproachId ,uniqueid" OnRowEditing="GVPlotApproach_RowEditing" OnRowUpdating="GVPlotApproach_RowUpdating" OnRowCancelingEdit="GVPlotApproach_RowCancelingEdit" OnRowDataBound="GVPlotApproach_RowDataBound" OnPageIndexChanging="GVPlotApproach_PageIndexChanging" AllowPaging="true" PageSize="10" OnRowCommand="GVPlotApproach_RowCommand">
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />

                                    <AlternatingRowStyle BackColor="White" />
                                    <RowStyle BackColor="#f5f5f5" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>



                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="PlotApproachId" HeaderText="SurveyID" ReadOnly="True">
                                         
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Survey ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyID" runat="server" Text='<%# Eval("PlotApproachId") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <%--    <asp:BoundField DataField="name" HeaderText="Surveyor Name">
                                            <%--<ItemStyle Width="150px" />--%>
                                        <%--     </asp:BoundField>--%>

                                        <asp:TemplateField HeaderText="Surveyor Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <EditItemTemplate>
                                                <asp:Label ID="txtsname" runat="server" onkeydown="return Search_Gridview(event)" Text='<%# Bind("name") %>' Enabled="false"></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbrname" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>






                                        <asp:BoundField DataField="gender" HeaderText="Gender" ReadOnly="true">
                                            <%--<ItemStyle Width="150px" />--%>
                                        </asp:BoundField>





                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="PhoneNumber" HeaderText="Surveyor Phone No">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <asp:TemplateField HeaderText="Surveyor Phone No" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyorPhoneNo" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:Label ID="txtSurveyorPhoneNo" runat="server" Text='<%# Eval("PhoneNumber") %>' Width="140"></asp:Label>
                                            </EditItemTemplate>
                                        </asp:TemplateField>




                                        <asp:BoundField ItemStyle-Width="150px" DataField="Designation" HeaderText="Surveyor Designation" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Date_created" HeaderText="Survey Date" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Latitude" HeaderText="Latitude" ReadOnly="True" DataFormatString="{0:F6}">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Longitude" HeaderText="Longitude" ReadOnly="True" DataFormatString="{0:F6}">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Altitude" HeaderText="Altitude" ReadOnly="True" DataFormatString="{0:F1}">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>


                                        <asp:BoundField ItemStyle-Width="150px" DataField="Accuracy" HeaderText="Accuracy" ReadOnly="True" DataFormatString="{0:F1}">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="StateName" HeaderText="State" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="DivisionName" HeaderText="Forest Division" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="RangeName" HeaderText="Forest Range" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="BlockName" HeaderText="Forest Block" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>



                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="VillageId" HeaderText="Village">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <asp:TemplateField HeaderText="Village" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVillage" runat="server" Text='<%# Eval("VillageId") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtVillage" runat="server" Text='<%# Eval("VillageId") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>



                                        <asp:BoundField ItemStyle-Width="150px" DataField="CompartmentName" HeaderText="Compartment Number" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>


                                        <asp:TemplateField HeaderText="Topography of the plot">
                                            <ItemTemplate>
                                                <asp:Label ID="lblGeneralTopography" runat="server" Text='<%# Eval("GeneralTopography")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlGeneralTopography" runat="server">
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

                                        <asp:BoundField ItemStyle-Width="150px" DataField="TypeOfDegradation" HeaderText="Type of Degradation" Visible="false">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="CharcoalMaking" HeaderText="Charcoal Making">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
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


                                        <%--    <asp:TemplateField HeaderText="Charcoal Making" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoalMaking" runat="server" Text='<%# Eval("CharcoalMaking") %>'></asp:Label>
                                            </ItemTemplate>
                                                <EditItemTemplate>
                                                <asp:DropDownList ID="ddlCharcoalMaking" runat="server">

                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>--%>








                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="DevelopmentProjects" HeaderText="Development Projects">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <%--   <asp:TemplateField HeaderText="Development Projects">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDevelopmentProjects" runat="server" Text='<%# Eval("DevelopmentProjects")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlDevelopmentProject" runat="server">

                                                    <asp:ListItem Text="Yes" Value="119,"></asp:ListItem>
                                                    <asp:ListItem Text="No" Value="Null"></asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>--%>

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
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="Fire" HeaderText="Fire">
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
                                        <%--  <asp:BoundField ItemStyle-Width="150px" DataField="FirewoodExtraction" HeaderText="Firewood Extraction">
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
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="Grazing" HeaderText="Grazing">
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
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="IllegalLogging" HeaderText="Illegal Logging">
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
                                        <%--  <asp:BoundField ItemStyle-Width="150px" DataField="Mining" HeaderText="Mining">
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
                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="PathogenicAttack" HeaderText="Pathogenic Attack">
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
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="InvasiveSpecies" HeaderText="Invasive Species">
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
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="Flood" HeaderText="Flood">
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
                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="Drought" HeaderText="Drought">
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
                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="Landslides" HeaderText="Landslides">
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
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="Avalanche" HeaderText="Avalanche">
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
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="Storm" HeaderText="Storm">
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
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="Cyclone" HeaderText="Cyclone">
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
                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="Earthquake" HeaderText="Earthquake">
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
                                        <%--  <asp:BoundField ItemStyle-Width="150px" DataField="HeavyRainfall" HeaderText="Heavy Rainfall">
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
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="HeavySnowfall" HeaderText="Heavy Snowfall">
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
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="Other" HeaderText="Other">
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
                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="None" HeaderText="None">
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




                                        <asp:TemplateField HeaderText="Sighting Traces of Flagship Species:Mammals">
                                            <ItemTemplate>
                                                <asp:Label ID="lblMammals" runat="server" Text='<%# TrimTo(Eval("Mammals"),30)%>'></asp:Label>


                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:ListBox ID="lstMammals" CssClass="dynamic-dropdown" runat="server" SelectionMode="Multiple"></asp:ListBox>
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





                                        <asp:TemplateField HeaderText="Mammals Comments">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtMammals" runat="server" Text='<%# Bind("Mammals_comments") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lbMammals" runat="server" Text='<%# Bind("Mammals_comments") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Sighting Traces of Flagship Species:Birds">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBirds" runat="server" Text='<%# TrimTo(Eval("Birds"),30)%>'></asp:Label>

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:ListBox ID="lstBirds" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Specify Others (Birds)">
                                            <EditItemTemplate>
                                                <asp:Label ID="txtBirdsCommentsother" runat="server" Text='<%# Bind("Birdsothers") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblBirdsCommentsother" runat="server" Text='<%# Bind("Birdsothers") %>'></asp:Label>
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




                                        <%--  <asp:BoundField ItemStyle-Width="150px" DataField="Reptiles" HeaderText="Reptiles">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Sighting Traces of Flagship Species:Reptiles">
                                            <ItemTemplate>
                                                <asp:Label ID="lblReptiles" runat="server" Text=' <%# TrimTo(Eval("Reptiles"),30)%>'></asp:Label>

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:ListBox ID="lstReptiles" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


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


                                        <%--   <asp:BoundField ItemStyle-Width="150px" DataField="Amphibians" HeaderText="Amphibians">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>



                                        <%-- <asp:TemplateField HeaderText="Sighting Traces of Flagship Species:Amphibians">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAmphibians" runat="server" Text='<%# TrimTo(Eval("Amphibians"),30)%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                              <asp:ListBox ID="lstAmphibians" runat="server" SelectionMode="Multiple" CssClass="form-control listBoxWithScrollBar"></asp:ListBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText="Sighting Traces of Flagship Species: Amphibians">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAmphibians" runat="server" Text='<%# TrimTo(Eval("Amphibians"),30)%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:ListBox ID="lstAmphibians" runat="server" SelectionMode="Multiple"></asp:ListBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


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





                                        <%--  <asp:BoundField ItemStyle-Width="150px" DataField="habit" HeaderText="Habit of species">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <asp:TemplateField HeaderText="Habit of Species">
                                            <ItemTemplate>
                                                <asp:Label ID="lblhabit" runat="server" Text='<%# Eval("habit")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:Label ID="ddlhabit" runat="server">
                                                </asp:Label>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="sc_name" HeaderText="Species Name">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <%--  <asp:TemplateField HeaderText="Species Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsc_name" runat="server" Text='<%# Eval("sc_name")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlsc_name" runat="server" CssClass="search-dropdown">
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText="Species Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsc_name" runat="server" Text='<%# Eval("sc_name")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlsc_name" runat="server" CssClass="search-dropdown"></asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="species_other" HeaderText="Specify other">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>


                                        <asp:TemplateField HeaderText="Specify Other" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblspecies_other" runat="server" Text='<%# Eval("species_other") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtspecies_other" runat="server" Text='<%# Eval("species_other") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="NTFP Species?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblntfp" runat="server" Text='<%# Eval("ntfp") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlntfp" runat="server">

                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>



                                        <asp:TemplateField HeaderText="Invasive Species?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblinvasive" runat="server" Text='<%# Eval("invasive") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlinvasive" runat="server">

                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <%--  <asp:BoundField ItemStyle-Width="150px" DataField="density" HeaderText="Density">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField--%>

                                        <asp:TemplateField HeaderText="Density">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDensity" runat="server" Text='<%# Eval("density")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlDensity" runat="server">
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>



                                        <%--  <asp:BoundField ItemStyle-Width="150px" DataField="ntfp" HeaderText="NTFP Species?">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>



                                        <%--  <asp:BoundField ItemStyle-Width="150px" DataField="invasive" HeaderText="Invasive Species?">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>


                                        <%--  <asp:BoundField ItemStyle-Width="150px" DataField="quality" HeaderText="Quality">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <asp:TemplateField HeaderText="Quality">
                                            <ItemTemplate>
                                                <asp:Label ID="lblQuality" runat="server" Text='<%# Eval("quality")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlQuality" runat="server">
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="regeneration" HeaderText="Regeneration">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <asp:TemplateField HeaderText="Regeneration">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRegeneration" runat="server" Text='<%# Eval("regeneration")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlRegeneration" runat="server">
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <%-- <asp:BoundField ItemStyle-Width="150px" DataField="sps_remarks" HeaderText="Species Remarks">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <asp:TemplateField HeaderText="Species Remarks" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsps_remarks" runat="server" Text='<%# Eval("sps_remarks") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtsps_remarks" runat="server" Text='<%# Eval("sps_remarks") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>





                                        <asp:TemplateField HeaderText="Removal of Fuel Wood" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblremovalfuelwood" runat="server" Text='<%# Eval("Fuel") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlremovalfuelwood" runat="server">

                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>



                                        <asp:TemplateField HeaderText="Removal of Fodder" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblremovalfodder" runat="server" Text='<%# Eval("Fodder") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlremovalfodder" runat="server">

                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>




                                        <asp:TemplateField HeaderText="Remark" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblremark" runat="server" Text='<%# Eval("remark") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtremark" runat="server" Text='<%# Eval("remark") %>' Width="140"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="device_id" HeaderText="Device_Id">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Form_id" HeaderText="Form_Id">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Date_created" HeaderText="Date_Created">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                       
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Version" HeaderText="Version">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Synced" HeaderText="Synced">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Sync_date" HeaderText="Sync_Date">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="Form_sync_date" HeaderText="Form_Sync_Date">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="TRIAL427" HeaderText="TRIAL427">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>





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
                                                <asp:Button class="btn-approved" ID="Button3" runat="server" CssClass="btn btn-primary" CausesValidation="false" CommandName="cmdApprove1" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Approve" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="DFO Approval" ShowHeader="False">
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
                            <asp:AsyncPostBackTrigger ControlID="GVPlotApproach" EventName="RowEditing" />
                        </Triggers>
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



    <%-- <Triggers>
           <%-- <asp:PostBackTrigger ControlID="btnExport" />--%>
    <%--   <asp:AsyncPostBackTrigger ControlID="GVPlotApproach" EventName="RowEditing" />
        </Triggers>--%>
    <%-- <Triggers>
            <asp:PostBackTrigger ControlID="btnJson" />
        </Triggers>--%>






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
        function initializeMultiselect() {
            $('[id*=lstMammals]').multiselect({
                includeSelectAllOption: true,
                enableFiltering: true
            });
        }

        function initializeMultiselect1() {
            $('[id*=lstBirds]').multiselect({
                includeSelectAllOption: true,
                enableFiltering: true
            });
        }

        function initializeMultiselect2() {
            $('[id*=lstReptiles]').multiselect({
                includeSelectAllOption: true,
                enableFiltering: true
            });
        }

        function initializeMultiselect3() {
            $('[id*=lstAmphibians]').multiselect({
                includeSelectAllOption: true,
                enableFiltering: true
            });
        }
        //function initializeMultiselect3() {
        //    $('[id*=lstsc_name]').multiselect({
        //        includeSelectAllOption: true,
        //        enableFiltering: true
        //    });
        //}

        //function initializeMultiselect4() {
        //    $('[id*=lstPlants]').multiselect({
        //        includeSelectAllOption: true,
        //        enableFiltering: true
        //    });
        //}    lstsc_name

        // Function to re-initialize the multiselect after partial postback (ASP.NET AJAX)
        function pageLoad(sender, args) {
            initializeMultiselect();
            initializeMultiselect1();
            initializeMultiselect2();
            initializeMultiselect3();
            /* initializeMultiselect4();*/
        }
        // Initialize the multiselect on page load
        $(document).ready(function () {
            initializeMultiselect();
            initializeMultiselect1();
            initializeMultiselect2();
            initializeMultiselect3();
            /* initializeMultiselect4();*/
        });


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
            var row = document.getElementById('<%= GVPlotApproach.ClientID %>_ctl' + rowId + '_row'); // Adjust this ID based on your GridView's client ID
            if (row !== null) {
                row.scrollIntoView();
            }
        }
    </script>


    <%--  <script type="text/javascript">        function Search_function(strKey) {            var strData = strKey.value.toLowerCase().split(" ");            var tblData = document.getElementById("<%=GVPlotApproach.ClientID %>");            var rowData;            var found = false;            for (var i = 1; i < tblData.rows.length; i++) {                rowData = tblData.rows[i].innerHTML.toLowerCase();                var styleDisplay = 'none';                for (var j = 0; j < strData.length; j++) {                    if (rowData.indexOf(strData[j]) >= 0) {                        styleDisplay = '';                        found = true;                    } else {                        styleDisplay = 'none';                        found = false;                        break;                    }                }                tblData.rows[i].style.display = styleDisplay;            }            var messageElement = document.getElementById('recordNotFoundMessage');            if (!messageElement) {                messageElement = document.createElement('div');                messageElement.id = 'recordNotFoundMessage';                messageElement.innerHTML = 'Record not found.';                messageElement.style.textAlign = 'center';                messageElement.style.marginTop = '19px';                messageElement.style.color = 'red';                messageElement.style.paddingBottom = '18%';                messageElement.style.overflowY = 'clip';                tblData.parentElement.appendChild(messageElement);            }            messageElement.style.display = found ? 'none' : 'block';        }        window.onload = function () {            document.getElementById("<%= txtSearch1.ClientID %>").value = "";        };      </script>--%>
    <script type="text/javascript">
        function Search_function(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");
            var tblData = document.getElementById("<%=GVPlotApproach.ClientID %>");
            var rowData;
            var found = false;

            for (var i = 1; i < tblData.rows.length; i++) {
                rowData = tblData.rows[i].innerHTML.toLowerCase();
                var rowFound = true; // Assume the row matches until proven otherwise
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.indexOf(strData[j]) === -1) {
                        rowFound = false; // If any search term is not found in the row, mark it as not found
                        break;
                    }
                }
                tblData.rows[i].style.display = rowFound ? '' : 'none'; // Show or hide the row based on whether it matches the search terms
                if (rowFound) {
                    found = true; // If at least one row matches the search terms, set found to true
                }
            }

            var messageElement = document.getElementById('recordNotFoundMessage');
            if (!messageElement) {
                messageElement = document.createElement('div');
                messageElement.id = 'recordNotFoundMessage';
                messageElement.innerHTML = 'Record not found.';
                messageElement.style.textAlign = 'center';
                messageElement.style.marginTop = '19px';
                messageElement.style.width = "100vw"
                messageElement.style.color = 'red';
                //messageElement.style.paddingBottom = '18%';
                //messageElement.style.overflowY = 'clip';
                tblData.parentElement.appendChild(messageElement);
            }

            messageElement.style.display = found ? 'none' : 'block'; // Show or hide the error message based on whether any records were found
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





    <script type="text/javascript">
        function toggleListBoxMenu(listBoxId) {
            var listBox = document.getElementById(listBoxId);
            var listBoxMenu = document.getElementById(listBoxId + '_menu');

            if (listBox.selectedIndex != -1) {
                var listBoxRect = listBox.getBoundingClientRect();
                listBoxMenu.style.display = 'block';
                listBoxMenu.style.top = (listBoxRect.top - listBoxMenu.offsetHeight) + 'px';
                listBoxMenu.style.left = listBoxRect.left + 'px';
            } else {
                listBoxMenu.style.display = 'none';
            }
        }
    </script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var dropdowns = document.querySelectorAll('.dynamic-dropdown');
            dropdowns.forEach(function (dropdown) {
                dropdown.addEventListener('click', function (event) {
                    var rect = dropdown.getBoundingClientRect();
                    var windowHeight = window.innerHeight || document.documentElement.clientHeight;
                    var spaceBelow = windowHeight - rect.bottom;

                    if (spaceBelow < dropdown.clientHeight) {
                        dropdown.style.top = 'auto';
                        dropdown.style.bottom = '100%';
                    }
                });
            });
        });

    </script>

</asp:Content>

