﻿<%@ Page Title="Van - Potential/Existing Corridors- Monitoring Habitat Recovery" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="PotentialCorridorsMonitoringHabitatRecoverys.aspx.cs" Inherits="vansystem.PotentialCorridorsMonitoringHabitatRecoverys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Potential Corridors- Monitoring Habitat Recovery</title>
    <link rel="stylesheet" type="text/css" href="/vali/css/main.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/font-awesome-custom.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/custom.css">
    <link rel="stylesheet" type="text/css" href="/global/css/ol4.css">
    <script type="text/javascript" src="/vali/js/jquery-3.2.1.min.js"></script>
    <script>
        var object = { status: false, ele: null };

        function confirmDelete1(ev) {
            if (object.status) {
                object.status = false; // Reset status for next confirmation
                return true;
            }

            swal({
                title: "Are you sure you want to delete this entry?",
                //text: "Your will not be able to recover this record file!",
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
    <script type="text/javascript">


        function NumberCheck(input) {

            let value = input.value;/*<a href="NTFPExtraction.aspx">NTFPExtraction.aspx</a>*/
            let numbers = value.replace(/[^0-9]/g, "");
            input.value = numbers;
        }

        function DecimalCheck(input) {

            let value = input.value;
            let numbers = value.replace(/[^0-9.]/g, "");
            //input.value = numbers;
            validValue = numbers;

            // Ensure only one decimal point is allowed
            let parts = validValue.split(".");
            if (parts.length > 2) {
                validValue = parts[0] + "." + parts.slice(1).join(""); // Keep the first dot, remove others
            }

            // Prevent starting with a decimal point
            if (validValue.startsWith(".")) {
                validValue = "0" + validValue; // Prepend a zero
            }



            input.value = validValue;
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
        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: 0;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            z-index: 10;
        }

        th, td {
            padding: 0.25rem;
        }

        .tile {
            margin-left: 100px;
        }

        body {
            overflow: hidden;
        }

        .card-body {
            overflow-x: scroll;
            overflow-y: scroll;
            max-height: calc(75vh - 100px);
            padding: 0;
            margin-top: 10px;
        }

        table.dataTable {
            clear: both;
            margin-top: 0px !important;
            margin-bottom: 0px !important;
            max-width: none !important;
        }

        .required-field-message {
            color: Red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="app-content">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="tile" style="margin-left: -10px;">
                    <div class="pull-right">
                        <a href="PotentialCorridorsMonitoringHabitatRecovery.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Potential Corridors-Conservation Monitoring Habitat Recovery</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Potential/Existing Corridors- Monitoring Habitat Recovery</h3>
                    <div class="d-flex justify-content-start align-items-center" style="padding-top: 6px; padding-right: 15px;">
                        Show  
                        <div class="pl-2 pr-2">
                            <asp:DropDownList ID="ddlPageSize" Style="background-color: #004990; color: white; width: 70px; border-radius: 3px; height: 30px" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                <asp:ListItem Text="10" Value="10" />
                                <asp:ListItem Text="25" Value="25" />
                                <asp:ListItem Text="50" Value="50" />
                            </asp:DropDownList>
                        </div>
                        entries
                    </div>


                    <div class="tile-body">
                        <div class="card-body">
                            <table id="users">
                                <asp:GridView ID="GVgetuser" runat="server" AutoGenerateColumns="false" GridLines="Both" frame="void"
                                    rules="rows" CellPadding="4" CellSpacing="4" Width="100%" DataKeyNames="id" OnRowCommand="GVget_RowCommand" OnPageIndexChanging="GVgetuser_PageIndexChanging"
                                    OnRowEditing="GVgetuser_RowEditing"
                                    OnRowCancelingEdit="GVgetuser_RowCancelingEdit"
                                    OnRowUpdating="GVgetuser_RowUpdating"
                                    OnRowDataBound="GridView1_RowDataBound"
                                    AllowPaging="true" PageSize="10">
                                    <RowStyle BackColor="White" BorderColor="ControlLight" />
                                    <HeaderStyle BorderColor="ControlLight" />
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Form Type">
                                            <ItemTemplate>
                                                <%# Eval("form_type").ToString() == "potential" ? 
"Potential Corridors-Monitoring Habitat Recovery" : 
"Existing Corridors-Monitoring Habitat Recovery" %>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlType" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                                                    <asp:ListItem Text="Existing Corridors-Monitoring Habitat Recovery" Value="Existing"></asp:ListItem>
                                                    <asp:ListItem Text="Potential Corridors-Monitoring Habitat Recovery" Value="Potential"></asp:ListItem>

                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlType" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Corridor Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCorridorName" Text='<%# Bind("corridor_name") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtCorridorName" CssClass="form-control" Text='<%# Bind("corridor_name") %>' runat="server" MaxLength="25" onkeypress="return isAlphabet(event)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCorridorName" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Corridor Number">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCorridorNumber" Text='<%# Bind("corridor_number") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtCorridorNumber" CssClass="form-control" Text='<%# Bind("corridor_number") %>' MaxLength="25" onkeypress="" runat="server" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator" runat="server" ControlToValidate="txtCorridorNumber" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Length (in meters)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLength" Text='<%# Bind("length") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtLength" CssClass="form-control" Text='<%# Bind("length") %>' runat="server" MaxLength="25" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLength" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Financial Year">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFinancialYear" Text='<%# Bind("financial_year") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlFinancialYear" runat="server" CssClass="form-control">
                                                    <asp:ListItem Text="2010-2011" Value="2010-2011"></asp:ListItem>
                                                    <asp:ListItem Text="2011-2012" Value="2011-2012"></asp:ListItem>
                                                    <asp:ListItem Text="2012-2013" Value="2012-2013"></asp:ListItem>
                                                    <asp:ListItem Text="2013-2014" Value="2013-2014"></asp:ListItem>
                                                    <asp:ListItem Text="2014-2015" Value="2014-2015"></asp:ListItem>
                                                    <asp:ListItem Text="2015-2016" Value="2015-2016"></asp:ListItem>
                                                    <asp:ListItem Text="2016-2017" Value="2016-2017"></asp:ListItem>
                                                    <asp:ListItem Text="2017-2018" Value="2017-2018"></asp:ListItem>
                                                    <asp:ListItem Text="2018-2019" Value="2018-2019"></asp:ListItem>
                                                    <asp:ListItem Text="2019-2020" Value="2019-2020"></asp:ListItem>
                                                    <asp:ListItem Text="2020-2021" Value="2020-2021"></asp:ListItem>
                                                    <asp:ListItem Text="2021-2022" Value="2021-2022"></asp:ListItem>
                                                    <asp:ListItem Text="2022-2023" Value="2022-2023"></asp:ListItem>
                                                    <asp:ListItem Text="2023-2024" Value="2023-2024"></asp:ListItem>
                                                    <asp:ListItem Text="2024-2025" Value="2024-2025"></asp:ListItem>
                                                    <asp:ListItem Text="2025-2026" Value="2025-2026"></asp:ListItem>
                                                    <asp:ListItem Text="2026-2027" Value="2026-2027"></asp:ListItem>
                                                    <asp:ListItem Text="2027-2028" Value="2027-2028"></asp:ListItem>
                                                    <asp:ListItem Text="2028-2029" Value="2028-2029"></asp:ListItem>
                                                    <asp:ListItem Text="2029-2030" Value="2029-2030"></asp:ListItem>
                                                    <asp:ListItem Text="2030-2031" Value="2030-2031"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlFinancialYear" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Inputs/treatment that had been provided">
                                            <ItemTemplate>
                                                <asp:Label ID="lblInputsTreatmentProvided" Text='<%# Bind("inputs_treatment_provided") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtInputsTreatmentProvided" Text='<%# Bind("inputs_treatment_provided") %>' runat="server" MaxLength="25" CssClass="form-control" onkeypress="return isAlphabet(event)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtInputsTreatmentProvided" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Monitoring Technique">
                                            <ItemTemplate>
                                                <asp:Label ID="lblMonitoringTechnique" Text='<%# Bind("monitoring_technique") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtMonitoringTechnique" CssClass="form-control" Text='<%# Bind("monitoring_technique") %>' runat="server" MaxLength="25" onkeypress="return isAlphabet(event)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMonitoringTechnique" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Indicators of recovery">
                                            <ItemTemplate>
                                                <asp:Label ID="lblIndicatorsOfRecovery" Text='<%# Bind("indicators_of_recovery") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtIndicatorsOfRecovery" CssClass="form-control" Text='<%# Bind("indicators_of_recovery") %>' MaxLength="25" onkeypress="return isAlphabet(event)" runat="server" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtIndicatorsOfRecovery" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Nature of progress">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNatureOfProgress" Text='<%# Bind("nature_of_progress") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNatureOfProgress" CssClass="form-control" Text='<%# Bind("nature_of_progress") %>' runat="server" onkeypress="return isAlphabet(event)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtNatureOfProgress" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Constraints">
                                            <ItemTemplate>
                                                <asp:Label ID="lblConstraints" Text='<%# Bind("constraints") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtConstraints" CssClass="form-control" Text='<%# Bind("constraints") %>' TextMode="MultiLine" Rows="5" Columns="30" runat="server" MaxLength="25" onkeypress="return isAlphabet(event)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtConstraints" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remarks">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemark" Text='<%# Bind("remark") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtRemark" CssClass="form-control" Text='<%# Bind("remark") %>' MaxLength="200" runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Plan for restoration">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPlanForRestoration" Text='<%# Bind("plan_for_restoration") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddl_plan_for_restoration" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="plan_for_restoration_SelectedIndexChanged">
                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>

                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic"  ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddl_plan_for_restoration" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Landowners in corridor">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLandownersInCorridor" Text='<%# Bind("landowners_in_corridor") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtLandownersInCorridor" CssClass="form-control" Text='<%# Bind("landowners_in_corridor") %>' runat="server" TextMode="MultiLine" Rows="5" Columns="30" MaxLength="25" onkeypress="return isAlphabet(event)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtLandownersInCorridor" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit" CssClass="btn btn-primary" Text="Edit"></asp:LinkButton>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-primary" CommandName="Update" Text="Update"></asp:LinkButton>
                                                <asp:LinkButton ID="lnkCancel" runat="server" CssClass="btn btn-danger" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl='~/images/bin.png' ID="Button1" ToolTip="Delete" runat="server" CausesValidation="false" CommandName="cmdDelete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>

                                </asp:GridView>
                            </table>
                        </div>
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
        </div>
    </div>
    <script src="/vali/js/plugins/sweetalert.min.js"></script>
    <script src="/vali/js/plugins/jquery.dataTables.min.js"></script>
    <script src="/vali/js/users.js"></script>
</asp:Content>
