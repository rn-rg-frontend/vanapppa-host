<%@ Page Title="Van - Progress of activities" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ProgressOfActivities.aspx.cs" Inherits="vansystem.ProgressOfActivities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Major Biodiversities</title>
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
                        <a href="ProgressOfActivity.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Progress Of Activity</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Progress of activities</h3>
                    <div class="d-flex justify-content-start align-items-center" style="padding-top: 6px; padding-right: 15px;">
                        Show  
                        <div class="pl-2 pr-2">
                            <asp:DropDownList ID="ddlPageSize" Style="background-color: #004990; color: white; width: 70px; border-radius: 3px; height: 30px" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                <asp:ListItem Text="10" Value="10" />
                                <asp:ListItem Text="25" Value="25" />
                                <asp:ListItem Text="50" Value="50" />
                                <asp:ListItem Text="100" Value="100" />
                                <asp:ListItem Text="200" Value="200" />
                            </asp:DropDownList>
                        </div>
                        entries
                    </div>


                    <div class="tile-body">
                        <div class="card-body">
                            <table id="users">
                                <asp:GridView ID="GVgetuser" runat="server" AutoGenerateColumns="false" GridLines="Both" frame="void"
                                    rules="rows" CellPadding="4" CellSpacing="4" Width="100%" DataKeyNames="id" OnRowCommand="GVget_RowCommand"
                                    OnRowEditing="GVgetuser_RowEditing"
                                    OnRowCancelingEdit="GVgetuser_RowCancelingEdit"
                                    OnRowUpdating="GVgetuser_RowUpdating"
                                    OnRowDataBound="GridView1_RowDataBound"
                                    OnPageIndexChanging="GVgetuser_PageIndexChanging" AllowPaging="true" PageSize="10">
                                    <RowStyle BackColor="White" BorderColor="ControlLight" />
                                    <HeaderStyle BorderColor="ControlLight" />
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:Label ID="lblRowNumberEdit" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Zone Plan/Theme Plan">
                                            <ItemTemplate>
                                                <asp:Label ID="lblZoneThemePlan" Text='<%# Bind("zone_theme_plan") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtZoneThemePlan" Width="150px" CssClass="form-control" Text='<%# Bind("zone_theme_plan") %>' runat="server" onkeypress="return isAlphabet(event)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtZoneThemePlan" ErrorMessage="Please fill out this field." Display="Dynamic" ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cutting and burning of fireline">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCuttingBurningFireline" Text='<%# (Boolean.Parse(Eval("cutting_and_burining_of_fireline").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkCuttingBurningFireline" Checked='<%# Boolean.Parse(Eval("cutting_and_burining_of_fireline").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Demarcation Of Boundary">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDemarcationBoundary" Text='<%# (Boolean.Parse(Eval("demarcation_of_boundary").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkDemarcationBoundary" Checked='<%# Boolean.Parse(Eval("demarcation_of_boundary").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Develop Artificial Watersource">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDevelopArtificialWatersource" Text='<%# (Boolean.Parse(Eval("develop_artificial_watersource").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkDevelopArtificialWatersource" Checked='<%# Boolean.Parse(Eval("develop_artificial_watersource").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Immunalization Of Cattle">
                                            <ItemTemplate>
                                                <asp:Label ID="lblImmunalizationCattle" Text='<%# (Boolean.Parse(Eval("immunalization_of_cattle").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkImmunalizationCattle" Checked='<%# Boolean.Parse(Eval("immunalization_of_cattle").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Maintenance Of Nature Trails">
                                            <ItemTemplate>
                                                <asp:Label ID="lblMaintenanceNatureTrails" Text='<%# (Boolean.Parse(Eval("maintenance_of_nature_trails").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkMaintenanceNatureTrails" Checked='<%# Boolean.Parse(Eval("maintenance_of_nature_trails").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Prescribed Burning">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPrescribedBurning" Text='<%# (Boolean.Parse(Eval("prescribed_burning").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkPrescribedBurning" Checked='<%# Boolean.Parse(Eval("prescribed_burning").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Maintenance Of Water Source">
                                            <ItemTemplate>
                                                <asp:Label ID="lblMaintenanceWaterSource" Text='<%# (Boolean.Parse(Eval("maintenance_of_water_source").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkMaintenanceWaterSource" Checked='<%# Boolean.Parse(Eval("maintenance_of_water_source").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Salt Lick">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSaltLick" Text='<%# (Boolean.Parse(Eval("salt_lick").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkSaltLick" Checked='<%# Boolean.Parse(Eval("salt_lick").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Signages">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSignages" Text='<%# (Boolean.Parse(Eval("signages").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkSignages" Checked='<%# Boolean.Parse(Eval("signages").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Staff Recruitment">
                                            <ItemTemplate>
                                                <asp:Label ID="lblStaffRecruitment" Text='<%# (Boolean.Parse(Eval("staff_recruitment").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkStaffRecruitment" Checked='<%# Boolean.Parse(Eval("staff_recruitment").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Villages Translocated">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVillagesTranslocated" Text='<%# (Boolean.Parse(Eval("villages_translocated").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkVillagesTranslocated" Checked='<%# Boolean.Parse(Eval("villages_translocated").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Weed Control">
                                            <ItemTemplate>
                                                <asp:Label ID="lblWeedControl" Text='<%# (Boolean.Parse(Eval("weed_control").ToString())) ? "Yes" : "No" %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:CheckBox ID="chkWeedControl" Checked='<%# Boolean.Parse(Eval("weed_control").ToString()) %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Others (Nature)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNatureOthers" Text='<%# Bind("nature_others") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNatureOthers" Width="150px" CssClass="form-control" Text='<%# Bind("nature_others") %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Financial Year">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFinancialYear" Text='<%# Bind("financial_year") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtFinancialYear" Width="150px" CssClass="form-control" Text='<%# Bind("financial_year") %>' runat="server" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFinancialYear" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:Label ID="lblStatus" Text='<%# Bind("status") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlstatus" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control">
                                                    <asp:ListItem>Completed</asp:ListItem>
                                                    <asp:ListItem>Ongoing </asp:ListItem>

                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlstatus" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Target (Physical)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTargetPhysical" Text='<%# Bind("target_physical") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtTargetPhysical" Width="150px" CssClass="form-control" Text='<%# Bind("target_physical") %>' runat="server" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTargetPhysical" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Target (Financial in lakhs)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTargetFinancial" Text='<%# Bind("target_financial") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtTargetFinancial" Width="150px" CssClass="form-control" Text='<%# Bind("target_financial") %>' runat="server" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTargetFinancial" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Achievement (Physical)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAchievementPhysical" Text='<%# Bind("achievement_physical") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtAchievementPhysical" Width="150px" CssClass="form-control" Text='<%# Bind("achievement_physical") %>' runat="server" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAchievementPhysical" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Achievement (Financial in lakhs)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAchievementFinancial" Text='<%# Bind("achievement_financial") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtAchievementFinancial" Width="150px" CssClass="form-control" Text='<%# Bind("achievement_financial") %>' runat="server" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAchievementFinancial" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Village">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVillage" Text='<%# Bind("village") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtVillage" CssClass="form-control" Width="150px" Text='<%# Bind("village") %>' runat="server" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtVillage" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Latitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" Text='<%# Bind("latitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtLatitude" CssClass="form-control" Width="150px" Text='<%# Bind("latitude") %>' runat="server" oninput="DecimalCheck(this)" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Longitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" Text='<%# Bind("longitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtLongitude" CssClass="form-control" Width="150px" Text='<%# Bind("longitude") %>' runat="server" oninput="DecimalCheck(this)" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemarks" Text='<%# Bind("remark") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtRemarks" CssClass="form-control" Width="150px" Text='<%# Bind("remark") %>' runat="server" />
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
                                                <asp:ImageButton ImageUrl='~/images/bin.png' ID="btnDelete" ToolTip="Delete" runat="server" CausesValidation="false" CommandName="cmdDelete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:ImageButton ImageUrl='~/images/bin.png' ID="btnDeleteEdit" ToolTip="Delete" runat="server" CausesValidation="false" CommandName="cmdDelete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                            </EditItemTemplate>
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
