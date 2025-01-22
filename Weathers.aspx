<%@ Page Title="Van - Weather" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="Weathers.aspx.cs" Inherits="vansystem.Weathers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <title>Van - Weather</title>
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
                        <a href="Weather.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i>Add weather data</a>
                    </div>
                     <div class="pull-right">
<asp:Button ID="btnExportToExcel" class="btn btn-xs btn-primary" runat="server" Text="Download Excel" OnClick="btnExportToExcel_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
     </div>
                    <h3 class="tile-title">Weather</h3>
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
                                        rules="rows" CellPadding="4" CellSpacing="4" Width="100%" DataKeyNames="id" OnRowCommand="GVget_RowCommand"  OnPageIndexChanging="GVgetuser_PageIndexChanging" AllowPaging="true" PageSize="10">
                                        <RowStyle BackColor="White" BorderColor="ControlLight" />
                                        <HeaderStyle BorderColor="ControlLight" />
                                        <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="S.No">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
      
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" ReadOnly="True" />
        <asp:BoundField DataField="january_max_rainfall" HeaderText="January Max Rainfall" SortExpression="january_max_rainfall" ReadOnly="True" />
<asp:BoundField DataField="january_min_rainfall" HeaderText="January Min Rainfall" SortExpression="january_min_rainfall" ReadOnly="True" />
<asp:BoundField DataField="january_avg_rainfall" HeaderText="January Avg Rainfall" SortExpression="january_avg_rainfall" ReadOnly="True" />
<asp:BoundField DataField="january_max_humidity" HeaderText="January Max Humidity" SortExpression="january_max_humidity" ReadOnly="True" />
<asp:BoundField DataField="january_min_humidity" HeaderText="January Min Humidity" SortExpression="january_min_humidity" ReadOnly="True" />
<asp:BoundField DataField="january_avg_humidity" HeaderText="January Avg Humidity" SortExpression="january_avg_humidity" ReadOnly="True" />
<asp:BoundField DataField="january_max_temperature" HeaderText="January Max Temperature" SortExpression="january_max_temperature" ReadOnly="True" />
<asp:BoundField DataField="january_min_temperature" HeaderText="January Min Temperature" SortExpression="january_min_temperature" ReadOnly="True" />
<asp:BoundField DataField="january_avg_temperature" HeaderText="January Avg Temperature" SortExpression="january_avg_temperature" ReadOnly="True" />
<asp:BoundField DataField="february_max_rainfall" HeaderText="February Max Rainfall" SortExpression="february_max_rainfall" ReadOnly="True" />
<asp:BoundField DataField="february_min_rainfall" HeaderText="February Min Rainfall" SortExpression="february_min_rainfall" ReadOnly="True" />
<asp:BoundField DataField="february_avg_rainfall" HeaderText="February Avg Rainfall" SortExpression="february_avg_rainfall" ReadOnly="True" />
<asp:BoundField DataField="february_max_humidity" HeaderText="February Max Humidity" SortExpression="february_max_humidity" ReadOnly="True" />
<asp:BoundField DataField="february_min_humidity" HeaderText="February Min Humidity" SortExpression="february_min_humidity" ReadOnly="True" />
<asp:BoundField DataField="february_avg_humidity" HeaderText="February Avg Humidity" SortExpression="february_avg_humidity" ReadOnly="True" />
<asp:BoundField DataField="february_max_temperature" HeaderText="February Max Temperature" SortExpression="february_max_temperature" ReadOnly="True" />
<asp:BoundField DataField="february_min_temperature" HeaderText="February Min Temperature" SortExpression="february_min_temperature" ReadOnly="True" />
<asp:BoundField DataField="february_avg_temperature" HeaderText="February Avg Temperature" SortExpression="february_avg_temperature" ReadOnly="True" />
<asp:BoundField DataField="march_max_rainfall" HeaderText="March Max Rainfall" SortExpression="march_max_rainfall" ReadOnly="True" />
<asp:BoundField DataField="march_min_rainfall" HeaderText="March Min Rainfall" SortExpression="march_min_rainfall" ReadOnly="True" />
<asp:BoundField DataField="march_avg_rainfall" HeaderText="March Avg Rainfall" SortExpression="march_avg_rainfall" ReadOnly="True" />
<asp:BoundField DataField="march_max_humidity" HeaderText="March Max Humidity" SortExpression="march_max_humidity" ReadOnly="True" />
<asp:BoundField DataField="march_min_humidity" HeaderText="March Min Humidity" SortExpression="march_min_humidity" ReadOnly="True" />
<asp:BoundField DataField="march_avg_humidity" HeaderText="March Avg Humidity" SortExpression="march_avg_humidity" ReadOnly="True" />
<asp:BoundField DataField="march_max_temperature" HeaderText="March Max Temperature" SortExpression="march_max_temperature" ReadOnly="True" />
<asp:BoundField DataField="march_min_temperature" HeaderText="March Min Temperature" SortExpression="march_min_temperature" ReadOnly="True" />
<asp:BoundField DataField="march_avg_temperature" HeaderText="March Avg Temperature" SortExpression="march_avg_temperature" ReadOnly="True" />
<asp:BoundField DataField="april_max_rainfall" HeaderText="April Max Rainfall" SortExpression="april_max_rainfall" ReadOnly="True" />
<asp:BoundField DataField="april_min_rainfall" HeaderText="April Min Rainfall" SortExpression="april_min_rainfall" ReadOnly="True" />
<asp:BoundField DataField="april_avg_rainfall" HeaderText="April Avg Rainfall" SortExpression="april_avg_rainfall" ReadOnly="True" />
<asp:BoundField DataField="april_max_humidity" HeaderText="April Max Humidity" SortExpression="april_max_humidity" ReadOnly="True" />
<asp:BoundField DataField="april_min_humidity" HeaderText="April Min Humidity" SortExpression="april_min_humidity" ReadOnly="True" />
<asp:BoundField DataField="april_avg_humidity" HeaderText="April Avg Humidity" SortExpression="april_avg_humidity" ReadOnly="True" />
<asp:BoundField DataField="april_max_temperature" HeaderText="April Max Temperature" SortExpression="april_max_temperature" ReadOnly="True" />
<asp:BoundField DataField="april_min_temperature" HeaderText="April Min Temperature" SortExpression="april_min_temperature" ReadOnly="True" />
<asp:BoundField DataField="april_avg_temperature" HeaderText="April Avg Temperature" SortExpression="april_avg_temperature" ReadOnly="True" />
<asp:BoundField DataField="may_max_rainfall" HeaderText="May Max Rainfall" SortExpression="MayMaxRainfall" ReadOnly="True" />
<asp:BoundField DataField="may_min_rainfall" HeaderText="May Min Rainfall" SortExpression="MayMinRainfall" ReadOnly="True" />
<asp:BoundField DataField="may_avg_rainfall" HeaderText="May Avg Rainfall" SortExpression="MayAvgRainfall" ReadOnly="True" />
<asp:BoundField DataField="may_max_humidity" HeaderText="May Max Humidity" SortExpression="MayMaxHumidity" ReadOnly="True" />
<asp:BoundField DataField="may_min_humidity" HeaderText="May Min Humidity" SortExpression="MayMinHumidity" ReadOnly="True" />
<asp:BoundField DataField="may_avg_humidity" HeaderText="May Avg Humidity" SortExpression="MayAvgHumidity" ReadOnly="True" />
<asp:BoundField DataField="may_max_temperature" HeaderText="May Max Temperature" SortExpression="MayMaxTemperature" ReadOnly="True" />
<asp:BoundField DataField="may_min_temperature" HeaderText="May Min Temperature" SortExpression="MayMinTemperature" ReadOnly="True" />
<asp:BoundField DataField="may_avg_temperature" HeaderText="May Avg Temperature" SortExpression="MayAvgTemperature" ReadOnly="True" />
<asp:BoundField DataField="june_max_rainfall" HeaderText="June Max Rainfall" SortExpression="JuneMaxRainfall" ReadOnly="True" />
<asp:BoundField DataField="june_min_rainfall" HeaderText="June Min Rainfall" SortExpression="JuneMinRainfall" ReadOnly="True" />
<asp:BoundField DataField="june_avg_rainfall" HeaderText="June Avg Rainfall" SortExpression="JuneAvgRainfall" ReadOnly="True" />
<asp:BoundField DataField="june_max_humidity" HeaderText="June Max Humidity" SortExpression="JuneMaxHumidity" ReadOnly="True" />
<asp:BoundField DataField="june_min_humidity" HeaderText="June Min Humidity" SortExpression="JuneMinHumidity" ReadOnly="True" />
<asp:BoundField DataField="june_avg_humidity" HeaderText="June Avg Humidity" SortExpression="JuneAvgHumidity" ReadOnly="True" />
<asp:BoundField DataField="june_max_temperature" HeaderText="June Max Temperature" SortExpression="JuneMaxTemperature" ReadOnly="True" />
<asp:BoundField DataField="june_min_temperature" HeaderText="June Min Temperature" SortExpression="JuneMinTemperature" ReadOnly="True" />
<asp:BoundField DataField="june_avg_temperature" HeaderText="June Avg Temperature" SortExpression="JuneAvgTemperature" ReadOnly="True" />
<asp:BoundField DataField="july_max_rainfall" HeaderText="July Max Rainfall" SortExpression="JulyMaxRainfall" ReadOnly="True" />
<asp:BoundField DataField="july_min_rainfall" HeaderText="July Min Rainfall" SortExpression="JulyMinRainfall" ReadOnly="True" />
<asp:BoundField DataField="july_avg_rainfall" HeaderText="July Avg Rainfall" SortExpression="JulyAvgRainfall" ReadOnly="True" />
<asp:BoundField DataField="july_max_humidity" HeaderText="July Max Humidity" SortExpression="JulyMaxHumidity" ReadOnly="True" />
<asp:BoundField DataField="july_min_humidity" HeaderText="July Min Humidity" SortExpression="JulyMinHumidity" ReadOnly="True" />
<asp:BoundField DataField="july_avg_humidity" HeaderText="July Avg Humidity" SortExpression="JulyAvgHumidity" ReadOnly="True" />
<asp:BoundField DataField="july_max_temperature" HeaderText="July Max Temperature" SortExpression="JulyMaxTemperature" ReadOnly="True" />
<asp:BoundField DataField="july_min_temperature" HeaderText="July Min Temperature" SortExpression="JulyMinTemperature" ReadOnly="True" />
<asp:BoundField DataField="july_avg_temperature" HeaderText="July Avg Temperature" SortExpression="JulyAvgTemperature" ReadOnly="True" />
<asp:BoundField DataField="august_max_rainfall" HeaderText="August Max Rainfall" SortExpression="AugustMaxRainfall" ReadOnly="True" />
<asp:BoundField DataField="august_min_rainfall" HeaderText="August Min Rainfall" SortExpression="AugustMinRainfall" ReadOnly="True" />
<asp:BoundField DataField="august_avg_rainfall" HeaderText="August Avg Rainfall" SortExpression="AugustAvgRainfall" ReadOnly="True" />
<asp:BoundField DataField="august_max_humidity" HeaderText="August Max Humidity" SortExpression="AugustMaxHumidity" ReadOnly="True" />
<asp:BoundField DataField="august_min_humidity" HeaderText="August Min Humidity" SortExpression="AugustMinHumidity" ReadOnly="True" />
<asp:BoundField DataField="august_avg_humidity" HeaderText="August Avg Humidity" SortExpression="AugustAvgHumidity" ReadOnly="True" />
<asp:BoundField DataField="august_max_temperature" HeaderText="August Max Temperature" SortExpression="AugustMaxTemperature" ReadOnly="True" />
<asp:BoundField DataField="august_min_temperature" HeaderText="August Min Temperature" SortExpression="AugustMinTemperature" ReadOnly="True" />
<asp:BoundField DataField="august_avg_temperature" HeaderText="August Avg Temperature" SortExpression="AugustAvgTemperature" ReadOnly="True" />
<asp:BoundField DataField="september_max_rainfall" HeaderText="September Max Rainfall" SortExpression="SeptemberMaxRainfall" ReadOnly="True" />
<asp:BoundField DataField="september_min_rainfall" HeaderText="September Min Rainfall" SortExpression="SeptemberMinRainfall" ReadOnly="True" />
<asp:BoundField DataField="september_avg_rainfall" HeaderText="September Avg Rainfall" SortExpression="SeptemberAvgRainfall" ReadOnly="True" />
<asp:BoundField DataField="september_max_humidity" HeaderText="September Max Humidity" SortExpression="SeptemberMaxHumidity" ReadOnly="True" />
<asp:BoundField DataField="september_min_humidity" HeaderText="September Min Humidity" SortExpression="SeptemberMinHumidity" ReadOnly="True" />
<asp:BoundField DataField="september_avg_humidity" HeaderText="September Avg Humidity" SortExpression="SeptemberAvgHumidity" ReadOnly="True" />
<asp:BoundField DataField="september_max_temperature" HeaderText="September Max Temperature" SortExpression="SeptemberMaxTemperature" ReadOnly="True" />
<asp:BoundField DataField="september_min_temperature" HeaderText="September Min Temperature" SortExpression="SeptemberMinTemperature" ReadOnly="True" />
<asp:BoundField DataField="september_avg_temperature" HeaderText="September Avg Temperature" SortExpression="SeptemberAvgTemperature" ReadOnly="True" />
<asp:BoundField DataField="october_max_rainfall" HeaderText="October Max Rainfall" SortExpression="OctoberMaxRainfall" ReadOnly="True" />
<asp:BoundField DataField="october_min_rainfall" HeaderText="October Min Rainfall" SortExpression="OctoberMinRainfall" ReadOnly="True" />
<asp:BoundField DataField="october_avg_rainfall" HeaderText="October Avg Rainfall" SortExpression="OctoberAvgRainfall" ReadOnly="True" />
<asp:BoundField DataField="october_max_humidity" HeaderText="October Max Humidity" SortExpression="OctoberMaxHumidity" ReadOnly="True" />
<asp:BoundField DataField="october_min_humidity" HeaderText="October Min Humidity" SortExpression="OctoberMinHumidity" ReadOnly="True" />
<asp:BoundField DataField="october_avg_humidity" HeaderText="October Avg Humidity" SortExpression="OctoberAvgHumidity" ReadOnly="True" />
<asp:BoundField DataField="october_max_temperature" HeaderText="October Max Temperature" SortExpression="OctoberMaxTemperature" ReadOnly="True" />
<asp:BoundField DataField="october_min_temperature" HeaderText="October Min Temperature" SortExpression="OctoberMinTemperature" ReadOnly="True" />
<asp:BoundField DataField="october_avg_temperature" HeaderText="October Avg Temperature" SortExpression="OctoberAvgTemperature" ReadOnly="True" />
<asp:BoundField DataField="november_max_rainfall" HeaderText="November Max Rainfall" SortExpression="NovemberMaxRainfall" ReadOnly="True" />
<asp:BoundField DataField="november_min_rainfall" HeaderText="November Min Rainfall" SortExpression="NovemberMinRainfall" ReadOnly="True" />
<asp:BoundField DataField="november_avg_rainfall" HeaderText="November Avg Rainfall" SortExpression="NovemberAvgRainfall" ReadOnly="True" />
<asp:BoundField DataField="november_max_humidity" HeaderText="November Max Humidity" SortExpression="NovemberMaxHumidity" ReadOnly="True" />
<asp:BoundField DataField="november_min_humidity" HeaderText="November Min Humidity" SortExpression="NovemberMinHumidity" ReadOnly="True" />
<asp:BoundField DataField="november_avg_humidity" HeaderText="November Avg Humidity" SortExpression="NovemberAvgHumidity" ReadOnly="True" />
<asp:BoundField DataField="november_max_temperature" HeaderText="November Max Temperature" SortExpression="NovemberMaxTemperature" ReadOnly="True" />
<asp:BoundField DataField="november_min_temperature" HeaderText="November Min Temperature" SortExpression="NovemberMinTemperature" ReadOnly="True" />
<asp:BoundField DataField="november_avg_temperature" HeaderText="November Avg Temperature" SortExpression="NovemberAvgTemperature" ReadOnly="True" />
<asp:BoundField DataField="december_max_rainfall" HeaderText="December Max Rainfall" SortExpression="DecemberMaxRainfall" ReadOnly="True" />
<asp:BoundField DataField="december_min_rainfall" HeaderText="December Min Rainfall" SortExpression="DecemberMinRainfall" ReadOnly="True" />
<asp:BoundField DataField="december_avg_rainfall" HeaderText="December Avg Rainfall" SortExpression="DecemberAvgRainfall" ReadOnly="True" />
<asp:BoundField DataField="december_max_humidity" HeaderText="December Max Humidity" SortExpression="DecemberMaxHumidity" ReadOnly="True" />
<asp:BoundField DataField="december_min_humidity" HeaderText="December Min Humidity" SortExpression="DecemberMinHumidity" ReadOnly="True" />
<asp:BoundField DataField="december_avg_humidity" HeaderText="December Avg Humidity" SortExpression="DecemberAvgHumidity" ReadOnly="True" />
<asp:BoundField DataField="december_max_temperature" HeaderText="December Max Temperature" SortExpression="DecemberMaxTemperature" ReadOnly="True" />
<asp:BoundField DataField="december_min_temperature" HeaderText="December Min Temperature" SortExpression="DecemberMinTemperature" ReadOnly="True" />
<asp:BoundField DataField="december_avg_temperature" HeaderText="December Avg Temperature" SortExpression="DecemberAvgTemperature" ReadOnly="True" />


                                            
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
