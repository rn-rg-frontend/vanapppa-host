<%@ Page Title="Van - Maintenance of Waterbodies" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="MaintenanceOfWaterbodies.aspx.cs" Inherits="vansystem.MaintenanceOfWaterbodies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Maintenance of Waterbodies</title>
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
                        <a href="MaintenanceOfWaterbody.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Maintenance Of Waterbody</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Maintenance of Waterbodies</h3>
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

                                        <asp:TemplateField HeaderText="Waterbody Type">
                                            <ItemTemplate>
                                                <asp:Label ID="lblWaterbodyType" runat="server" Text='<%# Eval("WaterbodyType") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList  Width="150px"  ID="ddlEditWaterbodyType" runat="server" CssClass="form-control" AutoPostBack="true"  OnSelectedIndexChanged="ddlWaterbodyType_SelectedIndexChanged"></asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditWaterbodyType" runat="server" ControlToValidate="ddlEditWaterbodyType" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Category">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList  Width="150px"  ID="ddlEditCategory" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditCategory" runat="server" ControlToValidate="ddlEditCategory" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other Category">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOtherCategory" runat="server" Text='<%# Eval("OtherCategory") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditOtherCategory"  Text='<%# Bind("OtherCategory") %>' runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditOtherCategory" runat="server" ControlToValidate="txtEditOtherCategory" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Availability">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAvailability" runat="server" Text='<%# Eval("Availability") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList   Width="150px"  ID="ddlEditAvailability" runat="server" CssClass="form-control"></asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditAvailability" runat="server" ControlToValidate="ddlEditAvailability" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Compartment Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCompartmentName" runat="server" Text='<%# Eval("CompartmentName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditCompartmentName"  Text='<%# Bind("CompartmentName") %>' runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditCompartmentName" runat="server" ControlToValidate="txtEditCompartmentName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Latitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" runat="server" Text='<%# Eval("Latitude") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditLatitude"  Text='<%# Bind("Latitude") %>' runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditLatitude" runat="server" ControlToValidate="txtEditLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:RangeValidator Display="Dynamic"  ID="rangeEditLatitude" runat="server" ControlToValidate="txtEditLatitude" MinimumValue="-90.0" MaximumValue="90.0" ErrorMessage="Invalid Latitude" ForeColor="Red" Type="Double"></asp:RangeValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Longitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" runat="server" Text='<%# Eval("Longitude") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditLongitude"  Text='<%# Bind("Longitude") %>' runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditLongitude" runat="server" ControlToValidate="txtEditLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:RangeValidator Display="Dynamic" ID="rangeEditLongitude" runat="server" ControlToValidate="txtEditLongitude" MinimumValue="-180.0" MaximumValue="180.0" ErrorMessage="Invalid Longitude" ForeColor="Red" Type="Double"></asp:RangeValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Year">
                                            <ItemTemplate>
                                                <asp:Label ID="lblYear" runat="server" Text='<%# Eval("Year") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlEditYear" runat="server" CssClass="form-control"></asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditYear" runat="server" ControlToValidate="ddlEditYear" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Nature of Work">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNatureOfWork" runat="server" Text='<%# Eval("NatureOfWork") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList  Width="150px"  ID="ddlEditNatureOfWork" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlNatureOfWork_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditNatureOfWork" runat="server" ControlToValidate="ddlEditNatureOfWork" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Other Nature of Work">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOtherNatureOfWork" runat="server" Text='<%# Eval("OtherNatureOfWork") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditOtherNatureOfWork" Text='<%# Bind("OtherNatureOfWork") %>' runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditOtherNatureOfWork" runat="server" ControlToValidate="txtEditOtherNatureOfWork" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Cost (in lakhs)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCost" runat="server" Text='<%# Eval("Cost") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditCost" runat="server" Text='<%# Bind("Cost") %>' CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditCost" runat="server" ControlToValidate="txtEditCost" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator Display="Dynamic" ID="revEditCost" runat="server" ControlToValidate="txtEditCost" ValidationExpression="^\d+$" ErrorMessage="Only numeric values allowed." ForeColor="Red"></asp:RegularExpressionValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Performance">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPerformance" runat="server" Text='<%# Eval("Performance") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList  Width="150px"  ID="ddlEditPerformance" runat="server" CssClass="form-control"></asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvEditPerformance" runat="server" ControlToValidate="ddlEditPerformance" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Reason">
                                            <ItemTemplate>
                                                <asp:Label ID="lblReason" runat="server" Text='<%# Eval("Reason") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditReason" Text='<%# Bind("Reason") %>' runat="server" CssClass="form-control"></asp:TextBox>
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
