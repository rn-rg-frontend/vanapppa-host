<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="samplingPlots.aspx.cs" Inherits="vansystem.samplingPlots" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style type="text/css">
        #map {
            height: 100%;
            border: 1px solid gray;
            padding: 10px;
        }

        .HideAll {
            display: none;
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

          /*  .slider::-moz-range-thumb {
                width: 10px;
                height: 10px;
                border-radius: 50%;
                background: #191C76;
                cursor: pointer;
            }*/

        .opacity {
            display: none;
        }

        .showSettings {
            cursor: pointer;
        }

        #ddlselectform {
            background: #004990;
            color: white;
            position: absolute;
            z-index: 1000;
            right: 20px;
            top: 75px;
        }

        .cnts, .surveyTot, .number {
            text-align: right;
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


        @media (min-width: 992px) {
            .col-md-9 {
                width: 66%;
            }
        }

        @media (min-width: 992px) {
            .col-md-3 {
                width: 34%;
            }
        }

        #spinner {
            display: none;
            position: absolute;
            top: 50%;
            left: 44%;
            transform: translate(-50%, -50%);
            z-index: 9999;
        }

            #spinner h1 {
                color: black;
            }

        .tilee {
            height: 87vh;
            position: sticky;
        }

        .box-content .box-height {
            height: 65vh;
        }
          .alert {
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
        integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI="
        crossorigin="" />


    <script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
        integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM="
        crossorigin=""></script>

    <!-- Include Leaflet.markercluster CSS and JS -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.4.1/dist/MarkerCluster.Default.css" />
    <script src="https://unpkg.com/leaflet.markercluster@1.4.1/dist/leaflet.markercluster.js"></script>

    <script type="text/javascript">
        //function showSpinner() {
        //    document.getElementById('spinner').style.display = 'block';
        //}
        function showSpinner() {
            var mywait = document.getElementById("spinner")
            mywait.style.display = 'block';
            return true;
        }




    </script>

    <script type="text/javascript">
        function showNoDataMessage(message) {
            alert(message); // Display the alert message
            setTimeout(function () {
                // Close the alert after 3 seconds (3000 milliseconds)
                document.querySelector('.alert').style.display = 'none';
            }, 3000);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>

    <%--<div class="app-content pd10">
        <div style="padding: 15px">
            <div class="tile col-md-3">--%>
    <%--  <h3>Plot Sampling Form</h3>--%>
    <div class="app-content">
        <div class="row">
            <div class=" card col-md-4  tilee" style="overflow-y: scroll;">
                <div style="height: 67vh; padding-top: 24px">
                    <h3>Grid Based Sampling Technique</h3>
                    <hr />

                    <div class=" tile-body" style="max-height: 100%;">
                        <div class="col-md-12 col-sm-12">
                            <form action="/DataUpload/samplingPlots" method="POST" enctype="multipart/form-data">

                                <div class="form-group">
                                    <label for="confLevel">
                                        Value of t-statistic(tv)
                            <br />
                                        <h4>Value of t-statistic with v degrees of freedom and 5% significance level</h4>
                                    </label>
                                    <asp:TextBox runat="server" ID="txt379" CssClass="form-control" ReadOnly="true" value="1.96"></asp:TextBox>

                                    <asp:Label ID="lbl379" runat="server"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <label for="errLevel">Allowable error (%)</label>
                                    <asp:TextBox runat="server" ID="txterrLevel" CssClass="form-control" ReadOnly="true" value="10"></asp:TextBox>

                                    <asp:Label ID="lblerrLevel" runat="server"></asp:Label>
                                    <%-- <input type="text" name="errLevel" id="errLevel" class="form-control" readonly>--%>
                                </div>
                                <asp:UpdatePanel runat="server" ID="updatepanel1">
                                    <ContentTemplate>
                                        <%-- <div class="col-md-6">--%>
                                        <div class="form-group">
                                            <label class="control-label">State</label><b style="color: red;">&nbsp;*</b>
                                            <asp:DropDownList runat="server" ID="ddlState" CssClass="form-control" DataValueField="StateId" DataTextField="state" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                            <asp:RequiredFieldValidator runat="server" InitialValue="Select" ControlToValidate="ddlState" ErrorMessage="Select State" SetFocusOnError="true" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <%--     </div>--%>
                                        <%--  <div class="col-md-6">--%>
                                        <div class="form-group">
                                            <label class="control-label">District</label><b style="color: red;">&nbsp;*</b>
                                            <asp:DropDownList ID="ddlDist" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlDist_SelectedIndexChanged" AutoPostBack="true">
                                                <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Select District" InitialValue="Select" SetFocusOnError="true" Display="Dynamic" ControlToValidate="ddlDist"></asp:RequiredFieldValidator>
                                        </div>
                                        <%-- </div>--%>

                                        <div class="form-group">
                                            <label for="preSample">
                                                Coefficient of variation(CV)<br />
                                                <h4>Coefficient of variation of the main characteristic/attribute (which can be calculated through past WP)</h4>
                                            </label>
                                            <asp:TextBox runat="server" ID="txtCV" CssClass="form-control" EnableViewState="true"></asp:TextBox>

                                            <asp:Label ID="lblCV" runat="server"></asp:Label>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>


                                <div class="form-group">
                                    <label for="plot">
                                        Total number of grids of optimum size (N)<br />
                                        <h4>Total number of plots of optimum size of main characteristic in the population (division/Range etc.)</h4>
                                    </label>
                                    <asp:TextBox runat="server" ID="txtgrid" ReadOnly="true" CssClass="form-control"></asp:TextBox>

                                    <asp:Label ID="lblgrid" runat="server"></asp:Label>
                                    <%-- <input type="text" name="plot" id="plot" class="form-control" value="0.1">--%>
                                </div>


                                <div class="form-group">
                                    <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                        <ContentTemplate>
                                            <asp:Button ID="btnCalculateSampleSize" runat="server" UseSubmitBehavior="false" Text="Calculate Sample Size (n)" OnClick="btnCalculateSampleSize_Click" class="btn btn-success" />
                                            <asp:Label ID="NLabel" runat="server" style="font-size: 11px;"></asp:Label>
                                            <br />
                                            <br />
                                            <asp:Label ID="lblErrormsg" runat="server" style="font-size: 11px;"></asp:Label>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>

                                <div class="form-group">
                                    <label for="plot">
                                        Total No. of Sample Plots to be generated<br />

                                    </label>
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox runat="server" ID="txtRandomNumber" OnTextChanged="txtRandomNumber_TextChanged" CssClass="form-control" AutoPostBack=""></asp:TextBox>

                                            <%--<asp:Label ID="Label1" runat="server"></asp:Label>--%>
                                            <%-- <asp:Button ID="btnCalculateRandonNumber" runat="server" UseSubmitBehavior="false" Text="Regenrate Random Number" OnClick="btnCalculateRandonNumber_Click" CssClass="btn btn-default" />--%>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnSubmit" UseSubmitBehavior="false" Text="Generate Sample Plots" class="btn btn-success" OnClick="btnSubmit_Click" OnClientClick="showSpinner();" />
                                 <%--   <asp:Label ID="lblmsg1" runat="server" Text="lblmsg1"></asp:Label>
                                    <asp:Label ID="lblmsg2" runat="server" Text="lblmsg2"></asp:Label>
                                    <asp:Label ID="lblmsg3" runat="server" Text="lblmsg3"></asp:Label>--%>

                                </div>

                                <%-- <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                   
                                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                        <ContentTemplate>
                                          
                                            <asp:Button ID="btnCalculateSampleSize" runat="server" UseSubmitBehavior="false" Text="calculate n" OnClick="btnCalculateSampleSize_Click" class="btn btn-success" />
                                            <asp:Label ID="NLabel" runat="server"></asp:Label>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="plot">
                                        Enter Random Value<br />

                                    </label>
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:TextBox runat="server" ID="txtRandomNumber" CssClass="form-control"></asp:TextBox>

                                            
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:Button runat="server" ID="btnSubmit" UseSubmitBehavior="false" Text="Plot n" class="btn btn-success" OnClick="btnSubmit_Click" OnClientClick="showSpinner();" />
                                    

                                </div>
                            </div>
                        </div>--%>
                                <div class="col-md-8 col-sm-12 m-coupe">

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <%--<a class="btn btn-primary col-md-12" href="#" id="downloadShapeFile"><i class="fa fa-map-marker fa-fw"></i>Download Shape file</a>--%>
                                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                    <ContentTemplate>
                                                        <asp:HiddenField ID="hdSessionId" runat="server" Value="" />
                                                        <asp:Button ID="btnDownloadShapeFile" runat="server" UseSubmitBehavior="false" Text="Generate Shape file" CssClass="btn btn-primary hidden" OnClick="btnDownloadShapeFile_Click" />

                                                    </ContentTemplate>
                                                </asp:UpdatePanel>

                                            </div>
                                        </div>
                                        <br />
                                         <br />
                                        <br />
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                                                        <ContentTemplate>
                                                            <asp:Label ID="lblStatusmsg" runat="server" Text="" CssClass="label-info"></asp:Label>

                                                        </ContentTemplate>

                                                    </asp:UpdatePanel>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <br />
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                                        <ContentTemplate>
                                                            <%-- <a class="btn btn-primary col-md-12" href="#" id="downloadKML"><i class="fa fa-map-pin fa-fw"></i>Download KML file</a>--%>
                                                            <asp:Button ID="downloadKML" runat="server" UseSubmitBehavior="false" Text="Download KML file" CssClass="btn btn-primary hidden" OnClick="downloadKML_Click" />

                                                        </ContentTemplate>
                                                        <Triggers>
                                                            <asp:PostBackTrigger ControlID="downloadKML" />
                                                        </Triggers>
                                                    </asp:UpdatePanel>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <%--<a class="btn btn-primary col-md-12" href="#" id="downloadShapeFile"><i class="fa fa-map-marker fa-fw"></i>Download Shape file</a>--%>
                                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                        <ContentTemplate>
                                                            <%-- <asp:Label ID="lblStatusmsg" runat="server" Text="" CssClass="label-info"></asp:Label>--%>

                                                            <%-- <asp:Button ID="btnDownloadShapeFile" runat="server" Text="Download Shape file" CssClass="btn btn-primary " OnClick="btnDownloadShapeFile_Click" />--%>

                                                            <a href="GenerateFiles.aspx" id="btnGenerate" class="btn btn-primary hidden" target="_blank" runat="server">Download Shape file </a>




                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>

                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                                        <ContentTemplate>
                                                            <%--  <a class="btn btn-primary col-md-12" href="#" id="downloadCSV"><i class="fa fa-file-excel-o fa-fw"></i>Download CSV file</a>--%>
                                                            <asp:Button ID="downloadCSV" runat="server" UseSubmitBehavior="false" CssClass="btn btn-primary hidden" Text="Download CSV file" OnClick="downloadCSV_Click" />
                                                           <%-- <asp:Label ID="lblcsvmsg" runat="server" Text="Label"></asp:Label>--%>
                                                        </ContentTemplate>
                                                        <Triggers>
                                                            <asp:PostBackTrigger ControlID="downloadCSV" />
                                                        </Triggers>
                                                    </asp:UpdatePanel>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                <ContentTemplate>

                                                    <asp:Panel ID="pnlLoading" runat="server" ClientIDMode="Static" CssClass="alert" Style="display: none">
                                                        <div class="text-center">
                                                            <img src="images/waiting.gif" />

                                                            <div>
                                                                <center>Please wait...... </center>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>



                                    </div>



                                    <%-- <asp:Button ID="YourButton" runat="server" Text="Get Random Values" OnClick="YourButton_Click" />
                    <br />
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>--%>



                                    <%--  <div class="form-group">
                        <input id="checkStatus" type="button" value="Check Status" class="btn btn-primary col-md-12" />
                        <div style="text-align: center;">
                            <span class="badge" id="messageStatus"></span>
                        </div>
                    </div>--%>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="tile col-md-8 col-sm-12" style="padding: 6px; height: 85vh;">

            <div id="spinner" style="display: none;">
                <h1><b>Loading data - please wait</b></h1>
                <div style="text-align: center">
                    <img src="images/Spinner-2.gif" style="height: 100px; width: 100px" />
                </div>
            </div>
            <div id="map">
                <asp:HiddenField ID="hdndivision" runat="server" Value="" />

                <asp:HiddenField ID="hdnblock" runat="server" Value="" />
                <asp:HiddenField ID="hdncompartment" runat="server" Value="" />
                <asp:HiddenField ID="hdnplots" runat="server" Value="" />
                <asp:HiddenField ID="hdnlon" runat="server" Value="" />
                <asp:HiddenField ID="hdnlat" runat="server" Value="" />
                <asp:HiddenField ID="hdngrid" runat="server" Value="" />
                <asp:HiddenField ID="hdnlonglati" runat="server" Value="" />

                <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
                <script>


                    var division = $("#<%=hdndivision.ClientID %>").val();

                    var block = $("#<%=hdnblock.ClientID %>").val();
                    var compartment = $("#<%=hdncompartment.ClientID %>").val();
                    var plot = $("#<%=hdnplots.ClientID %>").val();
                    var lon = $("#<%=hdnlon.ClientID %>").val();
                    var lat = $("#<%=hdnlat.ClientID %>").val();
                    var grid = $("#<%=hdngrid.ClientID %>").val();


                    var OpenStreet = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                        id: 'mapbox/streets-v11', attribution: 'Open Street',
                    });

                    var divisions = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?service=WMS&', {
                        layers: division,
                        format: 'image/png',
                        transparent: true
                    });

                    var block = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?service=WMS&', {
                        layers: block,
                        format: 'image/png',
                        transparent: true
                    });
                    var compartment = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?service=WMS&', {
                        layers: compartment,
                        format: 'image/png',
                        transparent: true
                    });
                    var plots = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?service=WMS&', {
                        layers: plot,
                        format: 'image/png',
                        transparent: true
                    });
                    var grid = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?service=WMS&', {
                        layers: grid,
                        format: 'image/png',
                        transparent: true
                    });
                    var otherlayer = [OpenStreet, divisions, block, compartment, plots, grid]
                    var map = L.map('map', {
                        zoomControl: false,
                        center: [lon, lat],
                        zoom: 10,
                        layers: otherlayer
                    });
                    $(document).ready(function () {
                        loopHiddenDataTable();
                        // Function to loop through the DataTable stored in the hidden field
                        function loopHiddenDataTable() {

                            // Get the value of the hidden field
                            var hiddenField = document.getElementById('<%= hdnlonglati.ClientID %>');
                            var jsonData = hiddenField.value;

                            // Parse the JSON string to get the DataTable
                            var dataTable = JSON.parse(jsonData);

                            // Create a marker cluster group
                            var markers = L.markerClusterGroup();
                            var GridMarkers = [];
                            console.log('loopHiddenDataTable', dataTable);
                            // Loop through rows
                            $.each(JSON.parse(jsonData), function (idx, obj) {
                                var lat = parseFloat(obj.LatitudeDD);
                                var longi = parseFloat(obj.LongitudeDD);
                                console.log('lat', lat);
                                console.log('longi', longi);
                                GridMarkers[idx] = new L.marker([lat, longi]);
                                markers.addLayer(GridMarkers[idx]);
                                GridMarkers[idx].addTo(map);
                                // GridMarkers[idx].on('click', function () {
                                //     plotGraph("marker", this);
                                //});
                            });

                            // Add the marker cluster group to the map
                            //map.addLayer(markers);
                            //var marker = L.marker([19.63541418, 78.95485986]);
                            //var marker1 = L.marker([19.66319194, 78.9270821]);

                            //// Adding marker to the map
                            //marker.addTo(map);
                            //marker1.addTo(map);

                        }


                    });


                </script>

            </div>
        </div>
        <div class="clearfix"></div>

    </div>
   

    <script src="/vali/js/ol3.js"></script>

    <%--  <script src="/vali/js/sampling-plots.js"></script>--%>

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
