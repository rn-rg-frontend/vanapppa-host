<%@ Page Title="Van - Human Resource Requirement" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="HumanResourceRequirements.aspx.cs" Inherits="vansystem.HumanResourceRequirements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Human Resource Requirement</title>
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
        function isNumber(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }

        function isDecimal(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if ((charCode != 46 || $(this).val().indexOf('.') != -1) && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
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
                        <a href="HumanResourceRequirement.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Human Resource Requirement	</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Human Resource Requirement</h3>
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

                                        <asp:TemplateField HeaderText="Category of Post">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditCategoryOfPost" runat="server" Text='<%# Bind("category_of_post") %>' CssClass="form-control" />
                                                <asp:RequiredFieldValidator ID="rfvEditCategoryOfPost" runat="server" ControlToValidate="txtEditCategoryOfPost" ErrorMessage="Category of Post is required." ForeColor="Red" Display="Dynamic" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblCategoryOfPost" runat="server" Text='<%# Bind("category_of_post") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Status">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlEditStatus" runat="server" CssClass="form-control">
                                                    <asp:ListItem Text="Select Status" Value=""></asp:ListItem>
<asp:ListItem Text="Permanent" Value="Permanent"></asp:ListItem>
<asp:ListItem Text="Temporary" Value="Temporary"></asp:ListItem>
<asp:ListItem Text="Contractual" Value="Contractual"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="rfvEditStatus" runat="server" ControlToValidate="ddlEditStatus" InitialValue="" ErrorMessage="Status is required." ForeColor="Red" Display="Dynamic" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Number">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditNumber" runat="server" Text='<%# Bind("number") %>' CssClass="form-control" onkeypress="return isNumber(event)" />
                                                <asp:RequiredFieldValidator ID="rfvEditNumber" runat="server" ControlToValidate="txtEditNumber" ErrorMessage="Number is required." ForeColor="Red" Display="Dynamic" />
                                                <asp:RangeValidator ID="rvEditNumber" runat="server" ControlToValidate="txtEditNumber" MinimumValue="1" MaximumValue="10000" Type="Integer" ErrorMessage="Number must be between 1 and 10000." ForeColor="Red" Display="Dynamic" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblNumber" runat="server" Text='<%# Bind("number") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Recruited">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditRecruited" runat="server" Text='<%# Bind("status_recruited") %>' CssClass="form-control" onkeypress="return isNumber(event)" />
                                                <asp:RequiredFieldValidator ID="rfvEditRecruited" runat="server" ControlToValidate="txtEditRecruited" ErrorMessage="Recruited number is required." ForeColor="Red" Display="Dynamic" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblRecruited" runat="server" Text='<%# Bind("status_recruited") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Vacant">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditVacant" runat="server" Text='<%# Bind("status_vacant") %>' CssClass="form-control" onkeypress="return isNumber(event)" />
                                                <asp:RequiredFieldValidator ID="rfvEditVacant" runat="server" ControlToValidate="txtEditVacant" ErrorMessage="Vacant number is required." ForeColor="Red" Display="Dynamic" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblVacant" runat="server" Text='<%# Bind("status_vacant") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Scale of Pay">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditScaleOfPay" runat="server" Text='<%# Bind("scale_of_pay", "{0:N2}") %>' CssClass="form-control" onkeypress="return isDecimal(event)" />
                                                <asp:RequiredFieldValidator ID="rfvEditScaleOfPay" runat="server" ControlToValidate="txtEditScaleOfPay" ErrorMessage="Scale of Pay is required." ForeColor="Red" Display="Dynamic" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblScaleOfPay" runat="server" Text='<%# Bind("scale_of_pay", "{0:N2}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Intended Deployment">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlIntendedDeployment" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="ddlIntendedDeployment_SelectedIndexChanged">
     <asp:ListItem Text="Select Deployment" Value=""></asp:ListItem>
     <asp:ListItem Text="Protection staff" Value="Protection staff"></asp:ListItem>
     <asp:ListItem Text="Conservation Education" Value="Conservation Education"></asp:ListItem>
     <asp:ListItem Text="Ecotourism" Value="Ecotourism"></asp:ListItem>
     <asp:ListItem Text="Research" Value="Research"></asp:ListItem>
     <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
 </asp:DropDownList>
 <asp:RequiredFieldValidator Display="Dynamic" ID="rfvIntendedDeployment" runat="server" ControlToValidate="ddlIntendedDeployment" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblIntendedDeployment" runat="server" Text='<%# Bind("intended_deployment") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Others">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditOthers" runat="server" Text='<%# Bind("others") %>' CssClass="form-control" />
                                                
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblOthers" runat="server" Text='<%# Bind("others") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditRemarks" runat="server" Text='<%# Bind("remarks") %>' CssClass="form-control" />
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemarks" runat="server" Text='<%# Bind("remarks") %>'></asp:Label>
                                            </ItemTemplate>
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
