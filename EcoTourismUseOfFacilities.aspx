<%@ Page Title="Van - EcoTourism - Use of facilities" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="EcoTourismUseOfFacilities.aspx.cs" Inherits="vansystem.EcoTourismUseOfFacilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - EcoTourism - Use of facilities</title>
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

            calculateTotal();  // Recalculate the total on input change
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
                        <a href="EcoTourismUseOfFacility.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add EcoTourism - Use of facilities</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">EcoTourism - Use of facilities</h3>
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
                                        <asp:TemplateField HeaderText="Name of Complex">
                                            <ItemTemplate>
                                                <asp:Label ID="lblname_of_complex" Text='<%# Bind("name_of_complex") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="name_of_complex" Text='<%# Bind("name_of_complex") %>' runat="server" CssClass="form-control" placeholder="Name of Complex" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="name_of_complex" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Class of Accommodation">
                                            <ItemTemplate>
                                                <asp:Label ID="lblclass_of_accommodation" Text='<%# Bind("class_of_accommodation") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlclass_of_accommodation" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlClassOfAccommodation_SelectedIndexChanged">
                                                    <asp:ListItem Value="" Text="Select"></asp:ListItem>
                                                    <asp:ListItem Value="AC rooms" Text="AC rooms"></asp:ListItem>
                                                    <asp:ListItem Value="Cottages" Text="Cottages"></asp:ListItem>
                                                    <asp:ListItem Value="Mud houses" Text="Mud houses"></asp:ListItem>
                                                    <asp:ListItem Value="Non AC rooms" Text="Non AC rooms"></asp:ListItem>
                                                    <asp:ListItem Value="Tented camps" Text="Tented camps"></asp:ListItem>
                                                    <asp:ListItem Value="Tree houses" Text="Tree houses"></asp:ListItem>
                                                    <asp:ListItem Value="Others" Text="Others"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                    ControlToValidate="ddlclass_of_accommodation" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Others">
                                            <ItemTemplate>
                                                <asp:Label ID="lblothers" Text='<%# Bind("others") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="others" Text='<%# Bind("others") %>' runat="server" CssClass="form-control" placeholder="Others" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ControlToValidate="others" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Capacity (No. of beds)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblcapacity_no_of_beds" Text='<%# Bind("capacity_no_of_beds") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="capacity_no_of_beds" Text='<%# Bind("capacity_no_of_beds") %>' runat="server" CssClass="form-control" placeholder="Capacity (No. of beds)" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ControlToValidate="capacity_no_of_beds" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Year">
                                            <ItemTemplate>
                                                <asp:Label ID="lblyear" Text='<%# Bind("year") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlyear" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control">
                                                    <asp:ListItem Value="" Text="Select"></asp:ListItem>
                                                    <asp:ListItem Value="2010" Text="2010"></asp:ListItem>
                                                    <asp:ListItem Value="2011" Text="2011"></asp:ListItem>
                                                    <asp:ListItem Value="2012" Text="2012"></asp:ListItem>
                                                    <asp:ListItem Value="2013" Text="2013"></asp:ListItem>
                                                    <asp:ListItem Value="2014" Text="2014"></asp:ListItem>
                                                    <asp:ListItem Value="2015" Text="2015"></asp:ListItem>
                                                    <asp:ListItem Value="2016" Text="2016"></asp:ListItem>
                                                    <asp:ListItem Value="2017" Text="2017"></asp:ListItem>
                                                    <asp:ListItem Value="2018" Text="2018"></asp:ListItem>
                                                    <asp:ListItem Value="2019" Text="2019"></asp:ListItem>
                                                    <asp:ListItem Value="2020" Text="2020"></asp:ListItem>
                                                    <asp:ListItem Value="2021" Text="2021"></asp:ListItem>
                                                    <asp:ListItem Value="2022" Text="2022"></asp:ListItem>
                                                    <asp:ListItem Value="2023" Text="2023"></asp:ListItem>
                                                    <asp:ListItem Value="2024" Text="2024"></asp:ListItem>
                                                    <asp:ListItem Value="2024" Text="2025"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                    ControlToValidate="ddlyear" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Month">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmonth" Text='<%# Bind("month") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlmonth" Width="150px" runat="server" AutoPostBack="true" CssClass="form-control">
                                                    <asp:ListItem Value="" Text="Select"></asp:ListItem>
                                                    <asp:ListItem Value="January" Text="January"></asp:ListItem>
                                                    <asp:ListItem Value="February" Text="February"></asp:ListItem>
                                                    <asp:ListItem Value="March" Text="March"></asp:ListItem>
                                                    <asp:ListItem Value="April" Text="April"></asp:ListItem>
                                                    <asp:ListItem Value="May" Text="May"></asp:ListItem>
                                                    <asp:ListItem Value="June" Text="June"></asp:ListItem>
                                                    <asp:ListItem Value="July" Text="July"></asp:ListItem>
                                                    <asp:ListItem Value="August" Text="August"></asp:ListItem>
                                                    <asp:ListItem Value="September" Text="September"></asp:ListItem>
                                                    <asp:ListItem Value="October" Text="October"></asp:ListItem>
                                                    <asp:ListItem Value="November" Text="November"></asp:ListItem>
                                                    <asp:ListItem Value="December" Text="December"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                                    ControlToValidate="ddlmonth" ErrorMessage="Please fill out this field."
                                                    CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Month Capacity (beds/month)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmonth_capacity_beds_per_month" Text='<%# Bind("month_capacity_beds_per_month") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="month_capacity_beds_per_month" Text='<%# Bind("month_capacity_beds_per_month") %>' runat="server" CssClass="form-control" placeholder="Month Capacity (beds/month)" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ControlToValidate="month_capacity_beds_per_month" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Indian Male">
                                            <ItemTemplate>
                                                <asp:Label ID="lblindian_male" Text='<%# Bind("indian_male") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="indian_male" Text='<%# Bind("indian_male") %>' runat="server" CssClass="form-control" placeholder="Indian Male" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ControlToValidate="indian_male" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Indian Female">
                                            <ItemTemplate>
                                                <asp:Label ID="lblindian_female" Text='<%# Bind("indian_female") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="indian_female" Text='<%# Bind("indian_female") %>' runat="server" CssClass="form-control" placeholder="Indian Female" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" ControlToValidate="indian_female" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Indian Children">
                                            <ItemTemplate>
                                                <asp:Label ID="lblindian_children" Text='<%# Bind("indian_children") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="indian_children" Text='<%# Bind("indian_children") %>' runat="server" CssClass="form-control" placeholder="Indian Children" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic" ControlToValidate="indian_children" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Foreigner Male">
                                            <ItemTemplate>
                                                <asp:Label ID="lblforeigner_male" Text='<%# Bind("foreigner_male") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="foreigner_male" Text='<%# Bind("foreigner_male") %>' runat="server" CssClass="form-control" placeholder="Foreigner Male" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="Dynamic" ControlToValidate="foreigner_male" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Foreigner Female">
                                            <ItemTemplate>
                                                <asp:Label ID="lblforeigner_female" Text='<%# Bind("foreigner_female") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="foreigner_female" Text='<%# Bind("foreigner_female") %>' runat="server" CssClass="form-control" placeholder="Foreigner Female" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" Display="Dynamic" ControlToValidate="foreigner_female" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Foreigner Children">
                                            <ItemTemplate>
                                                <asp:Label ID="lblforeigner_children" Text='<%# Bind("foreigner_children") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="foreigner_children" Text='<%# Bind("foreigner_children") %>' runat="server" CssClass="form-control" placeholder="Foreigner Children" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" Display="Dynamic" ControlToValidate="foreigner_children" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Total number of visitors">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltotal_number_of_visitors" Text='<%# Bind("total_number_of_visitors") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="total_number_of_visitors" Text='<%# Bind("total_number_of_visitors") %>' runat="server" CssClass="form-control" placeholder="Total number of visitors" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" Display="Dynamic" ControlToValidate="total_number_of_visitors" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Total Occupancy">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltotal_occupancy_during_the_month" Text='<%# Bind("total_occupancy_during_the_month") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="total_occupancy_during_the_month" Text='<%# Bind("total_occupancy_during_the_month") %>' runat="server" CssClass="form-control" placeholder="Total Occupancy" oninput="NumberCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" Display="Dynamic" ControlToValidate="total_occupancy_during_the_month" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Revenue (in lakhs)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblrevenue" Text='<%# Bind("revenue") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="revenue" Text='<%# Bind("revenue") %>' runat="server" CssClass="form-control" placeholder="Revenue (in lakhs)" oninput="DecimalCheck(this)" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" Display="Dynamic" ControlToValidate="revenue" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remarks">
                                            <ItemTemplate>
                                                <asp:Label ID="lblremarks" Text='<%# Bind("remarks") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="remarks" Text='<%# Bind("remarks") %>' runat="server" CssClass="form-control"  Display="Dynamic"  placeholder="Remarks"  />
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
