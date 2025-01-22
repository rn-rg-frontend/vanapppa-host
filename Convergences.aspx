<%@ Page Title="Van - Convergence" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="Convergences.aspx.cs" Inherits="vansystem.Convergences" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Convergence</title>
    <link rel="stylesheet" type="text/css" href="/vali/css/main.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/font-awesome-custom.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/custom.css">
    <link rel="stylesheet" type="text/css" href="/global/css/ol4.css">
    <script type="text/javascript" src="/vali/js/jquery-3.2.1.min.js"></script>
    <script>
        var object = { status: false, ele: null };
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

        .required-field-message {
            color: Red;
            /*visibility: visible !important;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="app-content">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="tile" style="margin-left: -10px;">
                    <div class="pull-right">
                        <a href="Convergence.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Convergence Data</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Convergence</h3>
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
                                    rules="rows" CellPadding="4" CellSpacing="4" Width="100%" DataKeyNames="id" OnRowCommand="GVget_RowCommand" OnRowEditing="GVgetuser_RowEditing"
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
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Type">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltype" Text='<%# Bind("type") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddltype" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select Type" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="Convergence-Inter-agency Programmes" Value="Convergence-Inter-agency Programmes"></asp:ListItem>
                                                    <asp:ListItem Text="Programs of NGOs" Value="Programs of NGOs"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                    ControlToValidate="ddltype" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Name of Agency">
                                            <ItemTemplate>
                                                <asp:Label ID="lblname_of_agency" Text='<%# Bind("name_of_agency") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="name_of_agency" Text='<%# Bind("name_of_agency") %>' runat="server" MaxLength="200" Display="Dynamic" placeholder="Name of Agency" CssClass="form-control" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ControlToValidate="name_of_agency" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Program">
                                            <ItemTemplate>
                                                <asp:Label ID="lblprogram" Text='<%# Bind("program") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlprogram" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control" >
                                                    <asp:ListItem Text="Central" Value="Central"></asp:ListItem>
                                                    <asp:ListItem Text="State" Value="State"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                    ControlToValidate="ddlprogram" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name of Scheme">
                                            <ItemTemplate>
                                                <asp:Label ID="lblname_of_the_scheme" Text='<%# Bind("name_of_the_scheme") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="name_of_the_scheme" Text='<%# Bind("name_of_the_scheme") %>' runat="server" Display="Dynamic" placeholder="Name of Scheme" CssClass="form-control" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" runat="server" ControlToValidate="name_of_the_scheme" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Scheme Period">
                                            <ItemTemplate>
                                                <asp:Label ID="lblscheme_period" Text='<%# Bind("scheme_period") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="scheme_period" Text='<%# Bind("scheme_period") %>' runat="server" Display="Dynamic" placeholder="Scheme Period" CssClass="form-control" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" runat="server" ControlToValidate="scheme_period" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Head Quarters Location">
                                            <ItemTemplate>
                                                <asp:Label ID="lblhead_quarters_location" Text='<%# Bind("head_quarters_location") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="head_quarters_location" Text='<%# Bind("head_quarters_location") %>' runat="server" Display="Dynamic" placeholder="Head Quarters Location" CssClass="form-control" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" runat="server" ControlToValidate="head_quarters_location" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Nature of Program">
                                            <ItemTemplate>
                                                <asp:Label ID="lblnature_of_program" Text='<%# Bind("nature_of_program") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="nature_of_program" Text='<%# Bind("nature_of_program") %>' runat="server" Display="Dynamic" placeholder="Nature of Program" CssClass="form-control" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" runat="server" ControlToValidate="nature_of_program" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Activity">
                                            <ItemTemplate>
                                                <asp:Label ID="lblactivity" Text='<%# Bind("activity") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="activity" Text='<%# Bind("activity") %>' runat="server" Display="Dynamic" placeholder="Activity" CssClass="form-control" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" runat="server" ControlToValidate="activity" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Physical Target Given">
                                            <ItemTemplate>
                                                <asp:Label ID="lblphysical_target_given" Text='<%# Bind("physical_target_given") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="physical_target_given" Text='<%# Bind("physical_target_given") %>' runat="server" Display="Dynamic" placeholder="Physical Target Given" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="Dynamic" runat="server" ControlToValidate="physical_target_given" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Physical Target Achieved">
                                            <ItemTemplate>
                                                <asp:Label ID="lblphysical_target_achieved" Text='<%# Bind("physical_target_achieved") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="physical_target_achieved" Text='<%# Bind("physical_target_achieved") %>' runat="server" Display="Dynamic" placeholder="Physical Target Given" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" Display="Dynamic" runat="server" ControlToValidate="physical_target_achieved" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Financial Target Given">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfinancial_target_given" Text='<%# Bind("financial_target_given") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="financial_target_given" Text='<%# Bind("financial_target_given") %>' runat="server" Display="Dynamic" placeholder="Financial Target Given" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" Display="Dynamic" runat="server" ControlToValidate="financial_target_given" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Financial Target Achieved">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfinancial_target_achieved" Text='<%# Bind("financial_target_achieved") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="financial_target_achieved" Text='<%# Bind("financial_target_achieved") %>' runat="server" Display="Dynamic" placeholder="Financial Target Achieved" CssClass="form-control" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" Display="Dynamic" runat="server" ControlToValidate="financial_target_achieved" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Latitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllatitude" Text='<%# Bind("latitude") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="latitude" Text='<%# Bind("latitude") %>' runat="server" Display="Dynamic" placeholder="Latitude" CssClass="form-control" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" Display="Dynamic" runat="server" ControlToValidate="latitude" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Longitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllongitude" Text='<%# Bind("longitude") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="longitude" Text='<%# Bind("longitude") %>' runat="server" Display="Dynamic" placeholder="Longitude" CssClass="form-control" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" Display="Dynamic" runat="server" ControlToValidate="longitude" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Area Covered (in ha)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblarea_covered" Text='<%# Bind("area_covered") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="area_covered" Text='<%# Bind("area_covered") %>' runat="server" Display="Dynamic" placeholder="Area Covered (in ha)" CssClass="form-control" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" Display="Dynamic" runat="server" ControlToValidate="area_covered" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remarks">
                                            <ItemTemplate>
                                                <asp:Label ID="lblremarks" Text='<%# Bind("remarks") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="remarks" Text='<%# Bind("remarks") %>' runat="server" Display="Dynamic" placeholder="Remarks" CssClass="form-control" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" Display="Dynamic" runat="server" ControlToValidate="remarks" ErrorMessage="Please fill out this field." ForeColor="Red">
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
