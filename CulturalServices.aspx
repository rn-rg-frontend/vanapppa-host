<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="CulturalServices.aspx.cs" Inherits="vansystem.CulturalServices" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <script>
        var object = { status: false, ele: null };

        function confirmDelete1(ev) {
            if (object.status) {
                object.status = false;
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
                    object.status = false;
                });

            return false;
        }
    </script>




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
            top: -2vh;
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
    </style>
    <script type="text/javascript">
        function Search_function(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");

            var tblData = document.getElementById("<%=GVCultural.ClientID %>");
            var rowData;
            var found = false;

            for (var i = 1; i < tblData.rows.length - 1; i++) {
                rowData = tblData.rows[i].innerHTML.toLowerCase();
                var styleDisplay = 'none';
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.indexOf(strData[j]) >= 0) {
                        styleDisplay = '';
                        found = true;
                    } else {
                        styleDisplay = 'none';
                        found = false;
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
                messageElement.style.marginTop = '19px';
                messageElement.style.color = 'red';
                messageElement.style.paddingBottom = '18%';
                messageElement.style.overflowY = 'clip';
                tblData.parentElement.appendChild(messageElement);
            }

            messageElement.style.display = found ? 'none' : 'block';
        }


        window.onload = function () {
            document.getElementById("<%= txtSearch.ClientID %>").value = "";
        };
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>

    <div<%-- class="card" style="height: 826px; background-color: #EFEFEF"--%>>
        <div class="container-fluid mt-6">
            <div style="margin-left: 0%; /*width: 113%; */ margin-top: 88px;">
                <div class="d-md-flex  justify-content-between align-items-center text-center">
                    <div style="margin-left: 3% !important;">
                        <h3 style="margin-inline: auto; margin-left: 40px !important"><b>Cultural/Tourism Services</b></h3>
                    </div>

                    <div class="row d-sm-flex justify-content-center align-items-end text-center">
                        <div>
                            <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px; width: 100vw">No records found.</asp:Label>
                        </div>
                        <div class="d-flex justify-content-center align-items-center pl-4">
                            Search:
                                 <asp:TextBox ID="txtSearch" runat="server" Style="background-color: #004990; color: white" Font-Size="20px" onkeydown="return Search_Gridview(event)" onkeyup="Search_function(this)"></asp:TextBox>
                        </div>
                        <div class="pl-4" style="padding-top: 6px;">
                            <asp:Button ID="btnExport" runat="server" Text="Export to Excel" Style="height: 34px" OnClick="btnExport_Click" />
                        </div>

                        <%-- <input type="button" runat="server" value="Export to Excel" onclick="exportToExcel()" />--%>
                        <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top: 6px; padding-right: 15px;">
                            Show
    <div class="pl-2 pr-2">

        <asp:DropDownList ID="ddlPageSize" Style="background-color: #004990; color: white; height: 34px; width: 70px; border-radius: 3px; height: 30px;" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
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
             <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 3.5rem !important; width: 98%; ">

                    <asp:UpdatePanel runat="server" ID="updatepanel1" style="margin-top: -20px">
                        <ContentTemplate>
                            <%-- style="overflow-y: scroll; overflow-x: hidden; height: 200px; width: 600px;"--%>

                            <%--  AllowPaging="true" PageSize="10" OnPageIndexChanging="GVCultural_PageIndexChanging"--%>


                            <div class="box-content" style="display: flex; align-items: center;">
                                <asp:GridView ID="GVCultural" DataKeyNames="CulturalServicesId" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="GVCultural_PageIndexChanging" AllowPaging="True" Style="width: 100%; margin-top: 1px" ShowHeaderWhenEmpty="True" OnRowCommand="GVCultural_RowCommand" OnRowDataBound="GVCultural_RowDataBound" OnSelectedIndexChanged="GVCultural_SelectedIndexChanged">
                                    <AlternatingRowStyle BackColor="White" />
                                    <RowStyle BackColor="#f5f5f5" />

                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                    <Columns>
                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="CulturalServicesId" HeaderText="SR.NO" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Survey Id"  Visible="true">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CulturalServicesId") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("CulturalServicesId") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="CulturalServicesName" HeaderText="Surveyor Name" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="gender" HeaderText="Gender" ReadOnly="True" />
                                        <asp:BoundField ItemStyle-Width="150px" DataField="PhoneNumber" HeaderText="Phone Number">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Designation" HeaderText="Surveyor Designation" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Longitude" HeaderText="Longitude" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Latitude" HeaderText="Latitude" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Accuracy" HeaderText="Accuracy" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Altitude" HeaderText="Altitude" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="datecreated" HeaderText="Survey Date">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="device_id" HeaderText="DEVICE_ID">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="StateName" HeaderText="State" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="circle_name" HeaderText="CIRCLE" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="DivisionName" HeaderText="Division" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="RangeName" HeaderText="Range" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="BlockName" HeaderText="Block" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="VillageId" HeaderText="Name of Village">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="ForestTypeId" HeaderText="Forest Type">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="CulturalType" HeaderText="Type of Cultural Service">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="sacred_ownership" HeaderText="Ownership of Sacred grove">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="sacred_area" HeaderText="Area of Sacred Grove in ha">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="sacred_no_clusters" HeaderText="Number of Clusters">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="sacred_belif" HeaderText="What type of Belief and Faith">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="sacred_protection" HeaderText="What type of Protection">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="sacred_social_custo" HeaderText="Prevalent Social Custom">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="sacred_months" HeaderText="Visitors gather in which month">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="sacred_no_visitors" HeaderText="Number of Visitors">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="sacred_no_species" HeaderText="No. of Species Protected">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="sacred_plant_species" HeaderText="Name of Species-Plants">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="sacred_animal_species" HeaderText="Name of Species-Animals">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cultural_ownership" HeaderText="Ownership of Cultural Site">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cultural_area" HeaderText="Area of Cultural Site in ha">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cultural_no_clusters" HeaderText="Number of Clusters">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cultural_belif" HeaderText="What type of Belief and Faith" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cultural_protection" HeaderText="What type of Protection">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cultural_social_custom" HeaderText="Prevalent Social Custom">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cultural_months" HeaderText="Visitors gather in which month">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cultural_no_visitors" HeaderText="Number of Visitors">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cultural_no_species" HeaderText="No. of Species Protected">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cultural_plant_species" HeaderText="Name of Species-Plants">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cultural_animal_species" HeaderText="Name of Species-Animals">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cca_ownership" HeaderText="Ownership of CCA Site">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cca_area" HeaderText="Area of CCA Site in ha">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cca_no_clusters" HeaderText="Number of Clusters">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="cca_belif" HeaderText="What type of Belief and Faith">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cca_protection" HeaderText="What type of Protection">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cca_social_custom" HeaderText="Prevalent Social Custom">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cca_months" HeaderText="Visitors gather in which month">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cca_no_visitors" HeaderText="Number of Visitors">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cca_no_species" HeaderText="No.of Species Protected">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cca_plant_species" HeaderText="Name of Species-Plants">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="cca_animal_species" HeaderText="Name of Species-Animals">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="eco_ownership" HeaderText="Ownership of Ecotourism Site">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="eco_area" HeaderText="Area of Ecotourism Site in ha">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="eco_type_spacial_importance" HeaderText="What type os Special Importance">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="eco_site_details" HeaderText="Describe the Ecotourism Site">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="eco_fee_charge" HeaderText="Any Fee Charged for Entry">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="eco_months" HeaderText="Visitors gather in which months">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="eco_no_visitor" HeaderText="Number of Visitors">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="eco_prevalent_social" HeaderText="Prevalent Social Custom">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="eco_livehood_income" HeaderText="Any Livelihood Income Activity">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Type of Indegenous/Traditional Knowledge">
                                            <ItemTemplate>
                                                <%--  <%# TrimTo(Eval("Crop"), 30) %>--%>
                                                <asp:Label ID="lblik_type" runat="server" Text=' <%# TrimTo(Eval("ik_type"),30)%>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="ik_name_cmmunity" HeaderText="Name of Community holding IK/TK">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="ik_incorporation" HeaderText="Incorporation of IK/TK in Micro Plans">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="ik_bio_register" HeaderText="Indegenous Knowledge Properly Recorded in PBRs">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="ik_development_work" HeaderText="Any Development Work based on IK/TK">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="ik_no_ipr" HeaderText="No. of IPRs Registered">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="ik_traditional_knowledge_lib" HeaderText="Is IK/TK registered with TKDL">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="ForestTypeId" HeaderText="FOREST TYPE ID">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>



                                        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl='~/images/bin.png' ID="Button1" ToolTip="Delete" runat="server" CausesValidation="false" CommandName="cmdDelete" CommandArgument="<%# Container.DataItemIndex %>" OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="RFO Approval" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="Button3" runat="server" CausesValidation="false" CommandName="" Text="RFO Not Approve" />
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
                                <!-- Add your page navigation buttons here -->
                                <%--  <ul class="pagination" id="Ul1" visible="false" runat="server" style="position: absolute; top: 100%; left: 0; width: 100%; text-align: center;">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li>
                                <asp:LinkButton ID="lnkPage" runat="server" Text='<%#Eval("Text") %>' CommandArgument='<%# Eval("Value") %>'
                                    Enabled='<%# Eval("Enabled") %>' OnClick="lnkPage_Click">
                                </asp:LinkButton>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>--%>
                            </div>

                        </ContentTemplate>
                    </asp:UpdatePanel>



                    <ul class="pagination" id="pagingnation" visible="false" runat="server">

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
    </div<%-- class="card" style="height: 826px; background-color: #EFEFEF"--%>>




    <triggers>
        <asp:PostBackTrigger ControlID="btnExport" />
    </triggers>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <%-- <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css"
        rel="stylesheet" type="text/css" />--%>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>




    <script type="text/javascript">
        function Search_function(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");

            var tblData = document.getElementById("<%=GVCultural.ClientID %>");
            var rowData;
            var found = false;

            for (var i = 1; i < tblData.rows.length - 1; i++) {
                rowData = tblData.rows[i].innerHTML.toLowerCase();
                var styleDisplay = 'none';
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.indexOf(strData[j]) >= 0) {
                        styleDisplay = '';
                        found = true;
                    } else {
                        styleDisplay = 'none';
                        found = false;
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
                messageElement.style.width = '100vw';
                messageElement.style.marginTop = '19px';
                messageElement.style.color = 'red';
                messageElement.style.marginTop = '20px';
                tblData.parentElement.appendChild(messageElement);
            }

            messageElement.style.display = found ? 'none' : 'block';
        }


        window.onload = function () {
            document.getElementById("<%= txtSearch.ClientID %>").value = "";
        };
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
