<%@ Page Title="Van - Approach and Access" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ApproachAndAccesses.aspx.cs" Inherits="vansystem.ApproachAndAccesses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Approach and Access</title>
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

        .required-field-message {
            color: Red;
        }
    </style>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="app-content">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="tile" style="margin-left: -10px;">
                    <div class="pull-right">
                        <a href="ApproachAndAccess.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Approach And Access</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Approach and Access</h3>
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

                                        <asp:TemplateField HeaderText="Nearest airport name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNearestAirportName" Text='<%# Bind("nearest_airport_name") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtNearestAirportName" CssClass="form-control" Text='<%# Bind("nearest_airport_name") %>' runat="server" required="true" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorNearestAirport" runat="server" ControlToValidate="txtNearestAirportName" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Distance to nearest airport (in km)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDistanceToNearestAirport" Text='<%# Bind("distance_to_nearest_airport") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtDistanceToNearestAirport" CssClass="form-control" Text='<%# Bind("distance_to_nearest_airport") %>' runat="server" required="true" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorDistanceAirport" runat="server" ControlToValidate="txtDistanceToNearestAirport" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Nearest railway station name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNearestRailwayStationName" Text='<%# Bind("nearest_railway_station_name") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtNearestRailwayStationName" CssClass="form-control" Text='<%# Bind("nearest_railway_station_name") %>' required="true" runat="server" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorNearestRailway" runat="server" ControlToValidate="txtNearestRailwayStationName" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Distance to nearest railway station (in km)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDistanceToNearestRailwayStation" Text='<%# Bind("distance_to_nearest_railway_station") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtDistanceToNearestRailwayStation" CssClass="form-control" Text='<%# Bind("distance_to_nearest_railway_station") %>' required="true" runat="server" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorDistanceRailway" runat="server" ControlToValidate="txtDistanceToNearestRailwayStation" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Name or number of the road">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNameOfTheRoad" Text='<%# Bind("name_of_the_road") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtNameOfTheRoad" CssClass="form-control" Text='<%# Bind("name_of_the_road") %>' runat="server" required="true" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorNameRoad" runat="server" ControlToValidate="txtNameOfTheRoad" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Number of the road">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNumberOfTheRoad" Text='<%# Bind("number_of_the_road") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtNumberOfTheRoad" CssClass="form-control" Text='<%# Bind("number_of_the_road") %>' runat="server" required="true" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorNumberRoad" runat="server" ControlToValidate="txtNumberOfTheRoad" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Range">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRange" Text='<%# Bind("range") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlrange" runat="server" OnSelectedIndexChanged="ddlselectrange_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlrange" ErrorMessage="Please fill out this field." CssClass="required-field-message"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Beat">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBeat" Text='<%# Bind("beat") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlbeat" runat="server" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlbeat" ErrorMessage="Please fill out this field." CssClass="required-field-message"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="From">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFrom" Text='<%# Bind("from") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox  Width="150px" ID="txtFrom" CssClass="form-control" Text='<%# Bind("from") %>' runat="server" required="true" oninput="SplCharCheck(this)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorFrom" runat="server" ControlToValidate="txtFrom" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="To">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTo" Text='<%# Bind("to") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtTo" CssClass="form-control" Text='<%# Bind("to") %>' runat="server" required="true" oninput="SplCharCheck(this)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorTo" runat="server" ControlToValidate="txtTo" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Total length">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTotalLength" Text='<%# Bind("total_length") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtTotalLength" CssClass="form-control" Text='<%# Bind("total_length") %>' runat="server" required="true" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorTotalLength" runat="server" ControlToValidate="txtTotalLength" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Length within PA">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLengthWithinPA" Text='<%# Bind("length_within_pa") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtLengthWithinPA" CssClass="form-control" Text='<%# Bind("length_within_pa") %>' runat="server" required="true" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorLengthPA" runat="server" ControlToValidate="txtLengthWithinPA" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Width">
                                            <ItemTemplate>
                                                <asp:Label ID="lblWidth" Text='<%# Bind("width") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtWidth" CssClass="form-control" Text='<%# Bind("width") %>' runat="server" required="true" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorWidth" runat="server" ControlToValidate="txtWidth" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Class">
                                            <ItemTemplate>
                                                <asp:Label ID="lblClassType" Text='<%# Bind("class_type") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlClassType" runat="server" CssClass="form-control" required="true">
                                                    <asp:ListItem Text="Select Class Type" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="Earth" Value="Earth"></asp:ListItem>
                                                    <asp:ListItem Text="Metal" Value="Metal"></asp:ListItem>
                                                    <asp:ListItem Text="Block topped" Value="Block topped"></asp:ListItem>
                                                    <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvClassType" runat="server" ControlToValidate="ddlClassType" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Whether permitted when notified or recommended by the NBWL/ SCNBWL">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPermitted" Text='<%# Bind("permitted") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlPermitted" runat="server" CssClass="form-control" required="true">
                                                    <asp:ListItem Text="Select Permission Status" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                                    <asp:ListItem Text="Yet to be" Value="Yet to be"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvPermitted" runat="server" ControlToValidate="ddlPermitted" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Govt order no. and date of right or way/ Use permitted">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOrderNoAndDate" Text='<%# Bind("order_no_and_date") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtOrderNoAndDate" CssClass="form-control" Text='<%# Bind("order_no_and_date") %>' runat="server" required="true" oninput="SplCharCheck(this)" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorOrderNo" runat="server" ControlToValidate="txtOrderNoAndDate" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:Label ID="lblStatus" Text='<%# Bind("status") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlStatus" runat="server" CssClass="form-control" required="true">
                                                    <asp:ListItem Text="Select Status" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="Forest road" Value="Forest road"></asp:ListItem>
                                                    <asp:ListItem Text="PWD road" Value="PWD road"></asp:ListItem>
                                                    <asp:ListItem Text="District road" Value="District road"></asp:ListItem>
                                                    <asp:ListItem Text="State Highway" Value="State Highway"></asp:ListItem>
                                                    <asp:ListItem Text="National Highway" Value="National Highway"></asp:ListItem>
                                                    <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvStatus" runat="server" ControlToValidate="ddlStatus" InitialValue="" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemark2" Text='<%# Bind("remark") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtRemark" CssClass="form-control" Text='<%# Bind("remark") %>' runat="server" TextMode="MultiLine" />
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidatorRemark2" runat="server" ControlToValidate="txtRemark" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
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
