﻿<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="verifyAdminBoundaries.aspx.cs" Inherits="vansystem.DataVerification.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
	<title>Van - Verify Forest Admin Boundaries</title>
	<link rel="stylesheet" type="text/css" href="/vali/css/main.css">
	<link rel="stylesheet" type="text/css" href="/vali/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/vali/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/vali/css/font-awesome-custom.css">
	<link rel="stylesheet" type="text/css" href="/vali/css/custom.css">
	<link rel="stylesheet" type="text/css" href="/global/css/ol4.css">
	<script type="text/javascript" src="/vali/js/jquery-3.2.1.min.js"></script>

	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
	<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
          integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI="
          crossorigin="" /><script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
            integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM="
            crossorigin=""></script>
      <link rel = "stylesheet" href = "http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css"/>
      <script src = "http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     	
    <script>
        //var baseUrl = "https://";
        
        //var username = "adilabad@van";
        //var uploadStatus = 1;
        var dpurl = "http://3.7.18.31:8080/geoserver";
    </script>
<%--<script type="text/javascript">var center = [78.6376512395771, 19.6273983953445]; </script>--%>
<style type="text/css">
	#map {
		border: 1px solid #cecece;
		height: calc(80vh);
		width: 100%;
        /*nikhila*/
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
      z-index: 1000 !important;
      width: 15%;
      height: 25%;
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
     div.relative {
            position: relative;
            height: 200px;
        }

        div.absolute {
            position: absolute;
            bottom: 15px;
            right: 15px;
            width: 600px;
            height: 500px;
        }
        .app-contet{
            margin-left:55px;
            margin-top:95px;
        }
</style>
<link rel="stylesheet" href="/vali/css/ol3.css" type="text/css" />
<link rel="stylesheet" href="/vali/css/map.css" type="text/css" />
<div class="app-content pd10">
	<div class="col-md-12"><h3>View Forest boundaries</h3></div>
	<div class="clearfix"></div>
	<div style="padding: 15px 0;">
					<div class="col-md-4 col-sm-12">
				<div class="tile">
					<div id="layerController">
						<div class="list-group">
							<div id="labelCtr_17" class="list-group-item row verified"><div class="col-md-8 lyrCtrLeft">Division<div class="material-switch pull-right" title="Set layer visibility"><input type="checkbox" id="checkDivision" checked="checked" onclick="fnText('division')" /><label for="checkDivision" class="label-success"></label></div></div><div class="col-md-4 lyrCtrRight divVerified" id="div_17"><i class="fa fa-fw fa-lg fa-check-circle"></i>Uploaded</div></div>
							
							<div><div id="labelCtr_18" class="list-group-item row verified"><div class="col-md-8 lyrCtrLeft">Range<div class="material-switch pull-right" title="Set layer visibility"><input type="checkbox" id="checkRange" onclick="fnText('range')" /><label for="checkRange" class="label-success"></label></div></div><div class="col-md-4 lyrCtrRight divVerified" id="div_18"><i class="fa fa-fw fa-lg fa-check-circle"></i>Uploaded</div></div></div>

							<div><div id="labelCtr_19" class="list-group-item row verified"><div class="col-md-8 lyrCtrLeft">Block<div class="material-switch pull-right" title="Set layer visibility"><input type="checkbox" id="checkblock" onclick="fnText('block')" /><label for="checkblock" class="label-success"></label></div></div><div class="col-md-4 lyrCtrRight divVerified" id="div_19"><i class="fa fa-fw fa-lg fa-check-circle"></i>Uploaded</div></div></div>

							<div><div id="labelCtr_20" class="list-group-item row verified"><div class="col-md-8 lyrCtrLeft">Compartment<div class="material-switch pull-right" title="Set layer visibility"><input type="checkbox" id="checkcompartment" onclick="fnText('compartment')" /><label for="checkcompartment" class="label-success"></label></div></div><div class="col-md-4 lyrCtrRight divVerified" id="div_20"><i class="fa fa-fw fa-lg fa-check-circle"></i>Uploaded</div></div></div>

							<div><div id="labelCtr_21" class="list-group-item row verified"><div class="col-md-8 lyrCtrLeft">Plots<div class="material-switch pull-right" title="Set layer visibility"><input type="checkbox" id="checkPlots" onclick="fnText('plots')" /><label for="checkPlots" class="label-success"></label></div></div><div class="col-md-4 lyrCtrRight divVerified" id="div_21"><i class="fa fa-fw fa-lg fa-check-circle"></i>Uploaded</div></div></div>
						</div>
					</div><br />
											<p>All forest boundaries are uploaded.</p>
										<!--
					<h3 class="tile-title">Key points to look for verification of forest boundaries</h3>
					<div class="tile-body"><p><b>This block will contain step wise tutorial to upload boundaries data.</b><br><br>This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content </p><p> This is dummy content. This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content This is dummy content </p><br></div>
					-->
					<!--div class="tile-footer"><a class="btn btn-primary" href="#">Link</a></div-->
				</div>
			</div>
			 <asp:HiddenField ID="hdndivision" runat="server" Value="" />
        <asp:HiddenField ID="hdnrange" runat="server" Value="" />
        <asp:HiddenField ID="hdnblock" runat="server" Value="" />
        <asp:HiddenField ID="hdncompartment" runat="server" Value="" />
		<asp:HiddenField ID="hdnplots" runat="server" Value="" />
        <asp:HiddenField ID="hdnlon" runat="server" Value="" />
		<asp:HiddenField ID="hdnlat" runat="server" Value="" />
			<div class="relative col-md-8 col-sm-12" style="max-height: 85vh;">
                  <div class="relative">
				<div class="tile">
                   
						<div id="map" style="height: calc(75vh) !important;">
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
                             console.log("division:",division)
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
                             var otherlayer = [OpenStreet ,division /*plots*/]
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
					
					</div>
                     <div class="absolute">
                         <div id="legend"  >
						<div id="legendTitleBar">Legend</div>
						<div id="legendContent">
							<div class="label">Division</div><img src="http://3.7.18.31:8080/geoserver/cite/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&WIDTH=20&HEIGHT=20&LAYER=cite:tblDivision"/><br />
							
							<div class="label">Range</div><img  src="http://3.7.18.31:8080/geoserver/cite/wms?REQUEST=GetLegendGraphic&amp;VERSION=1.0.0&amp;FORMAT=image/png&amp;WIDTH=20&amp;HEIGHT=20&amp;LAYER=cite:tblRange" /><br />
							<div class="label">Block</div><img src="http://3.7.18.31:8080/geoserver/cite/wms?REQUEST=GetLegendGraphic&VERSION=1.0.0&FORMAT=image/png&WIDTH=20&HEIGHT=20&LAYER=cite:tblBlock"/>
							<br />
							<div class="label">Compartment</div><img src="http://3.7.18.31:8080/geoserver/cite/wms?REQUEST=GetLegendGraphic&amp;VERSION=1.0.0&amp;FORMAT=image/png&amp;WIDTH=20&amp;HEIGHT=20&amp;LAYER=cite:tblCompartment">
							<br />
							<div class="label">Plots</div><img src="http://3.7.18.31:8080/geoserver/cite/wms?REQUEST=GetLegendGraphic&amp;VERSION=1.0.0&amp;FORMAT=image/png&amp;WIDTH=20&amp;HEIGHT=20&amp;LAYER=cite:tblPlot">
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
<script src="/vali/js/ol3gm.js"></script>
<script src="/vali/js/verify-admin-boundaries.js"></script>
	
</asp:Content>
