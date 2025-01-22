<%@ Page Title="Van - New Species Record" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="NewSpecieses.aspx.cs" Inherits="vansystem.NewSpecieses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - New Species Record</title>
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
                        <a href="NewSpecies.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add New Species Record</a>
                    </div>
                    <div class="pull-right">
                        <asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                    <h3 class="tile-title">New Species Record</h3>
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

                                        <asp:TemplateField HeaderText="Category" SortExpression="category">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCategory" Text='<%# Bind("category") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlCategory" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select Category" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="Amphibian" Value="Amphibian"></asp:ListItem>
                                                    <asp:ListItem Text="Bird" Value="Bird"></asp:ListItem>
                                                    <asp:ListItem Text="Mammal" Value="Mammal"></asp:ListItem>
                                                    <asp:ListItem Text="Reptile" Value="Reptile"></asp:ListItem>
                                                    <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator Display="Dynamic" ID="rfvCategory" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Other Category" SortExpression="other_category">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOtherCategory" Text='<%# Bind("other_category") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox  ID="txtOtherCategory" runat="server" CssClass="form-control" placeholder="Other Category"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Name of Species" SortExpression="name_of_species">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNameOfSpecies" Text='<%# Bind("name_of_species") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlSpecies" runat="server" CssClass="form-control" required="true"></asp:DropDownList>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvNameOfSpecies" runat="server" ControlToValidate="ddlSpecies" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Latitude" SortExpression="latitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" Text='<%# Bind("latitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control" placeholder="Latitude" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvLatitude" runat="server" ControlToValidate="txtLatitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Longitude" SortExpression="longitude">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" Text='<%# Bind("longitude") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtLongitude" runat="server" CssClass="form-control" placeholder="Longitude" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvLongitude" runat="server" ControlToValidate="txtLongitude" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Year" SortExpression="year">
                                            <ItemTemplate>
                                                <asp:Label ID="lblYear" Text='<%# Bind("year") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlYear" runat="server" CssClass="form-control" required="true">
                                                    <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                                                    <asp:ListItem Text="2001" Value="2001"></asp:ListItem>
                                                    <asp:ListItem Text="2002" Value="2002"></asp:ListItem>
                                                    <asp:ListItem Text="2003" Value="2003"></asp:ListItem>
                                                    <asp:ListItem Text="2004" Value="2004"></asp:ListItem>
                                                    <asp:ListItem Text="2005" Value="2005"></asp:ListItem>
                                                    <asp:ListItem Text="2006" Value="2006"></asp:ListItem>
                                                    <asp:ListItem Text="2007" Value="2007"></asp:ListItem>
                                                    <asp:ListItem Text="2008" Value="2008"></asp:ListItem>
                                                    <asp:ListItem Text="2009" Value="2009"></asp:ListItem>
                                                    <asp:ListItem Text="2010" Value="2010"></asp:ListItem>
                                                    <asp:ListItem Text="2011" Value="2011"></asp:ListItem>
                                                    <asp:ListItem Text="2012" Value="2012"></asp:ListItem>
                                                    <asp:ListItem Text="2013" Value="2013"></asp:ListItem>
                                                    <asp:ListItem Text="2014" Value="2014"></asp:ListItem>
                                                    <asp:ListItem Text="2015" Value="2015"></asp:ListItem>
                                                    <asp:ListItem Text="2016" Value="2016"></asp:ListItem>
                                                    <asp:ListItem Text="2017" Value="2017"></asp:ListItem>
                                                    <asp:ListItem Text="2018" Value="2018"></asp:ListItem>
                                                    <asp:ListItem Text="2019" Value="2019"></asp:ListItem>
                                                    <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                                                    <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                                                    <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                                                    <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                                                    <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvYear" runat="server" ControlToValidate="ddlYear" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Record Source" SortExpression="record_source">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRecordSource" Text='<%# Bind("record_source") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlRecordSource" runat="server" CssClass="form-control" required="true" AutoPostBack="true" OnSelectedIndexChanged="ddlRecordSource_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select Source" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="Camera trap" Value="Camera trap"></asp:ListItem>
                                                    <asp:ListItem Text="Dead specimen" Value="Dead specimen"></asp:ListItem>
                                                    <asp:ListItem Text="Direct sighting" Value="Direct sighting"></asp:ListItem>
                                                    <asp:ListItem Text="Indirect sighting - Scat" Value="Indirect sighting - Scat"></asp:ListItem>
                                                    <asp:ListItem Text="Indirect sighting - Pellet" Value="Indirect sighting - Pellet"></asp:ListItem>
                                                    <asp:ListItem Text="Indirect sighting - Dung" Value="Indirect sighting - Dung"></asp:ListItem>
                                                    <asp:ListItem Text="Indirect sighting - Vocal" Value="Indirect sighting - Vocal"></asp:ListItem>
                                                    <asp:ListItem Text="Indirect sighting - Pugmarks" Value="Indirect sighting - Pugmarks"></asp:ListItem>
                                                    <asp:ListItem Text="Indirect sighting - Hoof marks" Value="Indirect sighting - Hoof marks"></asp:ListItem>
                                                    <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvRecordSource" runat="server" ControlToValidate="ddlRecordSource" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Other Source" SortExpression="other_source">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOtherSource" Text='<%# Bind("other_source") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtOtherSource" runat="server" CssClass="form-control" placeholder="Other Source"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Details of Species" SortExpression="details_of_species">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDetailsOfSpecies" Text='<%# Bind("details_of_species") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDetailsOfSpecies" runat="server" CssClass="form-control" placeholder="Details of the species"></asp:TextBox>

                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Age" SortExpression="age">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAge" Text='<%# Bind("age") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder="Age" required="true" oninput=""></asp:TextBox>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Sex" SortExpression="sex">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSex" Text='<%# Bind("sex") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList Width="150px" ID="ddlSex" runat="server" CssClass="form-control" required="true">
                                                    <asp:ListItem Text="Select Sex" Value=""></asp:ListItem>
                                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                                    <asp:ListItem Text="Can not be identified" Value="Can not be identified"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator  Display="Dynamic" ID="rfvSex" runat="server" ControlToValidate="ddlSex" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Habitat Description" SortExpression="habitat_description">
                                            <ItemTemplate>
                                                <asp:Label ID="lblHabitatDescription" Text='<%# Bind("habitat_description") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtHabitatDescription" runat="server" CssClass="form-control" placeholder="Habitat Description"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Remarks" SortExpression="remarks">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemarks" Text='<%# Bind("remarks") %>' runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Remarks"></asp:TextBox>
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
