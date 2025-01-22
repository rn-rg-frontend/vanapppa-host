<%@ Page Title="" Language="C#" MasterPageFile="~/Range/Range.Master" AutoEventWireup="true" CodeBehind="PlusTrees.aspx.cs" Inherits="vansystem.Range.PlusTrees" %>

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
            top: -2vh;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
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
            z-index: 10;
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
                max-height: calc(82vh - 100px);
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
                padding-left: 2px !important;
            }
        }

        @media screen and (max-width: 1153px) {

            .card-body {
                width: 100%;
                max-height: calc(72vh - 100px);
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

        .custom-pager {
            text-align: center;
            margin-top: 50px;
            position: fixed;
            bottom: -52px;
            left: 89%;
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

        .dropdown-menu {
            MAX-HEIGHT: 150PX;
            OVERFLOW-Y: AUTO;
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
                <div class="d-md-flex justify-content-between align-items-center text-center mb-5" >
                    <div style="margin-left: 3% !important;">
                        <h3 style="margin-inline: auto; margin-left: 40px !important"><b>Plus-Trees / Mother Trees / Heritage Trees</b></h3>
                    </div>
                    <div class="row d-sm-flex justify-content-center align-items-center text-center">
                        <div>
                            <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No records found.</asp:Label>
                        </div>
                        <div class="d-flex justify-content-center align-items-center pl-4">
                            Search:
                             
                                <asp:TextBox ID="txtSearch1" runat="server" Style="background-color: #004990; color: white" Font-Size="20px" onkeydown="return Search_Gridview(event); adjustGridViewPosition();" onkeyup="Search_function(this); adjustGridViewPosition();"></asp:TextBox>
                        </div>
                        <div class="pl-4">

                            <asp:Button ID="btnExport" runat="server" Text="Export to Excel" Style="height: 34px" OnClick="btnExport_Click" />
                        </div>


                        <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top: 6px; padding-right: 15px;">
                            Show
                            <div class="pl-2 pr-2">
                                <asp:DropDownList ID="ddlPageSize" Style="background-color: #004990; color: white; width: 70px; border-radius: 3px; height: 30px;" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
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

                <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 2%; width: 99%;">


                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>





                            <div class="box-content" onkeydown="return Search_Gridview(event)">



                                <asp:GridView ID="gvRare" runat="server" AutoGenerateColumns="false" DataKeyNames="id,Locationid" OnRowEditing="gvRare_RowEditing"
                                    OnRowUpdating="gvRare_RowUpdating" OnRowCancelingEdit="gvRare_RowCancelingEdit" OnPageIndexChanging="gvRare_PageIndexChanging" GridLines="Horizontal" AllowPaging="true" PageSize="10" ShowHeaderWhenEmpty="true" OnRowCommand="gvRare_RowCommand" OnRowDataBound="gvRare_RowDataBound">
                                    <AlternatingRowStyle BackColor="White" />
                                    <RowStyle BackColor="#f5f5f5" />
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Survey ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surveyor Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyorName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Gender" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Phone Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPhoneNumber" runat="server" Text='<%# Eval("phonenumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surveyor Designation" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldesignation" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Survey Date" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDate" runat="server" Text='<%# Eval("datecreated") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="State" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblState" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Forest Division" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDivision" runat="server" Text='<%# Eval("division") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Forest Range" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRange" runat="server" Text='<%# Eval("range") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Forest Block" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBlock" runat="server" Text='<%# Eval("block") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Longitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllongitude" runat="server" Text='<%# Eval("longitude" , "{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Latitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllatitude" runat="server" Text='<%# Eval("latitude", "{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Accuracy" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblaccuracy" runat="server" Text='<%# Eval("accuracy", "{0:F2}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Altitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblaltitude" runat="server" Text='<%# Eval("altitude", "{0:F2}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Data Collector Location" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCollectorLocation" runat="server" Text='<%# Eval("collector_location") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Forest Type" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblforest_type" runat="server" Text='<%# TrimTo(Eval("forest_type"),20) %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Category of Tree Species" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltree_species_category" runat="server" Text='<%# Eval("tree_species_category") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Tree Found Scattered or in Cluster" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSpeciesAvailability" runat="server" Text='<%# Eval("species_availability") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Cluster Area in Ha" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblArea" runat="server" Text='<%# Eval("area") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="How Many Tree Per Ha" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTrees" runat="server" Text='<%# Eval("treesperha") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Scientific Name of Tree" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblrare_species_name" runat="server" Text='<%# Eval("rare_species_name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Other or Local Name of Tree" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblrare_species_other_name" runat="server" Text='<%# Eval("rare_species_other_name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("rare_species_other_name").ToString()) %>' ID="txtSpeciesOther" runat="server" Text='<%# Eval("rare_species_other_name") %>' Width="140" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Height of Tree in meters" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblheight" runat="server" Text='<%# Eval("height") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("height").ToString()) %>' ID="txtheight" runat="server" Text='<%# Eval("height") %>' Width="140" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="GBH of Tree in cm" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblgirth" runat="server" Text='<%# Eval("girth") %>'></asp:Label>
                                            </ItemTemplate>

                                            <EditItemTemplate>
                                                <asp:TextBox Enabled='<%# !string.IsNullOrEmpty(Eval("girth").ToString()) %>' ID="txtgirth" runat="server" Text='<%# Eval("girth") %>' Width="140" onkeydown="return Search_Gridview(event)"></asp:TextBox>
                                            </EditItemTemplate>
                                            <HeaderStyle CssClass="sortable-header" HorizontalAlign="Center" />

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
            var row = document.getElementById('<%= gvRare.ClientID %>_ctl' + rowId + '_row'); // Adjust this ID based on your GridView's client ID
            if (row !== null) {
                row.scrollIntoView();
            }
        }
    </script>


    <script type="text/javascript">        function Search_function(strKey) {            var strData = strKey.value.toLowerCase().split(" ");            var tblData = document.getElementById("<%=gvRare.ClientID %>");            var rowData;            var found = false;            for (var i = 1; i < tblData.rows.length; i++) {                rowData = tblData.rows[i].innerHTML.toLowerCase();                var styleDisplay = 'none';                for (var j = 0; j < strData.length; j++) {                    if (rowData.indexOf(strData[j]) >= 0) {                        styleDisplay = '';                        found = true;                    } else {                        styleDisplay = 'none';                        found = false;                        break;                    }                }                tblData.rows[i].style.display = styleDisplay;            }            var messageElement = document.getElementById('recordNotFoundMessage');            if (!messageElement) {                messageElement = document.createElement('div');                messageElement.id = 'recordNotFoundMessage';                messageElement.innerHTML = 'Record not found.';                messageElement.style.textAlign = 'center';                messageElement.style.width = '100vw';                messageElement.style.marginTop = '50px';                messageElement.style.color = 'red';                //messageElement.style.paddingBottom = '18%';                //messageElement.style.overflowY = 'clip';                tblData.parentElement.appendChild(messageElement);            }            messageElement.style.display = found ? 'none' : 'block';        }        window.onload = function () {            document.getElementById("<%= txtSearch1.ClientID %>").value = "";        };      </script>






</asp:Content>

