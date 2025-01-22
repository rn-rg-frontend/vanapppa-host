<%@ Page Title="Van - Trapping/Capture Data" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="TrappingCaptureDatas.aspx.cs" Inherits="vansystem.TrappingCaptureDatas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Trapping/Capture Data</title>
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
                        <a href="TrappingCaptureData.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Trapping/Capture Data</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Trapping/Capture Data</h3>
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
                                                <asp:DropDownList Width="150px" ID="ddlRange" runat="server" CssClass="form-control"></asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvRange" runat="server" ControlToValidate="ddlRange" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Section">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSection" Text='<%# Eval("section") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtSection" runat="server" Text='<%# Eval("section") %>' CssClass="form-control" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvSection" runat="server" ControlToValidate="txtSection" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Date">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDate" Text='<%# Eval("date", "{0:yyyy-MM-dd}") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox  Width="150px" Text='<%# Eval("date", "{0:yyyy-MM-dd}") %>' ID="txtDate" runat="server" CssClass="form-control" placeholder="Date" required="true" TextMode="Date"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Forest Type">
                                            <ItemTemplate>
                                                <asp:Label ID="lblForestType" Text='<%# Eval("forest_type") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlForestType" runat="server" CssClass="form-control">
                                                    <asp:ListItem Value="Alpine Forests" Text="Alpine Forests"></asp:ListItem>
                                                    <asp:ListItem Value="Dry Tropical Forests" Text="Dry Tropical Forests"></asp:ListItem>
                                                    <asp:ListItem Value="Moist Tropical Forests" Text="Moist Tropical Forests"></asp:ListItem>
                                                    <asp:ListItem Value="Montane Subtropical Forests" Text="Montane Subtropical Forests"></asp:ListItem>
                                                    <asp:ListItem Value="Montane Temperate Forests" Text="Montane Temperate Forests"></asp:ListItem>
                                                    <asp:ListItem Value="Sub Alpine Forests" Text="Sub Alpine Forests"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvForestType" runat="server" ControlToValidate="ddlForestType" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Habitat Description">
                                            <ItemTemplate>
                                                <asp:Label ID="lblHabitatDescription" Text='<%# Eval("habitat_description") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtHabitatDescription" runat="server" Text='<%# Eval("habitat_description") %>' CssClass="form-control" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvHabitatDescription" runat="server" ControlToValidate="txtHabitatDescription" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Trap Night">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTrapNight" Text='<%# Eval("trap_night") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtTrapNight" runat="server" CssClass="form-control" Text='<%# Eval("trap_night") %>' required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvTrapNight" runat="server" ControlToValidate="txtTrapNight" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Weather">
                                            <ItemTemplate>
                                                <asp:Label ID="lblWeather" Text='<%# Eval("weather") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlWeather" runat="server" CssClass="form-control">
                                                    <asp:ListItem Value="Clear" Text="Clear"></asp:ListItem>
                                                    <asp:ListItem Value="Cloudy" Text="Cloudy"></asp:ListItem>
                                                    <asp:ListItem Value="Fog" Text="Fog"></asp:ListItem>
                                                    <asp:ListItem Value="Rainy" Text="Rainy"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvWeather" runat="server" ControlToValidate="ddlWeather" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Select Method">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSelectMethod" Text='<%# Eval("select_method") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlSelectMethod" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlSelectMethod_SelectedIndexChanged">
                                                    <asp:ListItem Value="Bat trap" Text="Bat trap"></asp:ListItem>
                                                    <asp:ListItem Value="Cage" Text="Cage"></asp:ListItem>
                                                    <asp:ListItem Value="Camera" Text="Camera"></asp:ListItem>
                                                    <asp:ListItem Value="Elliott Traps" Text="Elliott Traps"></asp:ListItem>
                                                    <asp:ListItem Value="Funnel" Text="Funnel"></asp:ListItem>
                                                    <asp:ListItem Value="Pitfall" Text="Pitfall"></asp:ListItem>
                                                    <asp:ListItem Value="Turtle" Text="Turtle"></asp:ListItem>
                                                    <asp:ListItem Value="Others" Text="Others"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvSelectMethod" runat="server" ControlToValidate="ddlSelectMethod" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Others Specify">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOthersSpecify" Text='<%# Eval("others_specify") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtOthersSpecify" runat="server" CssClass="form-control" Text='<%# Eval("others_specify") %>' required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvOthersSpecify" runat="server" ControlToValidate="txtOthersSpecify" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Trap Nos">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTrapNos" Text='<%# Eval("trap_nos") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtTrapNos" runat="server" CssClass="form-control" Text='<%# Eval("trap_nos") %>' required="true" oninput="NumberCheck(this)"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvTrapNos" runat="server" ControlToValidate="txtTrapNos" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Latitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" Text='<%# Eval("latitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtLatitude" runat="server" CssClass="form-control" Text='<%# Eval("latitude") %>' required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvLatitude" runat="server" ControlToValidate="txtLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Longitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" Text='<%# Eval("longitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtLongitude" runat="server" CssClass="form-control" Text='<%# Eval("longitude") %>' required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvLongitude" runat="server" ControlToValidate="txtLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Species">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAnimalSpecies" Text='<%# Eval("animal_species") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtAnimalSpecies" runat="server" CssClass="form-control" Text='<%# Eval("animal_species") %>' required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvAnimalSpecies" runat="server" ControlToValidate="txtAnimalSpecies" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Count (Nos)">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCountNos" Text='<%# Eval("count_nos") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtCountNos" runat="server" CssClass="form-control" Text='<%# Eval("count_nos") %>' required="true" oninput="NumberCheck(this)"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvCountNos" runat="server" ControlToValidate="txtCountNos" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Age">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAge" Text='<%# Eval("age") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtAge" runat="server" CssClass="form-control" Text='<%# Eval("age") %>' required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Sex">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSex" Text='<%# Eval("sex") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlSex" runat="server" CssClass="form-control">
                                                    <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                                                    <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                                                    <asp:ListItem Value="Could not be identified" Text="Could not be identified"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvSex" runat="server" ControlToValidate="ddlSex" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Addln Info">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAddlnInfo" Text='<%# Eval("addln_info") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtAddlnInfo" runat="server" CssClass="form-control" Text='<%# Eval("addln_info") %>' MaxLength="200" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvAddlnInfo" runat="server" ControlToValidate="txtAddlnInfo" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Purpose of Capture">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPurposeOfCapture" Text='<%# Eval("purpose_of_capture") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlPurposeOfCapture" runat="server" CssClass="form-control">
                                                    <asp:ListItem Value="Pop. Estimation" Text="Pop. Estimation"></asp:ListItem>
                                                    <asp:ListItem Value="Disease Surveillance" Text="Disease Surveillance"></asp:ListItem>
                                                    <asp:ListItem Value="HWC mitigation" Text="HWC mitigation"></asp:ListItem>
                                                    <asp:ListItem Value="Research" Text="Research"></asp:ListItem>
                                                    <asp:ListItem Value="Trans-Location" Text="Trans-Location"></asp:ListItem>
                                                    <asp:ListItem Value="Others" Text="Others"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvPurposeOfCapture" runat="server" ControlToValidate="ddlPurposeOfCapture" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemarks" Text='<%# Eval("remarks") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox Width="150px" ID="txtRemarks" runat="server" CssClass="form-control" Text='<%# Eval("remarks") %>' MaxLength="200" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvRemarks" runat="server" ControlToValidate="txtRemarks" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

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
