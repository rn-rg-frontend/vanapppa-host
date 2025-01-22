<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="getGISDashboard.aspx.cs" Inherits="vansystem.getGISDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/vali/css/ol3.css" type="text/css" />
    <link rel="stylesheet" href="/vali/css/map.css" type="text/css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
        integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI="
        crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
        integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM="
        crossorigin=""></script>
    <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />
    <script src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
    <style type="text/css">
        .downloadMapReport {
            width: 35px;
            height: 20px;
            float: right;
        }

        #map {
            border: 1px solid #cecece;
            height: calc(80vh);
            width: 100%;
        }

        #legend .label {
            color: #000;
        }

        #legendContent {
            overflow-y: auto;
            height: 85%;
            padding: 5px 5px;
        }

        #legend {
            background-color: rgba(255, 255, 255, 0.95);
            color: #000;
            position: absolute;
            right: 5px;
            bottom: 0;
            display: block;
            z-index: 10;
            width: 25%;
            height: 40%;
            text-align: left;
            max-width: 300px;
            box-shadow: 0 2px 10px rgb(0 0 0 / 20%);
        }

        #legendTitleBar {
            background: #000000b8;
            color: #fff;
            text-align: left;
            width: 100%;
            cursor: pointer;
            padding: 2px 0 2px 7px;
            font-size: 0.91em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="app-content pd10">
        <div class="col-md-12">
            <h3 class="pull-left">GIS Dashboard</h3>
            <div class="pull-left" style="margin-left: 20px;">
                <%--	<button id="generateShannon" class="btn btn-success btn-sm" onclick="window.location = '/GisDashboard/generateShannon'">Create Shannon</button>--%>
                <%--<button id="addBoundary" class="btn btn-success btn-sm" onclick="window.location = '/GisDashboard/addBoundary'">Add custom map</button>--%>
            </div>
        </div>


        <div class="clearfix"></div>
        <div style="padding: 15px 0;">
            <div class="col-md-4 col-sm-12">
                <div class="tile" style="overflow-y: auto; overflow-x: hidden; max-height: calc(100vh - 155px);">
                    <h4><strong>Forest Boundaries</strong></h4>
                    <div class="clearfix"></div>
                    <div>
                        <div id="labelCtr_0" class="list-group-item row">
                            <div class="col-md-12 row lyrCtrLeft">
                                <div class="col-md-8">Division</div>
                                <div class="col-md-4 row">
                                    <div class="downloadMapReport col-md-6" title="Download Report">
                                        <a href="" runat="server" id="divisionlink" onserverclick="divisionlink_ServerClick"><i class="fa fa-download fa-lg"></i></a>
                                    </div>
                                    <div class="material-switch pull-right col-md-6" title="Set layer visibility">
                                        <input type="checkbox" id="checkDivision" checked="checked" onclick="fnText('division')" /><label for="checkDivision" class="label-success"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="labelCtr_1" class="list-group-item row">
                            <div class="col-md-12 row lyrCtrLeft">
                                <div class="col-md-8">Range</div>
                                <div class="col-md-4 row">
                                    <div class="downloadMapReport col-md-6" title="Download Report">
                                        <a href="" class="downloadLinkMap" runat="server" id="rangelink" onserverclick="divisionlink_ServerClick"><i class="fa fa-download fa-lg"></i></a>
                                    </div>
                                    <div class="material-switch pull-right col-md-6" title="Set layer visibility">
                                        <input type="checkbox" id="checkRange" onclick="fnText('range')" /><label for="checkRange" class="label-success"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="labelCtr_2" class="list-group-item row">
                            <div class="col-md-12 row lyrCtrLeft">
                                <div class="col-md-8">Block</div>
                                <div class="col-md-4 row">
                                    <div class="downloadMapReport col-md-6" title="Download Report">
                                        <a href="" class="downloadLinkMap" runat="server" id="blocklink" onserverclick="divisionlink_ServerClick"><i class="fa fa-download fa-lg"></i></a>
                                    </div>
                                    <div class="material-switch pull-right col-md-6" title="Set layer visibility">
                                        <input type="checkbox" id="checkblock" onclick="fnText('block')" /><label for="checkblock" class="label-success"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="labelCtr_3" class="list-group-item row">
                            <div class="col-md-12 row lyrCtrLeft">
                                <div class="col-md-8">Compartment</div>
                                <div class="col-md-4 row">
                                    <div class="downloadMapReport col-md-6" title="Download Report">
                                        <a href="" class="downloadLinkMap" runat="server" id="compartmentlink" onserverclick="divisionlink_ServerClick"><i class="fa fa-download fa-lg"></i></a>
                                    </div>
                                    <div class="material-switch pull-right col-md-6" title="Set layer visibility">
                                        <input type="checkbox" id="checkcompartment" onclick="fnText('compartment')" /><label for="checkcompartment" class="label-success"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="labelCtr_4" class="list-group-item row">
                            <div class="col-md-12 row lyrCtrLeft">
                                <div class="col-md-8">Plots</div>
                                <div class="col-md-4 row">
                                    <div class="downloadMapReport col-md-6" title="Download Report">
                                        <a href="" class="downloadLinkMap" runat="server" id="plotlink" onserverclick="divisionlink_ServerClick"><i class="fa fa-download fa-lg"></i></a>
                                    </div>
                                    <div class="material-switch pull-right col-md-6" title="Set layer visibility">
                                        <input type="checkbox" id="checkPlots" onclick="fnText('plots')" /><label for="checkPlots" class="label-success"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <asp:HiddenField ID="hdndivision" runat="server" Value="" />
            <asp:HiddenField ID="hdnrange" runat="server" Value="" />
            <asp:HiddenField ID="hdnblock" runat="server" Value="" />
            <asp:HiddenField ID="hdncompartment" runat="server" Value="" />
            <asp:HiddenField ID="hdnplots" runat="server" Value="" />
            <asp:HiddenField ID="hdnlon" runat="server" Value="" />
            <asp:HiddenField ID="hdnlat" runat="server" Value="" />
            <div class="col-md-8 col-sm-12" style="max-height: 85vh;">
                <div class="tile">
                    <div id="map" style="position: relative;">
                        <script>
                            var a = $("#<%=hdndivision.ClientID %>").val();
                            var b = $("#<%=hdnrange.ClientID %>").val();
                            var c = $("#<%=hdnblock.ClientID %>").val();
                            var d = $("#<%=hdncompartment.ClientID %>").val();
                            var e = $("#<%=hdnplots.ClientID %>").val();
                            var lon = $("#<%=hdnlon.ClientID %>").val();
                            var lat = $("#<%=hdnlat.ClientID %>").val();
                            var OpenStreet = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                                id: 'mapbox/streets-v11', attribution: 'Open Street',
                            });

                            // Create layer groups for different categories
                            var divisionsGroup = L.layerGroup();
                            var rangeGroup = L.layerGroup();
                            var blockGroup = L.layerGroup();
                            var compartmentGroup = L.layerGroup();
                            var plotsGroup = L.layerGroup();

                            // Add layers to their respective layer groups
                            var division = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?', {
                                layers: a,
                                format: 'image/png',
                                transparent: true
                            });
                            division.addTo(divisionsGroup);

                            var range = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?', {
                                layers: b,
                                format: 'image/png',
                                transparent: true
                            });
                            range.addTo(rangeGroup);

                            var block = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?', {
                                layers: c,
                                format: 'image/png',
                                transparent: true
                            });
                            block.addTo(blockGroup);

                            var compartment = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?', {
                                layers: d,
                                format: 'image/png',
                                transparent: true
                            });
                            compartment.addTo(compartmentGroup);

                            var plots = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?', {
                                layers: e,
                                format: 'image/png',
                                transparent: true
                            });
                            plots.addTo(plotsGroup);

                            // Create an object to store different layers for control
                            var overlayLayers = {
                                "Division": divisionsGroup,
                                "Range": rangeGroup,
                                "Block": blockGroup,
                                "Compartment": compartmentGroup,
                                "Plots": plotsGroup
                            };

                            // Add layers to map
                            var otherlayer = [OpenStreet, division /*plots*/]
                            var map = L.map('map', {
                                zoomControl: true,
                                center: [lon, lat],
                                zoom: 10,
                                layers: otherlayer
                            });

                            // Add layers control with hierarchical overlay layers
                            L.control.layers(null, overlayLayers).addTo(map);

                            // Add legend control to the map
                            var legend = L.control({ position: 'bottomright' });
                            legend.addTo(map);

                            // Add image overlay
                            //L.imageOverlay(imageUrl, imageBounds).addTo(map);



                            function fnText(str) {
                                if (str == "division") {
                                    if ($("#checkDivision").is(":checked")) {
                                        division.addTo(map);
                                    }
                                    else {
                                        map.removeLayer(division)
                                    }
                                }
                                if (str == "plots") {
                                    if ($("#checkPlots").is(":checked")) {
                                        plots.addTo(map);
                                    }
                                    else {
                                        map.removeLayer(plots)
                                    }
                                }
                                if (str == "range") {
                                    if ($("#checkRange").is(":checked")) {
                                        range.addTo(map);
                                    }
                                    else {
                                        map.removeLayer(range)
                                    }
                                }
                                if (str == "block") {
                                    if ($("#checkblock").is(":checked")) {
                                        block.addTo(map);
                                    }
                                    else {
                                        map.removeLayer(block)
                                    }
                                }
                                if (str == "compartment") {
                                    if ($("#checkcompartment").is(":checked")) {
                                        compartment.addTo(map);
                                    }
                                    else {
                                        map.removeLayer(compartment)
                                    }
                                }

                            }
                        </script>


                        <div id="legend">


                            <div id="legendTitleBar">Legend</div>
                            <div id="legendContent">
                                <div id="row_0" class="legendRow">

                                    <div class="label">Division</div>
                                    <img src="http://3.7.18.31:8080/geoserver/cite/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&WIDTH=20&HEIGHT=20&LAYER=cite:tblDivision" /><br />
                                    <div class="label">Range</div>
                                    <img src="http://3.7.18.31:8080/geoserver/cite/wms?REQUEST=GetLegendGraphic&amp;VERSION=1.0.0&amp;FORMAT=image/png&amp;WIDTH=20&amp;HEIGHT=20&amp;LAYER=cite:tblRange" /><br />
                                    <div class="label">Block</div>
                                    <img src="http://3.7.18.31:8080/geoserver/cite/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&WIDTH=20&HEIGHT=20&LAYER=cite:tblBlock" />
                                    <br />
                                    <div class="label">Compartment</div>
                                    <img src="http://3.7.18.31:8080/geoserver/cite/wms?REQUEST=GetLegendGraphic&amp;VERSION=1.0.0&amp;FORMAT=image/png&amp;WIDTH=20&amp;HEIGHT=20&amp;LAYER=cite:tblCompartment">
                                    <br />
                                    <div class="label">Plots</div>
                                    <img src="http://3.7.18.31:8080/geoserver/cite/wms?REQUEST=GetLegendGraphic&amp;VERSION=1.0.0&amp;FORMAT=image/png&amp;WIDTH=20&amp;HEIGHT=20&amp;LAYER=cite:tblPlot">
                                </div>

                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    

    <script src="/vali/js/plugins/sweetalert.min.js"></script>
    <script src="/vali/js/ol3.js"></script>
    <script src="/vali/js/ol-popup.js"></script>
    <script src="/vali/js/gis-dashboard.js"></script>
    <div id="dataModal" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"
        aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Update Field</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary saveFieldChanges">Save changes</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
