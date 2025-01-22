<%@ Page Title="Van - Plants- Disease and Mortality" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="PlantsDiseaseAndMortalities.aspx.cs" Inherits="vansystem.PlantsDiseaseAndMortalities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Plants- Disease and Mortality</title>
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
                        <a href="PlantsDiseaseAndMortality.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Plants-Disease and Mortality</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Plants- Disease and Mortality</h3>
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

                                        <asp:TemplateField HeaderText="Range">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRange" Text='<%# Eval("range") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlRange" runat="server" CssClass="form-control" required="true">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvRange" runat="server" ControlToValidate="ddlRange" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Species Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSpeciesName" Text='<%# Eval("species_name") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtSpeciesName"  runat="server" Text='<%# Eval("species_name") %>' CssClass="form-control"  required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvSpeciesName" runat="server" ControlToValidate="txtSpeciesName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Compartment Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCompartmentName" Text='<%# Eval("compartment_name") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtCompartmentName" runat="server" Text='<%# Eval("compartment_name") %>' CssClass="form-control" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvCompartmentName" runat="server" ControlToValidate="txtCompartmentName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Landmark">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLandmark" Text='<%# Eval("landmark") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtLandmark" runat="server" Text='<%# Eval("landmark") %>' CssClass="form-control"  required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvLandmark" runat="server" ControlToValidate="txtLandmark" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Latitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" Text='<%# Eval("latitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtLatitude" runat="server" Text='<%# Eval("latitude") %>' CssClass="form-control"  required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvLatitude" runat="server" ControlToValidate="txtLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Longitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" Text='<%# Eval("longitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtLongitude" runat="server" Text='<%# Eval("longitude") %>' CssClass="form-control"  required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvLongitude" runat="server" ControlToValidate="txtLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Year">
                                            <ItemTemplate>
                                                <asp:Label ID="lblYear" Text='<%# Eval("year") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control" required="true">
                                                    <asp:ListItem Text="Select Year" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                                                    <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                                                    <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                                                    <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                                                    <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                                                    <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvYear" runat="server" ControlToValidate="ddlYear" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Particulars of Disease">
                                            <ItemTemplate>
                                                <asp:Label ID="lblParticularsOfDisease" Text='<%# Eval("particulars_of_disease") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlParticularsOfDisease" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="ddlParticularsOfDisease_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select Disease" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="External" Value="external"></asp:ListItem>
                                                    <asp:ListItem Text="Insect" Value="Insect"></asp:ListItem>
                                                    <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvParticularsOfDisease" runat="server" ControlToValidate="ddlParticularsOfDisease" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="If Others Specify">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOthersSpecify" Text='<%# Eval("others_specify") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtOthersSpecify"  runat="server" Text='<%# Eval("others_specify") %>' CssClass="form-control" MaxLength="200"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Areas Affected (hectares)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAreasAffected" Text='<%# Eval("areas_affected") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtAreasAffected" runat="server" CssClass="form-control" Text='<%# Eval("areas_affected") %>' required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvAreasAffected" runat="server" ControlToValidate="txtAreasAffected" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemarks" Text='<%# Eval("remarks") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" Text='<%# Eval("remarks") %>' MaxLength="200"></asp:TextBox>

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
