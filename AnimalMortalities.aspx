<%@ Page Title="Van - Animal Mortaliy" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="AnimalMortalities.aspx.cs" Inherits="vansystem.AnimalMortalities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Animal Mortaliy</title>
    <link rel="stylesheet" type="text/css" href="/vali/css/main.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/font-awesome-custom.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/custom.css">
    <link rel="stylesheet" type="text/css" href="/global/css/ol4.css">
    <script type="text/javascript" src="/vali/js/jquery-3.2.1.min.js"></script>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="app-content">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="tile" style="margin-left: -10px;">
                    <div class="pull-right">
                        <a href="AnimalMortality.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Animal Mortaliy</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Animal Mortaliy</h3>
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
                                    rules="rows" CellPadding="4" CellSpacing="4" Width="100%" DataKeyNames="id" OnRowCommand="GVget_RowCommand" OnPageIndexChanging="GVgetuser_PageIndexChanging" AllowPaging="true"
                                    OnRowEditing="GVgetuser_RowEditing"
                                    OnRowCancelingEdit="GVgetuser_RowCancelingEdit"
                                    OnRowUpdating="GVgetuser_RowUpdating"
                                    OnRowDataBound="GridView1_RowDataBound"
                                    PageSize="10">
                                    <RowStyle BackColor="White" BorderColor="ControlLight" />
                                    <HeaderStyle BorderColor="ControlLight" />
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Mortality due to">
                                            <ItemTemplate>
                                                <asp:Label ID="lblMortalityDueTo" Text='<%# Bind("mortality_due_to") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlmortality_due_to" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlmortality_due_to_SelectedIndexChanged">
                                                    <asp:ListItem Text="Natural reasons" Value="Natural reasons"></asp:ListItem>
                                                    <asp:ListItem Text="Poaching" Value="Poaching"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlmortality_due_to" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Species Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSpeciesName" Text='<%# Bind("species_name") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtSpecies" Width="150px" runat="server" Text='<%# Bind("species_name") %>' CssClass="form-control"  required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvSpeciesName" runat="server" ControlToValidate="txtSpecies" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Compartment Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCompartmentName" Text='<%# Bind("compartment_name") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtCompartmentName" runat="server" Text='<%# Bind("compartment_name") %>' CssClass="form-control" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvCompartmentName" runat="server" ControlToValidate="txtCompartmentName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Landmark">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLandmark" Text='<%# Bind("landmark") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox  Width="150px" ID="txtLandmark" runat="server" Text='<%# Bind("landmark") %>' CssClass="form-control" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvLandmark" runat="server" ControlToValidate="txtLandmark" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Latitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" Text='<%# Bind("latitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtLatitude" runat="server" Text='<%# Bind("latitude") %>' CssClass="form-control"  oninput="DecimalCheck(this)" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator   Display="Dynamic" ID="rfvLatitude" runat="server" ControlToValidate="txtLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Longitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" Text='<%# Bind("longitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtLongitude" runat="server" Text='<%# Bind("longitude") %>' CssClass="form-control"  oninput="DecimalCheck(this)" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvLongitude" runat="server" ControlToValidate="txtLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Year">
                                            <ItemTemplate>
                                                <asp:Label ID="lblYear" Text='<%# Bind("year") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlYear" runat="server" CssClass="form-control"></asp:DropDownList>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvYear" runat="server" ControlToValidate="ddlYear" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Age">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAge" Text='<%# Bind("age") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtAge" runat="server" Text='<%# Bind("age") %>' CssClass="form-control"  oninput="NumberCheck(this)" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Sex">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSex" Text='<%# Bind("sex") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlSex" runat="server" CssClass="form-control">
                                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                                    <asp:ListItem Text="Couldn't identify" Value="Couldn't identify"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvSex" runat="server" ControlToValidate="ddlSex" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Number">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNumber" Text='<%# Bind("number") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtNumber" runat="server" Text='<%# Bind("number") %>' CssClass="form-control"  oninput="NumberCheck(this)" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvNumber" runat="server" ControlToValidate="txtNumber" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Condition During Discovery">
                                            <ItemTemplate>
                                                <asp:Label ID="lblConditionDuringDiscovery" Text='<%# Bind("condition_during_discovery") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlConditionDuringDiscovery" runat="server" CssClass="form-control">
                                                    <asp:ListItem Text="Complete Carcass" Value="Complete Carcass"></asp:ListItem>
                                                    <asp:ListItem Text="Few remains" Value="Few remains"></asp:ListItem>
                                                    <asp:ListItem Text="Partial Carcass" Value="Partial Carcass"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvConditionDuringDiscovery" runat="server" ControlToValidate="ddlConditionDuringDiscovery" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Any Remains Collected">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAnyRemainsCollected" Text='<%# Bind("any_remains_collected") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlAnyRemainsCollected" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlAnyRemainsCollected_SelectedIndexChanged">
                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvAnyRemainsCollected" runat="server" ControlToValidate="ddlAnyRemainsCollected" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Specify Remains">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSpecifyRemains" Text='<%# Bind("specify_remains") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtSpecifyRemains" runat="server" Text='<%# Bind("specify_remains") %>' CssClass="form-control" ></asp:TextBox>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvSpecifyRemains" runat="server" ControlToValidate="txtSpecifyRemains" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cause of Mortality">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCauseOfMortality" Text='<%# Bind("cause_of_mortality") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlCauseOfMortality" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlCauseOfMortality_SelectedIndexChanged">

                                                    <asp:ListItem Text="Unknown" Value="Unknown"></asp:ListItem>
                                                    <asp:ListItem Text="Known" Value="Known"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvCauseOfMortality" runat="server" ControlToValidate="ddlCauseOfMortality" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cause Known">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCauseKnown" Text='<%# Bind("cause_known") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlCauseKnown" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlCauseKnown_SelectedIndexChanged">
                                                    <asp:ListItem Text="Accident" Value="Accident"></asp:ListItem>
                                                    <asp:ListItem Text="Disease" Value="Disease"></asp:ListItem>
                                                    <asp:ListItem Text="Old Age" Value="Old Age"></asp:ListItem>
                                                    <asp:ListItem Text="Predation" Value="Predation"></asp:ListItem>
                                                    <asp:ListItem Text="Territorial Fight" Value="Territorial Fight"></asp:ListItem>
                                                    <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvCauseKnown" runat="server" ControlToValidate="ddlCauseKnown" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cause Others">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCauseOthers" Text='<%# Bind("cause_others") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtCauseOthers" runat="server" Text='<%# Bind("cause_others") %>' CssClass="form-control" ></asp:TextBox>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvCauseOthers" runat="server" ControlToValidate="txtCauseOthers" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemarks" Text='<%# Bind("remarks") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtRemarks" runat="server" Text='<%# Bind("remarks") %>' CssClass="form-control"  MaxLength="200"></asp:TextBox>
                                                <asp:RequiredFieldValidator   Display="Dynamic" ID="rfvRemarks" runat="server" ControlToValidate="txtRemarks" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

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
