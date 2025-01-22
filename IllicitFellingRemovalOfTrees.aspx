<%@ Page Title="Van -  Details of Illicit felling and removal of trees" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="IllicitFellingRemovalOfTrees.aspx.cs" Inherits="vansystem.IllicitFellingRemovalOfTrees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van -  Details of Illicit felling and removal of trees</title>
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
                        <a href="IllicitFellingRemovalOfTree.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add details of Illicit felling and removal of trees	</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Details of Illicit felling and removal of trees</h3>
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
                                        <asp:TemplateField HeaderText="Total Cases Booked">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltotal_cases_booked" Text='<%# Bind("total_cases_booked") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="total_cases_booked" Text='<%# Bind("total_cases_booked") %>' runat="server" Display="Dynamic" placeholder="Total Cases Booked" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" ControlToValidate="total_cases_booked" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Charged in Court">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcharged_in_court" Text='<%# Bind("charged_in_court") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="charged_in_court" Text='<%# Bind("charged_in_court") %>' runat="server" Display="Dynamic" placeholder="Charged in Court" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ControlToValidate="charged_in_court" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Convicted">
                                            <ItemTemplate>
                                                <asp:Label ID="lblconvicted" Text='<%# Bind("convicted") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="convicted" Text='<%# Bind("convicted") %>' runat="server" Display="Dynamic" placeholder="Convicted" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server" ControlToValidate="convicted" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Acquitted">
                                            <ItemTemplate>
                                                <asp:Label ID="lblacquitted" Text='<%# Bind("acquitted") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="acquitted" Text='<%# Bind("acquitted") %>' runat="server" Display="Dynamic" placeholder="Acquitted" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" runat="server" ControlToValidate="acquitted" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Compounded as per Court Directions">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcompounded_court_directions" Text='<%# Bind("compounded_court_directions") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="compounded_court_directions" Text='<%# Bind("compounded_court_directions") %>' runat="server" Display="Dynamic" placeholder="Compounded as per Court Directions" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" runat="server" ControlToValidate="compounded_court_directions" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Pending in the Court">
                                            <ItemTemplate>
                                                <asp:Label ID="lblpending_in_court" Text='<%# Bind("pending_in_court") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="pending_in_court" Text='<%# Bind("pending_in_court") %>' runat="server" Display="Dynamic" placeholder="Pending in the Court" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" runat="server" ControlToValidate="pending_in_court" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Compounded by Department">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcompounded_by_department" Text='<%# Bind("compounded_by_department") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="compounded_by_department" Text='<%# Bind("compounded_by_department") %>' runat="server" Display="Dynamic" placeholder="Compounded by Department" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" Display="Dynamic" runat="server" ControlToValidate="compounded_by_department" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dropped">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldropped" Text='<%# Bind("dropped") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="dropped" Text='<%# Bind("dropped") %>' runat="server" Display="Dynamic" placeholder="Dropped" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" runat="server" ControlToValidate="dropped" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Transferred to Other Division">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltransferred_to_other_division" Text='<%# Bind("transferred_to_other_division") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="transferred_to_other_division" Text='<%# Bind("transferred_to_other_division") %>' runat="server" Display="Dynamic" placeholder="Transferred to Other Division" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" runat="server" ControlToValidate="transferred_to_other_division" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Pending Investigation">
                                            <ItemTemplate>
                                                <asp:Label ID="lblpending_investigation" Text='<%# Bind("pending_investigation") %>' runat="server" />

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="pending_investigation" Text='<%# Bind("pending_investigation") %>' runat="server" Display="Dynamic" placeholder="Pending Investigation" CssClass="form-control" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="Dynamic" runat="server" ControlToValidate="pending_investigation" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Year">
                                            <ItemTemplate>
                                                <asp:Label ID="lblyear" Text='<%# Bind("year") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlyear" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control">
                                                    <asp:ListItem Value="2015">2015</asp:ListItem>
                                                    <asp:ListItem Value="2016">2016</asp:ListItem>
                                                    <asp:ListItem Value="2017">2017</asp:ListItem>
                                                    <asp:ListItem Value="2018">2018</asp:ListItem>
                                                    <asp:ListItem Value="2019">2019</asp:ListItem>
                                                    <asp:ListItem Value="2020">2020</asp:ListItem>
                                                    <asp:ListItem Value="2021">2021</asp:ListItem>
                                                    <asp:ListItem Value="2022">2022</asp:ListItem>
                                                    <asp:ListItem Value="2023">2023</asp:ListItem>
                                                    <asp:ListItem Value="2024">2024</asp:ListItem>
                                                    <asp:ListItem Value="2025">2025</asp:ListItem>
                                                    <asp:ListItem Value="2026">2026</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                                                    ControlToValidate="ddlyear" ErrorMessage="Please fill out this field."
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
