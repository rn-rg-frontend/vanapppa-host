﻿<%@ Page Title="Van - Block Count" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="BlockCount.aspx.cs" Inherits="vansystem.BlockCount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Block Count</title>
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
                    <h3 class="tile-title">Block Count</h3>
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
                                        rules="rows" CellPadding="4" CellSpacing="4" Width="100%" DataKeyNames="block_count_id" OnRowCommand="GVget_RowCommand"  OnPageIndexChanging="GVgetuser_PageIndexChanging" AllowPaging="true" PageSize="10">
                                        <RowStyle BackColor="White" BorderColor="ControlLight" />
                                        <HeaderStyle BorderColor="ControlLight" />
                                        <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="S.No">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
      
                   
                                          
        <asp:BoundField DataField="name" HeaderText="Name" ReadOnly="True" />
        <asp:BoundField DataField="gender" HeaderText="Gender" ReadOnly="True" />
        <asp:BoundField DataField="phone_number" HeaderText="Phone Number" ReadOnly="True" />
        <asp:BoundField DataField="designation" HeaderText="Designation" ReadOnly="True" />
        <asp:BoundField DataField="district" HeaderText="District" ReadOnly="True" />
        <asp:BoundField DataField="state" HeaderText="State" ReadOnly="True" />
        <asp:BoundField DataField="slatitude" HeaderText="Source Latitude" ReadOnly="True" />
        <asp:BoundField DataField="slongitude" HeaderText="Source Longitude" ReadOnly="True" />
        <asp:BoundField DataField="saltitude" HeaderText="Source Altitude" ReadOnly="True" />
        <asp:BoundField DataField="saccuracy" HeaderText="Source Accuracy" ReadOnly="True" />
        <asp:BoundField DataField="stime" HeaderText="Source Time" ReadOnly="True" />
        <asp:BoundField DataField="circle" HeaderText="Circle" ReadOnly="True" />
        <asp:BoundField DataField="division" HeaderText="Division" ReadOnly="True" />
        <asp:BoundField DataField="range" HeaderText="Range" ReadOnly="True" />
        <asp:BoundField DataField="block" HeaderText="Block" ReadOnly="True" />
        <asp:BoundField DataField="compartment" HeaderText="Compartment" ReadOnly="True" />
        <asp:BoundField DataField="block_no" HeaderText="Block No" ReadOnly="True" />
        <asp:BoundField DataField="block_name" HeaderText="Block Name" ReadOnly="True" />
        <asp:BoundField DataField="block_area" HeaderText="Block Area" ReadOnly="True" />
        <asp:BoundField DataField="weather" HeaderText="Weather" ReadOnly="True" />
        <asp:BoundField DataField="selected_forest" HeaderText="Selected Forest" ReadOnly="True" />
        <asp:BoundField DataField="waterbodies" HeaderText="Water Bodies" ReadOnly="True" />
        <asp:BoundField DataField="presence_roads" HeaderText="Presence of Roads" ReadOnly="True" />
        <asp:BoundField DataField="distance_village" HeaderText="Distance to Village" ReadOnly="True" />
        <asp:BoundField DataField="ntfp" HeaderText="NTFP" ReadOnly="True" />
        <asp:BoundField DataField="block_count_date" HeaderText="Date" ReadOnly="True" />
        <asp:BoundField DataField="block_count_etime" HeaderText="End Time" ReadOnly="True" />
        <asp:BoundField DataField="block_count_elatitude" HeaderText="Elephant Latitude" ReadOnly="True" />
        <asp:BoundField DataField="block_count_elongitude" HeaderText="Elephant Longitude" ReadOnly="True" />
        <asp:BoundField DataField="block_count_ealtitude" HeaderText="Elephant Altitude" ReadOnly="True" />
        <asp:BoundField DataField="block_count_eaccuracy" HeaderText="Elephant Accuracy" ReadOnly="True" />
        <asp:BoundField DataField="block_count_detail_id" HeaderText="Detail ID" ReadOnly="True" />
        <asp:BoundField DataField="noelephants" HeaderText="No. of Elephants" ReadOnly="True" />
        <asp:BoundField DataField="male_tusker" HeaderText="Male Tusker" ReadOnly="True" />
        <asp:BoundField DataField="medium_adult" HeaderText="Medium Adult" ReadOnly="True" />
        <asp:BoundField DataField="male_makhana" HeaderText="Male Makhana" ReadOnly="True" />
        <asp:BoundField DataField="adult_female" HeaderText="Adult Female" ReadOnly="True" />
        <asp:BoundField DataField="sub_adult_female" HeaderText="Sub Adult Female" ReadOnly="True" />
        <asp:BoundField DataField="young" HeaderText="Young" ReadOnly="True" />
        <asp:BoundField DataField="unidentified" HeaderText="Unidentified" ReadOnly="True" />
        <asp:BoundField DataField="total" HeaderText="Total" ReadOnly="True" />
        <asp:BoundField DataField="habitat" HeaderText="Habitat" ReadOnly="True" />
        <asp:BoundField DataField="terrain" HeaderText="Terrain" ReadOnly="True" />
        <asp:BoundField DataField="activity" HeaderText="Activity" ReadOnly="True" />
        <asp:BoundField DataField="direction_movement" HeaderText="Direction of Movement" ReadOnly="True" />
        <asp:BoundField DataField="remark" HeaderText="Remark" ReadOnly="True" />
        <asp:BoundField DataField="detail_etime" HeaderText="Detail End Time" ReadOnly="True" />
        <asp:BoundField DataField="detail_elatitude" HeaderText="Detail Latitude" ReadOnly="True" />
        <asp:BoundField DataField="detail_elongitude" HeaderText="Detail Longitude" ReadOnly="True" />
        <asp:BoundField DataField="detail_ealtitude" HeaderText="Detail Altitude" ReadOnly="True" />
        <asp:BoundField DataField="detail_eaccuracy" HeaderText="Detail Accuracy" ReadOnly="True" />

                                            
                                           
                   
                                            
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
