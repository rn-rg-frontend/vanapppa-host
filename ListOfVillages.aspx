<%@ Page Title="Van - List of Village - New Village Detail" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ListOfVillages.aspx.cs" Inherits="vansystem.ListOfVillages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - List of Village - New Village Detail</title>
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

        function isAlphabet(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122) || charCode == 32) {
                return true;
            }
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="app-content">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="tile" style="margin-left: -10px;">
                    <div class="pull-right">
                        <a href="ListOfVillage.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Village Details</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">List of Village - New Village Detail</h3>
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
                                    rules="rows" CellPadding="4" CellSpacing="4" Width="100%" DataKeyNames="id" OnRowCommand="GVget_RowCommand" OnPageIndexChanging="GVgetuser_PageIndexChanging"
                                    OnRowEditing="GVgetuser_RowEditing"
                                    OnRowCancelingEdit="GVgetuser_RowCancelingEdit"
                                    OnRowUpdating="GVgetuser_RowUpdating"
                                    OnRowDataBound="GridView1_RowDataBound" AllowPaging="true" PageSize="10">
                                    <RowStyle BackColor="White" BorderColor="ControlLight" />
                                    <HeaderStyle BorderColor="ControlLight" />
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <%--<asp:BoundField DataField="division" HeaderText="Division" ReadOnly="True"></asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="PA">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtSection" Width="150px" CssClass="form-control" runat="server" Text='<%# Bind("section") %>' onkeypress="return isAlphabet(event)"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSection" ErrorMessage="Please fill out this field." ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblSection" runat="server" Text='<%# Bind("section") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Range">
                                            <ItemTemplate>
                                                <asp:Label ID="txtRange" runat="server" Text='<%# Bind("range") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlrange" Width="150px" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlrange_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlrange" ErrorMessage="Please fill out this field." CssClass="required-field-message"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Beat">
                                            <ItemTemplate>
                                                <asp:Label ID="txtBeat" runat="server" Text='<%# Bind("beat") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlbeat" Width="150px" runat="server" CssClass="form-control"></asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator33" runat="server" ControlToValidate="ddlbeat" ErrorMessage="Please fill out this field." CssClass="required-field-message"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Name Of The Village">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtVillageName" Width="150px" CssClass="form-control" MaxLength="25" onkeypress="return isAlphabet(event)" runat="server" Text='<%# Bind("name_of_the_village") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtVillageName" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblVillageName" runat="server" Text='<%# Bind("name_of_the_village") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="latitude" HeaderText="Village Location - Latitude" ReadOnly="True"></asp:BoundField>
                                        <asp:BoundField DataField="longitude" HeaderText="Village Location - Longitude" ReadOnly="True"></asp:BoundField>

                                        <asp:TemplateField HeaderText="District">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDistrict" Width="150px" CssClass="form-control" onkeypress="return isAlphabet(event)" runat="server" Text='<%# Bind("district")  %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDistrict" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDistrict" runat="server" Text='<%# Bind("district") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Subdistrict">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtSubdistrict" Width="150px" CssClass="form-control" onkeypress="return isAlphabet(event)" runat="server" Text='<%# Bind("subdistrict") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtSubdistrict" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblSubdistrict" runat="server" Text='<%# Bind("subdistrict") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Block">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtBlock" Width="150px" CssClass="form-control" onkeypress="return isAlphabet(event)" runat="server" Text='<%# Bind("block") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtBlock" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblBlock" runat="server" Text='<%# Bind("block") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Status of villages">
                                            <EditItemTemplate>
                                                <asp:DropDownList  Width="150px" ID="ddlStatusOfVillage" runat="server" AutoPostBack="true" CssClass="form-control">
                                                    <asp:ListItem>Forest Village</asp:ListItem>
                                                    <asp:ListItem>Revenue village</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlStatusOfVillage" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblStatusOfVillage" runat="server" Text='<%# Bind("status_of_village") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Distance of village from the forest/PA boundary (in kms)">
                                            <EditItemTemplate>
                                                <asp:TextBox  ID="txtDistanceOfVillage" Width="150px" CssClass="form-control" runat="server" oninput="DecimalCheck(this)" Text='<%# Bind("distance_of_village") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDistanceOfVillage" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblDistanceOfVillage" runat="server" Text='<%# Bind("distance_of_village") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="EDC Formed">
                                            <EditItemTemplate>
                                                <asp:DropDownList  Width="150px" ID="ddEdcFormed" runat="server" OnSelectedIndexChanged="ddlselectedcformed_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddEdcFormed" ErrorMessage="Please fill out this field." CssClass="required-field-message" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblEdcFormed" runat="server" Text='<%# Bind("edc_formed") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Name Of EDC">
                                            <EditItemTemplate>
                                                <asp:TextBox  Width="150px" ID="txtNameOfEdc" onkeypress="return isAlphabet(event)" CssClass="form-control" runat="server" Text='<%# Bind("name_of_edc") %>'></asp:TextBox>
                                               
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblNameOfEdc" runat="server" Text='<%# Bind("name_of_edc") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Human Population">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtHumanPopulation" Width="150px" oninput="NumberCheck(this)" CssClass="form-control" runat="server" Text='<%# Bind("human_population") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtHumanPopulation" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblHumanPopulation" runat="server" Text='<%# Bind("human_population") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Cattle Population">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtCattlePopulation" Width="150px" oninput="NumberCheck(this)" CssClass="form-control" runat="server" Text='<%# Bind("cattle_population") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCattlePopulation" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblCattlePopulation" runat="server" Text='<%# Bind("cattle_population") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agricultural Area (Dry)">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtAgriculturalAreaDry" Width="150px" CssClass="form-control" oninput="DecimalCheck(this)" runat="server" Text='<%# Bind("agricultural_area_dry") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAgriculturalAreaDry" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgriculturalAreaDry" runat="server" Text='<%# Bind("agricultural_area_dry") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Agricultural Area (Wet)">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtAgriculturalAreaWet" Width="150px" CssClass="form-control" oninput="DecimalCheck(this)" runat="server" Text='<%# Bind("agricultural_area_wet") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAgriculturalAreaWet" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblAgriculturalAreaWet" runat="server" Text='<%# Bind("agricultural_area_wet") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Main Crops">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtMainCrops" Width="150px" CssClass="form-control" runat="server" Text='<%# Bind("main_crops") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtMainCrops" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblMainCrops" runat="server" Text='<%# Bind("main_crops") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Number Of Wells/Borewells">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNumberOfWells" Width="150px" CssClass="form-control" oninput="NumberCheck(this)" runat="server" Text='<%# Bind("number_of_wells") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtNumberOfWells" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblNumberOfWells" runat="server" Text='<%# Bind("number_of_wells") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Number Of Tanks">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNumberOfTanks" Width="150px" CssClass="form-control" runat="server" oninput="NumberCheck(this)" Text='<%# Bind("number_of_tanks") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtNumberOfTanks" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblNumberOfTanks" runat="server" Text='<%# Bind("number_of_tanks") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtRemark" Width="150px" CssClass="form-control" runat="server" Text='<%# Bind("remark") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemark" runat="server" Text='<%# Bind("remark") %>'></asp:Label>
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
