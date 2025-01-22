<%@ Page Title="Van - Patrolling Form" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="PatrollingForm.aspx.cs" Inherits="vansystem.PatrollingForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Patrolling Form</title>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="app-content">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="tile" style="margin-left: -10px;">
                     <div class="pull-right">
<asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
     </div>
                    <h3 class="tile-title">Patrolling Form</h3>
                    <div class="d-flex justify-content-start align-items-center" style="padding-top: 6px; padding-right: 15px;">
                        Show  
                        <div class="pl-2 pr-2">
                            <asp:DropDownList ID="ddlPageSize" Style="background-color:#004990; color:white; width:70px; border-radius:3px; height:30px" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
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
                                        rules="rows" CellPadding="4" CellSpacing="4" Width="100%" DataKeyNames="patrolling_form_id" OnRowCommand="GVget_RowCommand"  OnPageIndexChanging="GVgetuser_PageIndexChanging" AllowPaging="true" PageSize="10">
                                        <RowStyle BackColor="White" BorderColor="ControlLight" />
                                        <HeaderStyle BorderColor="ControlLight" />
                                        <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="S.No">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
      
                   
                                            
        
                                            
       <asp:BoundField DataField="patrolling_form_id" HeaderText="Form ID" ReadOnly="True" />
        <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="True" />
        <asp:BoundField DataField="gender" HeaderText="Gender" ReadOnly="True" />
        <asp:BoundField DataField="phone_number" HeaderText="Phone Number" ReadOnly="True" />
        <asp:BoundField DataField="designation" HeaderText="Designation" ReadOnly="True" />
        <asp:BoundField DataField="district" HeaderText="District" ReadOnly="True" />
        <asp:BoundField DataField="state" HeaderText="State" ReadOnly="True" />
        <asp:BoundField DataField="slatitude" HeaderText="Latitude" ReadOnly="True" />
        <asp:BoundField DataField="slongitude" HeaderText="Longitude" ReadOnly="True" />
        <asp:BoundField DataField="saltitude" HeaderText="Altitude" ReadOnly="True" />
        <asp:BoundField DataField="saccuracy" HeaderText="Accuracy" ReadOnly="True" />
        <asp:BoundField DataField="stime" HeaderText="Time" ReadOnly="True" />
        <asp:BoundField DataField="circle" HeaderText="Circle" ReadOnly="True" />
        <asp:BoundField DataField="division" HeaderText="Division" ReadOnly="True" />
        <asp:BoundField DataField="range" HeaderText="Range" ReadOnly="True" />
        <asp:BoundField DataField="block" HeaderText="Block" ReadOnly="True" />
        <asp:BoundField DataField="village1" HeaderText="Village" ReadOnly="True" />
        <asp:BoundField DataField="compartment" HeaderText="Compartment" ReadOnly="True" />
        <asp:BoundField DataField="trail" HeaderText="Trail" ReadOnly="True" />
        <asp:BoundField DataField="patroltype" HeaderText="Patrol Type" ReadOnly="True" />
        <asp:BoundField DataField="patrolmethod" HeaderText="Patrol Method" ReadOnly="True" />
        <asp:BoundField DataField="armed" HeaderText="Armed" ReadOnly="True" />
        <asp:BoundField DataField="armedtype" HeaderText="Armed Type" ReadOnly="True" />
        <asp:BoundField DataField="date" HeaderText="Date" ReadOnly="True" />
        <asp:BoundField DataField="patrolling_form_detail_id" HeaderText="Detail ID" ReadOnly="True" />
        <asp:BoundField DataField="floral_name" HeaderText="Floral Name" ReadOnly="True" />
        <asp:BoundField DataField="floral_other" HeaderText="Floral Other" ReadOnly="True" />
        <asp:BoundField DataField="emergence_leaves" HeaderText="Emergence Leaves" ReadOnly="True" />
        <asp:BoundField DataField="emergence_flowers" HeaderText="Emergence Flowers" ReadOnly="True" />
        <asp:BoundField DataField="ememergence_fruits" HeaderText="Emergence Fruits" ReadOnly="True" />
        <asp:BoundField DataField="leaf_shedding" HeaderText="Leaf Shedding" ReadOnly="True" />
        <asp:BoundField DataField="seed_dispersal" HeaderText="Seed Dispersal" ReadOnly="True" />
        <asp:BoundField DataField="bare_tree" HeaderText="Bare Tree" ReadOnly="True" />
        <asp:BoundField DataField="floral_impact" HeaderText="Floral Impact" ReadOnly="True" />
        <asp:BoundField DataField="floral_time" HeaderText="Floral Time" ReadOnly="True" />
        <asp:BoundField DataField="floral_latitude" HeaderText="Floral Latitude" ReadOnly="True" />
        <asp:BoundField DataField="floral_longitude" HeaderText="Floral Longitude" ReadOnly="True" />
        <asp:BoundField DataField="floral_altitude" HeaderText="Floral Altitude" ReadOnly="True" />
        <asp:BoundField DataField="floral_accuracy" HeaderText="Floral Accuracy" ReadOnly="True" />
        <asp:BoundField DataField="faunal_observation" HeaderText="Faunal Observation" ReadOnly="True" />
        <asp:BoundField DataField="faunal_name" HeaderText="Faunal Name" ReadOnly="True" />
        <asp:BoundField DataField="ps_other" HeaderText="PS Other" ReadOnly="True" />
        <asp:BoundField DataField="species_activity" HeaderText="Species Activity" ReadOnly="True" />
        <asp:BoundField DataField="faunal_impact" HeaderText="Faunal Impact" ReadOnly="True" />
        <asp:BoundField DataField="faunal_time" HeaderText="Faunal Time" ReadOnly="True" />
        <asp:BoundField DataField="faunal_latitude" HeaderText="Faunal Latitude" ReadOnly="True" />
        <asp:BoundField DataField="faunal_longitude" HeaderText="Faunal Longitude" ReadOnly="True" />
        <asp:BoundField DataField="faunal_altitude" HeaderText="Faunal Altitude" ReadOnly="True" />
        <asp:BoundField DataField="faunal_accuracy" HeaderText="Faunal Accuracy" ReadOnly="True" />
        <asp:BoundField DataField="water_source" HeaderText="Water Source" ReadOnly="True" />
        <asp:BoundField DataField="water_type" HeaderText="Water Type" ReadOnly="True" />
        <asp:BoundField DataField="water_availability" HeaderText="Water Availability" ReadOnly="True" />
        <asp:BoundField DataField="other_water_observation" HeaderText="Other Water Observation" ReadOnly="True" />
        <asp:BoundField DataField="water_impact" HeaderText="Water Impact" ReadOnly="True" />
        <asp:BoundField DataField="water_time" HeaderText="Water Time" ReadOnly="True" />
        <asp:BoundField DataField="water_latitude" HeaderText="Water Latitude" ReadOnly="True" />
        <asp:BoundField DataField="water_longitude" HeaderText="Water Longitude" ReadOnly="True" />
        <asp:BoundField DataField="water_altitude" HeaderText="Water Altitude" ReadOnly="True" />
        <asp:BoundField DataField="water_accuracy" HeaderText="Water Accuracy" ReadOnly="True" />
        <asp:BoundField DataField="evidence_offences" HeaderText="Evidence Offences" ReadOnly="True" />
        <asp:BoundField DataField="evidence_impact" HeaderText="Evidence Impact" ReadOnly="True" />
        <asp:BoundField DataField="evidence_time" HeaderText="Evidence Time" ReadOnly="True" />
        <asp:BoundField DataField="evidence_latitude" HeaderText="Evidence Latitude" ReadOnly="True" />
        <asp:BoundField DataField="evidence_longitude" HeaderText="Evidence Longitude" ReadOnly="True" />
        <asp:BoundField DataField="evidence_altitude" HeaderText="Evidence Altitude" ReadOnly="True" />
        <asp:BoundField DataField="evidence_accuracy" HeaderText="Evidence Accuracy" ReadOnly="True" />
        <asp:BoundField DataField="animal_mortality" HeaderText="Animal Mortality" ReadOnly="True" />
        <asp:BoundField DataField="mortals_name" HeaderText="Mortals Name" ReadOnly="True" />
        <asp:BoundField DataField="mortals_other" HeaderText="Mortals Other" ReadOnly="True" />
        <asp:BoundField DataField="sex" HeaderText="Sex" ReadOnly="True" />
        <asp:BoundField DataField="age" HeaderText="Age" ReadOnly="True" />
        <asp:BoundField DataField="cause_mortality" HeaderText="Cause Mortality" ReadOnly="True" />
        <asp:BoundField DataField="mortality_impact" HeaderText="Mortality Impact" ReadOnly="True" />
        <asp:BoundField DataField="mortal_time" HeaderText="Mortal Time" ReadOnly="True" />
        <asp:BoundField DataField="mortal_latitude" HeaderText="Mortal Latitude" ReadOnly="True" />
        <asp:BoundField DataField="mortal_longitude" HeaderText="Mortal Longitude" ReadOnly="True" />
        <asp:BoundField DataField="mortal_altitude" HeaderText="Mortal Altitude" ReadOnly="True" />
        <asp:BoundField DataField="mortal_accuracy" HeaderText="Mortal Accuracy" ReadOnly="True" />
                                            
                                           
                   
                                            
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
