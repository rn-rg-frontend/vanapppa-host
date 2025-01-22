<%@ Page Title="Van -  Trends in Animal Population (Year wise)" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="AnimalPopulationTrends.aspx.cs" Inherits="vansystem.AnimalPopulationTrends" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van -  Trends in Animal Population (Year wise)</title>
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

             calculateTotal(input);  // Recalculate the total on input change
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

        <script type="text/javascript">

            function calculateTotal(inputElement) {
                // Get the parent row (tr) of the changed input field
                var row = inputElement.closest('tr');

                // Get the ID of each control using the row and partial IDs
                var adultMaleControlId = getControlIdFromRow(row, 'txtAdultMale');
                var adultFemaleControlId = getControlIdFromRow(row, 'txtAdultFemale');
                var subAdultControlId = getControlIdFromRow(row, 'txtSubAdult');
                var fawnsCubsControlId = getControlIdFromRow(row, 'txtFawnsCubs');

                // Get the values from the controls (or default to 0 if the control doesn't exist)
                var adultMale = adultMaleControlId ? document.getElementById(adultMaleControlId).value || 0 : 0;
                var adultFemale = adultFemaleControlId ? document.getElementById(adultFemaleControlId).value || 0 : 0;
                var subAdult = subAdultControlId ? document.getElementById(subAdultControlId).value || 0 : 0;
                var fawnsCubs = fawnsCubsControlId ? document.getElementById(fawnsCubsControlId).value || 0 : 0;

                // Sum the values
                var total = parseInt(adultMale) + parseInt(adultFemale) + parseInt(subAdult) + parseInt(fawnsCubs);

                // Set the total in the txtTotal field
                var totalControlId = getControlIdFromRow(row, 'txtTotal');
                if (totalControlId) {
                    document.getElementById(totalControlId).value = total;
                }
            }

            // Helper function to get the control's ID by partial match
            function getControlIdFromRow(row, partialId) {
                // Search for the control using the partial ID in the row
                var control = row.querySelector('[id*="' + partialId + '"]');
                if (control) {
                    return control.id;  // Return the ID of the control
                }
                return null;  // Return null if control not found
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
                        <a href="AnimalPopulationTrend.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add Animal Population Trend</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">Trends in Animal Population (Year wise)</h3>
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

                                        <asp:TemplateField HeaderText="Year">
                                            <ItemTemplate>
                                                <asp:Label ID="lblYear" Text='<%# Bind("year") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control" required="true">
                                                    <asp:ListItem Text="Select Year" Value="" />

                                                    <asp:ListItem Text="2000" Value="2000" />
                                                    <asp:ListItem Text="2001" Value="2001" />
                                                    <asp:ListItem Text="2002" Value="2002" />
                                                    <asp:ListItem Text="2003" Value="2003" />
                                                    <asp:ListItem Text="2004" Value="2004" />
                                                    <asp:ListItem Text="2005" Value="2005" />
                                                    <asp:ListItem Text="2006" Value="2006" />
                                                    <asp:ListItem Text="2007" Value="2007" />
                                                    <asp:ListItem Text="2008" Value="2008" />
                                                    <asp:ListItem Text="2009" Value="2009" />
                                                    <asp:ListItem Text="2010" Value="2010" />
                                                    <asp:ListItem Text="2011" Value="2011" />
                                                    <asp:ListItem Text="2012" Value="2012" />
                                                    <asp:ListItem Text="2013" Value="2013" />
                                                    <asp:ListItem Text="2014" Value="2014" />
                                                    <asp:ListItem Text="2015" Value="2015" />
                                                    <asp:ListItem Text="2016" Value="2016" />
                                                    <asp:ListItem Text="2017" Value="2017" />
                                                    <asp:ListItem Text="2018" Value="2018" />
                                                    <asp:ListItem Text="2019" Value="2019" />
                                                    <asp:ListItem Text="2020" Value="2020" />
                                                    <asp:ListItem Text="2021" Value="2021" />
                                                    <asp:ListItem Text="2022" Value="2022" />
                                                    <asp:ListItem Text="2023" Value="2023" />
                                                    <asp:ListItem Text="2024" Value="2024" />
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator15" runat="server" ControlToValidate="ddlYear" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Season">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSeason" Text='<%# Bind("season") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlSeason" runat="server" CssClass="form-control" required="true">
                                                    <asp:ListItem Text="Select Season" Value="" />
                                                    <asp:ListItem Text="Monsoon" Value="Monsoon" />
                                                    <asp:ListItem Text="Summer" Value="Summer" />
                                                    <asp:ListItem Text="Winter" Value="Winter" />
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlSeason" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Species">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSpecies" Text='<%# Bind("name_of_species") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlSpecies" runat="server" CssClass="form-control" required="true">
                                                    <asp:ListItem Text="Herbivore" Value="Herbivore" />
                                                    <asp:ListItem Text="Carnivore" Value="Carnivore" />
                                                    <asp:ListItem Text="Birds" Value="Birds" />
                                                    <asp:ListItem Text="Waterbirds" Value="Waterbirds" />
                                                    <asp:ListItem Text="Vulture" Value="Vulture" />
                                                    <asp:ListItem Text="Tiger" Value="Tiger" />
                                                    <asp:ListItem Text="Elephant" Value="Elephant" />
                                                    <asp:ListItem Text="Leopard" Value="Leopard" />
                                                    <asp:ListItem Text="Others" Value="Others" />
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvNameOfSpecies" runat="server" ControlToValidate="ddlSpecies" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Estimation Methodology">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEstimationMethodology" Text='<%# Bind("population_estimation_methodology_used") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlEstimationMethodology" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="ddlEstimationMethodology_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select Methodology" Value="" />
                                                    <asp:ListItem Text="Line Transect" Value="Line Transect" />
                                                    <asp:ListItem Text="Sign Survey" Value="Sign Survey" />
                                                    <asp:ListItem Text="Camera Trap" Value="Camera Trap" />
                                                    <asp:ListItem Text="Total Count" Value="Total Count" />
                                                    <asp:ListItem Text="Dung Count" Value="Dung Count" />
                                                    <asp:ListItem Text="Others" Value="Others" />
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlEstimationMethodology" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Others">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOthers" Text='<%# Bind("others") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtOthers" CssClass="form-control" Text='<%# Bind("others") %>' runat="server" />
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Total">
        <ItemTemplate>
            <asp:Label ID="lblTotal" Text='<%# Bind("total") %>' runat="server" />
        </ItemTemplate>
        <EditItemTemplate>
            <asp:TextBox ID="txtTotal" CssClass="form-control" Text='<%# Bind("total") %>' runat="server" ReadOnly="true" />
        </EditItemTemplate>
    </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Adult Male">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAdultMale" Text='<%# Bind("adult_male") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtAdultMale" Text='<%# Bind("adult_male") %>' runat="server" CssClass="form-control"  oninput="NumberCheck(this); calculateTotal(this);" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAdultMale" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Adult Female">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAdultFemale" Text='<%# Bind("adult_female") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtAdultFemale" runat="server" Text='<%# Bind("adult_female") %>' CssClass="form-control"  oninput="NumberCheck(this); calculateTotal(this.closest('tr'))" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAdultFemale" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Sub Adult">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSubAdult" Text='<%# Bind("sub_adult") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtSubAdult" runat="server" Text='<%# Bind("sub_adult") %>' CssClass="form-control"  oninput="NumberCheck(this); calculateTotal(this.closest('tr'))" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSubAdult" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Fawns/Cubs">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFawnsCubs" Text='<%# Bind("fawns_cubs") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtFawnsCubs"  runat="server" CssClass="form-control" Text='<%# Bind("fawns_cubs") %>'  oninput="NumberCheck(this); calculateTotal(this.closest('tr'))" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtFawnsCubs" ErrorMessage="Please fill out this field." ForeColor="Red">
                                                </asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Accuracy">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAccuracy" Text='<%# Bind("accuracy") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtAccuracy" runat="server" CssClass="form-control" Text='<%# Bind("accuracy") %>'  oninput="DecimalCheck(this)" required="true"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvAccuracy" runat="server" ControlToValidate="txtAccuracy" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemarks" Text='<%# Bind("remarks") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtRemarks" CssClass="form-control" Text='<%# Bind("remarks") %>' runat="server" />
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
