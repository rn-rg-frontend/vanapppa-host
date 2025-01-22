<%@ Page Title="" Language="C#" MasterPageFile="~/Van.Master" AutoEventWireup="true" CodeBehind="StateDashboard.aspx.cs" Inherits="vansystem.StateDashboard" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Van - Dashboard</title>

    <style type="text/css">
        #mapContainer {
            position: relative;
            box-shadow: 2px 0px 5px 0px rgb(0 0 0 / 20%);
        }

        #mapPreview {
            height: calc(90vh - 75px);
            width: 100%;
        }

        #latlonInfo {
            position: absolute;
            bottom: 10px;
            left: 10px;
        }

        #mapChckList {
            max-height: 300px;
            overflow-y: scroll;
        }

        .slider {
            -webkit-appearance: none;
            width: 100%;
            height: 5px;
            border-radius: 5px;
            background: #d3d3d3;
            outline: none;
            -webkit-transition: .2s;
            transition: opacity .2s;
        }

            .slider::-webkit-slider-thumb {
                -webkit-appearance: none;
                appearance: none;
                width: 10px;
                height: 10px;
                border-radius: 50%;
                background: #191C76;
                cursor: pointer;
            }

            .slider::-moz-range-thumb {
                width: 10px;
                height: 10px;
                border-radius: 50%;
                background: #191C76;
                cursor: pointer;
            }

        .opacity {
            display: none;
        }

        .showSettings {
            cursor: pointer;
        }

        #formSelect {
            background: #004990;
            color: white;
        }

        #drpDwnCntrl {
            position: absolute;
            z-index: 1000;
            right: 20px;
            top: 75px;
        }

        .no-padd {
            padding: 0;
        }

        @media (min-width: 992px) {
            .col-md-8, .col-md-4 {
                margin-right: 1%;
            }

            .col-md-8 {
                width: 65%;
            }

            .col-md-4 {
                width: 33%;
            }
        }

        .treeview-menu {
            max-height: 200px;
            overflow-y: auto;
            padding: 5px;
        }

            .treeview-menu::-webkit-scrollbar {
                width: 8px;
                background-color: #f8f8f8;
            }


            .treeview-menu::-webkit-scrollbar-thumb {
                background-color: #2196f3;
                border-radius: 4px;
            }

        .custom-gridview {
            border-collapse: collapse;
            width: 100%;
        }

            .custom-gridview th {
                background-color: green;
                color: white;
            }

            .custom-gridview td {
                background-color: white;
            }

        .custom-chart {
            min-height: 400px;
        }
    </style>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
        integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI="
        crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
        integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM="
        crossorigin=""></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.js" integrity="sha512-6HrPqAvK+lZElIZ4mZ64fyxIBTsaX5zAFZg2V/2WT+iKPrFzTzvx6QAsLW2OaLwobhMYBog/+bvmIEEGXi0p1w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True">
    </asp:ScriptManager>
    <div class="alert alert-dismissible alert-success page-alert">
        <button class="close" type="button" data-dismiss="alert">x</button>
        <strong>Logged in Successfully</strong>
    </div>
    <div class="app-content no-padd">
        <div class="col-lg-7 no-padd">
            <div id="mapContainer">
                <asp:Button ID="btnmap" runat="server" OnClick="btnmap_Click" Text="Mapclick" CssClass="hidden" />
                <asp:HiddenField ID="hftMapclick" runat="server" />
                <div id="map" class="col-md-12">
                    <script>
                        var OpenStreet = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                            id: 'mapbox/streets-v11', attribution: 'Open Street',
                        });
                        var dilabad = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?service=WMS&', {
                            layers: 'tblDivision',
                            format: 'image/png',
                            transparent: true
                        });
                        var otherlayer = [OpenStreet, dilabad]
                        var map = L.map('map', {
                            zoomControl: false,
                            center: [17.8006, 79.009],
                            zoom: 8,
                            layers: otherlayer
                        });

                        let latitude;
                        let longitude;
                        map.on('click', function (e) {


                            // Get the latitude and longitude of the map click.
                            latitude = e.latlng.lat;
                            longitude = e.latlng.lng;

                            var latlon = latitude + ':' + longitude;
                            $("#<%=hftMapclick.ClientID %>").val(latlon);                            console.log('hftMapclick', latlon);                            _doBack();


                        });
                        function _doBack() {
                            $('#<%=btnmap.ClientID%>').click();
                        }
                    </script>

                </div>
                <div id='latlonInfo'></div>
                <div id="featureInfo"></div>
            </div>
        </div>
        <div class="col-lg-5" id="graphBox">
            <div class="row">
                <div class="col-lg-12 col-md-12 no-padd">
                    <div class="card-body" style="font-size: 14px; padding: 10px; font-weight: bold;">
                        <h4 class="text-center">Division-Wise Plots Status</h4>
                    </div>

                    <div class="row" style="margin-left: 10px; margin-right: 30px; height: calc(53vh - 53px); overflow-y: scroll;">
                        <div id="divisions" class="custom-chart"></div>

                    </div>

                </div>
                <hr />
                <div class="table-responsive">
                    <div class="col-lg-12 col-md-12 no-padd" style="border-top: 1px solid #484848;">
                        <div class="table-responsive">
                            <div class="button">
                                <button id="Button1" runat="server" class="custom-button" data-extend="pdf" style="border: none; margin-right: 10px;">
                                    <span>
                                        <h3><i class="fa fa-file-text-o fa-fw"></i>&nbsp;Division-wise Counts</h3>
                                    </span>
                                </button>
                                <button id="pdf" runat="server" class="custom-button" data-extend="pdf" onserverclick="pdf_ServerClick" style="margin-right: 10px; margin-bottom: 10px; margin-top: 10px;">
                                    <h4><i class="fa fa-file-pdf-o fa-fw"></i>&nbsp;PDF</h4>
                                </button>
                                <button id="btnexcle" runat="server" class="custom-button" data-extend="excel" onserverclick="btnexcle_ServerClick">
                                    <h4><i class="fa fa-file-excel-o fa-fw"></i>&nbsp;XL</h4>
                                </button>
                            </div>
                            <div class="col-lg-12" style="height: calc(35vh - 35px); overflow-y: scroll;">
                                <asp:GridView ID="formDetails" runat="server" CssClass="table table-dark cell-border custom-gridview" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="SrNo" HeaderText="S.No" ItemStyle-HorizontalAlign="Right" />
                                        <asp:BoundField DataField="Division" HeaderText="Division" />
                                        <asp:BoundField DataField="Ranges" HeaderText="Ranges" ItemStyle-HorizontalAlign="Right" />
                                        <asp:BoundField DataField="Blocks" HeaderText="Blocks" ItemStyle-HorizontalAlign="Right" />
                                        <asp:BoundField DataField="Compartments" HeaderText="Compartments" ItemStyle-HorizontalAlign="Right" />
                                        <asp:BoundField DataField="Plots" HeaderText="Plots" ItemStyle-HorizontalAlign="Right" />
                                        <asp:BoundField DataField="Surveyed_Plots" HeaderText="Surveyed_Plots" ItemStyle-HorizontalAlign="Right" />
                                        <asp:BoundField DataField="Pending_Plots" HeaderText="Pending_Plots" ItemStyle-HorizontalAlign="Right" />
                                        <asp:BoundField DataField="Percentage_Pending" HeaderText="Percentage_Pending" ItemStyle-HorizontalAlign="Right" />
                                    </Columns>

                                </asp:GridView>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:HiddenField ID="hfArrayMarketing" runat="server" />
    <script>
        let _labels = [], _Totalploats = [], _totalsurveyed = [], _totalpending = [];
        let configChartA2, SRTChartA2;
        $(document).ready(function () {
            function SetchartA2() {
                let divSRTChart1 = $('#divisions');
                divSRTChart1.empty();


                divSRTChart1.append('<canvas id="cnsSRTChart2"></canvas>');

                configChartA2 = {
                    type: 'bar',
                    responsive: true,
                    tooltips: {
                        mode: 'label',
                    },
                    hover: {
                        mode: 'nearest',
                        intersect: true
                    },
                    data: {
                        labels: [],
                        datasets: [
                            {
                                label: "Total Plots",
                                backgroundColor: "#6883a3",
                                data: []
                            },
                            {
                                label: "Total Surveyed",
                                backgroundColor: "#76C1FA",
                                data: []
                            },
                            {
                                label: "Total Pending",
                                backgroundColor: "#F36368",
                                data: []

                            },

                        ]
                    },
                    options: {
                        indexAxis: 'y',

                        elements: {
                            bar: {
                                borderWidth: 2,
                            }
                        },
                        responsive: true,
                        plugins: {
                            legend: {
                                position: 'right',
                            },
                            title: {
                                display: true,

                            }
                        },

                        scales: {                            x: {                                title: {                                    display: true,                                },                                min: -50,                                suggestedMin: 1,                                //max: 14000,                                ticks: {                                    // forces step size to be 50 units                                    stepSize: 1300,                                }                            },                            y: {                                title: {                                    display: true,                                    text: 'Division'                                },                            }                        }
                    },
                }

                ctxDDP = document.getElementById('cnsSRTChart2').getContext('2d');
                SRTChartA2 = new Chart(ctxDDP, configChartA2);
                console.log('ch');

            }
            SetchartA2();
            function GetMarketingDataFields() {                var MShare = $("#<%=hfArrayMarketing.ClientID %>").val();                console.log('GetMarketingDataFields', MShare);                if (MShare.length > 0) {                    _labels = [], _Totalploats = [], _totalsurveyed = [], _totalpending = [];                    rowID = 1;                    $.each(JSON.parse(MShare), function (idx, obj) {                        _labels.push(obj.DivisionName)                        _Totalploats.push(obj.TotalPlots)                        _totalsurveyed.push(obj.TotalSurveyed)                        _totalpending.push(obj.TotalPending)                    });                    configChartA2.data.labels = _labels;                    configChartA2.data.datasets[0].data = _Totalploats;                    configChartA2.data.datasets[1].data = _totalsurveyed;                    configChartA2.data.datasets[2].data = _totalpending;                    SRTChartA2.update();                    console.log('configChartA2', configChartA2);                }            }
            GetMarketingDataFields();
        });






    </script>



</asp:Content>