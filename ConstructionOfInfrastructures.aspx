<%@ Page Title="Van - Construction/Maintenance of Infrastructure: Roads, Bridges& Buildings" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ConstructionOfInfrastructures.aspx.cs" Inherits="vansystem.ConstructionOfInfrastructures" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Construction/Maintenance of Infrastructure: Roads, Bridges& Buildings</title>
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
                        <a href="ConstructionOfInfrastructureData.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Construction/Maintenance</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Construction/Maintenance of Infrastructure: Roads, Bridges& Buildings</h3>
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
                                        <asp:TemplateField HeaderText="Range">
                                            <ItemTemplate>
                                                <asp:Label ID="lblrange" Text='<%# Bind("range") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlrange" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                    ControlToValidate="ddlrange" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Type of Construction">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltype_of_construction" Text='<%# Bind("type_of_construction") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddltype_of_construction" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="TypeOfConstruction_SelectedIndexChanged">
                                                    <asp:ListItem Value="">Select Type</asp:ListItem>
                                                    <asp:ListItem Value="Bridges">Bridges</asp:ListItem>
                                                    <asp:ListItem Value="Buildings">Buildings</asp:ListItem>
                                                    <asp:ListItem Value="Roads">Roads</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                    ControlToValidate="ddltype_of_construction" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Category">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcategory" Text='<%# Bind("category") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlcategory" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="Category_SelectedIndexChanged">
                                                    <asp:ListItem Value="">Select Category</asp:ListItem>
                                                    <asp:ListItem Value="District road">District road</asp:ListItem>
                                                    <asp:ListItem Value="National Highway">National Highway</asp:ListItem>
                                                    <asp:ListItem Value="State highway">State highway</asp:ListItem>
                                                    <asp:ListItem Value="Others">Others</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                    ControlToValidate="ddlcategory" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other Category">
                                            <ItemTemplate>
                                                <asp:Label ID="lblother_category" Text='<%# Bind("other_category") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="other_category" Text='<%# Bind("other_category") %>' runat="server" CssClass="form-control" placeholder="Other Category" MaxLength="50" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ControlToValidate="other_category" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Usage">
                                            <ItemTemplate>
                                                <asp:Label ID="lblusage" Text='<%# Bind("usage") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlusage" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="Usage_SelectedIndexChanged">
                                                    <asp:ListItem Value="">Select Usage</asp:ListItem>
                                                    <asp:ListItem Value="Forest road">Forest road</asp:ListItem>
                                                    <asp:ListItem Value="Open to management">Open to management</asp:ListItem>
                                                    <asp:ListItem Value="Public road">Public road</asp:ListItem>
                                                    <asp:ListItem Value="Others">Others</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                    ControlToValidate="ddlusage" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other Usage">
                                            <ItemTemplate>
                                                <asp:Label ID="lblother_usage" Text='<%# Bind("other_usage") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="other_usage" Text='<%# Bind("other_usage") %>' runat="server" CssClass="form-control" placeholder="Other Usage" MaxLength="50" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ControlToValidate="other_usage" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surface Type">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsurface_type" Text='<%# Bind("surface_type") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlsurface_type" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="Surface_type_SelectedIndexChanged">
                                                    <asp:ListItem Value="">Select Surface Type</asp:ListItem>
                                                    <asp:ListItem Value="Black topped">Black topped</asp:ListItem>
                                                    <asp:ListItem Value="Earth">Earth</asp:ListItem>
                                                    <asp:ListItem Value="Metal">Metal</asp:ListItem>
                                                    <asp:ListItem Value="Others">Others</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                                    ControlToValidate="ddlsurface_type" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other Surface">
                                            <ItemTemplate>
                                                <asp:Label ID="lblother_surface" Text='<%# Bind("other_surface") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="other_surface" Text='<%# Bind("other_surface") %>' runat="server" CssClass="form-control" placeholder="Other Surface" MaxLength="50" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ControlToValidate="other_surface" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name/Number of road">
                                            <ItemTemplate>
                                                <asp:Label ID="lblname_or_number" Text='<%# Bind("name_or_number") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="name_or_number" Text='<%# Bind("name_or_number") %>' runat="server" CssClass="form-control" placeholder="Name/Number of road" MaxLength="50" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" ControlToValidate="name_or_number" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Length Covered (in Kms)">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllength_covered" Text='<%# Bind("length_covered") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="length_covered" Text='<%# Bind("length_covered") %>' runat="server" CssClass="form-control" placeholder="Length Covered (in Kms)" MaxLength="50" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" Display="Dynamic" ControlToValidate="length_covered" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Cross Drainage Type">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcross_drainage_type" Text='<%# Bind("cross_drainage_type") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlcross_drainage_type" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="Cross_drainage_type_SelectedIndexChanged">
                                                    <asp:ListItem Value="">Select Drainage Type</asp:ListItem>
                                                    <asp:ListItem Value="Culverts">Culverts</asp:ListItem>
                                                    <asp:ListItem Value="Human pipe culverts">Human pipe culverts</asp:ListItem>
                                                    <asp:ListItem Value="Others">Others</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                                                    ControlToValidate="ddlcross_drainage_type" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other Drainage Type">
                                            <ItemTemplate>
                                                <asp:Label ID="lblother_drainage_type" Text='<%# Bind("other_drainage_type") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="other_drainage_type" Text='<%# Bind("other_drainage_type") %>' runat="server" CssClass="form-control" placeholder="Other Drainage Type" MaxLength="50" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="Dynamic" ControlToValidate="other_drainage_type" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Bridge Type">
                                            <ItemTemplate>
                                                <asp:Label ID="lblbridge_type" Text='<%# Bind("bridge_type") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlbridge_type" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="Bridge_type_SelectedIndexChanged">
                                                    <asp:ListItem Value="">Select Bridge Type</asp:ListItem>
                                                    <asp:ListItem Value="Masonry arch">Masonry arch</asp:ListItem>
                                                    <asp:ListItem Value="Metal multi span">Metal multi span</asp:ListItem>
                                                    <asp:ListItem Value="Suspension">Suspension</asp:ListItem>
                                                    <asp:ListItem Value="Wooden trestle">Wooden trestle</asp:ListItem>
                                                    <asp:ListItem Value="Others">Others</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"
                                                    ControlToValidate="ddlbridge_type" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other Bridge Type">
                                            <ItemTemplate>
                                                <asp:Label ID="lblother_bridge_type" Text='<%# Bind("other_bridge_type") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="other_bridge_type" Text='<%# Bind("other_bridge_type") %>' runat="server" CssClass="form-control" placeholder="Other Drainage Type" MaxLength="50" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" Display="Dynamic" ControlToValidate="other_bridge_type" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Nature of Building">
                                            <ItemTemplate>
                                                <asp:Label ID="lblnature_of_building" Text='<%# Bind("nature_of_building") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlnature_of_building" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="Nature_of_building_SelectedIndexChanged">
                                                    <asp:ListItem Value="">Select Nature</asp:ListItem>
                                                    <asp:ListItem Value="Barrier">Barrier</asp:ListItem>
                                                    <asp:ListItem Value="Chauki">Chauki</asp:ListItem>
                                                    <asp:ListItem Value="Hide">Hide</asp:ListItem>
                                                    <asp:ListItem Value="Office">Office</asp:ListItem>
                                                    <asp:ListItem Value="Permanent patrolling camp">Permanent patrolling camp</asp:ListItem>
                                                    <asp:ListItem Value="Residential">Residential</asp:ListItem>
                                                    <asp:ListItem Value="Store">Store</asp:ListItem>
                                                    <asp:ListItem Value="Temporary patrolling camp">Temporary patrolling camp</asp:ListItem>
                                                    <asp:ListItem Value="Tourist facility">Tourist facility</asp:ListItem>
                                                    <asp:ListItem Value="Watch tower">Watch tower</asp:ListItem>
                                                    <asp:ListItem Value="Others">Others</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server"
                                                    ControlToValidate="ddlnature_of_building" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Nature of Building">
                                            <ItemTemplate>
                                                <asp:Label ID="lblother_building" Text='<%# Bind("other_building") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="other_building" Text='<%# Bind("other_building") %>' runat="server" CssClass="form-control" placeholder="Nature of Building" MaxLength="50" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" Display="Dynamic" ControlToValidate="other_building" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Compartment Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcompartment_name" Text='<%# Bind("compartment_name") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="compartment_name" Text='<%# Bind("compartment_name") %>' runat="server" CssClass="form-control" placeholder="Compartment Name" MaxLength="50" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" Display="Dynamic" ControlToValidate="compartment_name" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Landmark">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllandmark" Text='<%# Bind("landmark") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="landmark" Text='<%# Bind("landmark") %>' runat="server" CssClass="form-control" placeholder="Landmark" MaxLength="50" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" Display="Dynamic" ControlToValidate="landmark" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Numbers">
                                            <ItemTemplate>
                                                <asp:Label ID="lblnumbers" Text='<%# Bind("numbers") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="numbers" Text='<%# Bind("numbers") %>' runat="server" CssClass="form-control" placeholder="Numbers" MaxLength="10" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" Display="Dynamic" ControlToValidate="numbers" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Total Cost (in lakhs)">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltotal_cost" Text='<%# Bind("total_cost") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="total_cost" Text='<%# Bind("total_cost") %>' runat="server" CssClass="form-control" placeholder="Total Cost (in lakhs)" MaxLength="10" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" Display="Dynamic" ControlToValidate="total_cost" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:Label ID="lblstatus" Text='<%# Bind("status") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlstatus" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control">
                                                    <asp:ListItem Value="">Select Status</asp:ListItem>
                                                    <asp:ListItem Value="Haven't started">Haven't started</asp:ListItem>
                                                    <asp:ListItem Value="Ongoing">Ongoing</asp:ListItem>
                                                    <asp:ListItem Value="Work completed">Work completed</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server"
                                                    ControlToValidate="ddlstatus" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
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
