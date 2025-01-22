<%@ Page Title="Van - Proposed Waterbodies" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ProposedWaterbodies.aspx.cs" Inherits="vansystem.ProposedWaterbodies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Proposed Waterbodies</title>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="app-content">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="tile" style="margin-left: -10px;">
                    <div class="pull-right">
                        <a href="ProposedWaterbody.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Proposed Waterbody</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Proposed Waterbodies</h3>
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

                                        <asp:TemplateField HeaderText="ID">
                                            <ItemTemplate>
                                                <asp:Label ID="lblId" Text='<%# Bind("Id") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtId" Text='<%# Bind("Id") %>' runat="server" ReadOnly="True" CssClass="form-control" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type">
                                            <ItemTemplate>
                                                <asp:Label ID="lblType" Text='<%# Bind("Type") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlEditType" runat="server" CssClass="form-control" SelectedValue='<%# Bind("Type") %>'>
                                                    <asp:ListItem Value="">Select Type</asp:ListItem>
                                                    <asp:ListItem Value="Permanent">Permanent</asp:ListItem>
                                                    <asp:ListItem Value="Temporary">Temporary</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="rfvEditType" runat="server" ControlToValidate="ddlEditType"
                                                    ErrorMessage="Type is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Category">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCategory" Text='<%# Bind("Category") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlEditCategory" runat="server" CssClass="form-control" SelectedValue='<%# Bind("Category") %>' AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                                                    <asp:ListItem Value="">Select Category</asp:ListItem>
                                                    <asp:ListItem Value="Checkdam/water retention">Checkdam/water retention</asp:ListItem>
                                                    <asp:ListItem Value="Dam">Dam</asp:ListItem>
                                                    <asp:ListItem Value="Pond">Pond</asp:ListItem>
                                                    <asp:ListItem Value="Water hole">Water hole</asp:ListItem>
                                                    <asp:ListItem Value="Well">Well</asp:ListItem>
                                                    <asp:ListItem Value="Others">Others</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="rfvEditCategory" runat="server" ControlToValidate="ddlEditCategory"
                                                    ErrorMessage="Category is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Others">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOthers" Text='<%# Bind("Others") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditOthers" Text='<%# Bind("Others") %>' runat="server" CssClass="form-control" oninput="SplCharCheck(this)" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Proposed Year">
                                            <ItemTemplate>
                                                <asp:Label ID="lblProposedYear" Text='<%# Bind("ProposedYear") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlEditProposedYear" runat="server" CssClass="form-control" SelectedValue='<%# Bind("ProposedYear") %>'>
                                                    <asp:ListItem Value="">Select Year</asp:ListItem>
                                                    <asp:ListItem Value="">Select Year</asp:ListItem>
                                                    <asp:ListItem Value="2024">2024</asp:ListItem>
                                                    <asp:ListItem Value="2025">2025</asp:ListItem>
                                                    <asp:ListItem Value="2026">2026</asp:ListItem>
                                                    <asp:ListItem Value="2027">2027</asp:ListItem>
                                                    <asp:ListItem Value="2028">2028</asp:ListItem>
                                                    <asp:ListItem Value="2029">2029</asp:ListItem>
                                                    <asp:ListItem Value="2030">2030</asp:ListItem>
                                                    <asp:ListItem Value="2031">2031</asp:ListItem>
                                                    <asp:ListItem Value="2032">2032</asp:ListItem>
                                                    <asp:ListItem Value="2033">2033</asp:ListItem>
                                                    <asp:ListItem Value="2034">2034</asp:ListItem>
                                                    <asp:ListItem Value="2035">2035</asp:ListItem>
                                                    <asp:ListItem Value="2036">2036</asp:ListItem>
                                                    <asp:ListItem Value="2037">2037</asp:ListItem>
                                                    <asp:ListItem Value="2038">2038</asp:ListItem>
                                                    <asp:ListItem Value="2039">2039</asp:ListItem>
                                                    <asp:ListItem Value="2040">2040</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="rfvEditProposedYear" runat="server" ControlToValidate="ddlEditProposedYear"
                                                    ErrorMessage="Proposed Year is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Compartment Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCompartmentName" Text='<%# Bind("CompartmentName") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditCompartmentName" Text='<%# Bind("CompartmentName") %>' runat="server" CssClass="form-control" oninput="SplCharCheck(this)" />
                                                <asp:RequiredFieldValidator ID="rfvEditCompartmentName" runat="server" ControlToValidate="txtEditCompartmentName"
                                                    ErrorMessage="Compartment Name is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Latitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" Text='<%# Bind("Latitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditLatitude" Text='<%# Bind("Latitude") %>' runat="server" CssClass="form-control" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="rfvEditLatitude" runat="server" ControlToValidate="txtEditLatitude"
                                                    ErrorMessage="Latitude is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Longitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" Text='<%# Bind("Longitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditLongitude" Text='<%# Bind("Longitude") %>' runat="server" CssClass="form-control" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="rfvEditLongitude" runat="server" ControlToValidate="txtEditLongitude"
                                                    ErrorMessage="Longitude is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Proposed Cost (in lakhs)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblProposedCost" Text='<%# Bind("ProposedCost") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditProposedCost" Text='<%# Bind("ProposedCost") %>' runat="server" CssClass="form-control" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="rfvEditProposedCost" runat="server" ControlToValidate="txtEditProposedCost"
                                                    ErrorMessage="Proposed Cost is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Capacity (cubic meter)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCapacity" Text='<%# Bind("Capacity") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditCapacity" Text='<%# Bind("Capacity") %>' runat="server" CssClass="form-control" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="rfvEditCapacity" runat="server" ControlToValidate="txtEditCapacity"
                                                    ErrorMessage="Capacity is required!" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
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
