<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="PMDashboard.aspx.cs" Inherits="vansystem.PMDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        #map {
            height: 65vh;
            border: 1px solid gray;
            padding: 10px;
             overflow-x:clip;
            
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

        /*    .slider::-webkit-slider-thumb {
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
        .tile{
            padding:1.4%;

        }
   







/*        .col-md-8,
.col-md-4 {
    margin-right: 0.5%;
}

.col-md-8 {
    width: 65%;
}

.col-md-4 {
    width: 34%;
}*/

   @media (min-width: 992px){
      .col-md-8 
      {
        width: 65.666667%;
        margin-right: 1%;
      }
    
   }

        @media (min-width: 60%) {
            .col-md-8, .col-md-4 {
                margin-right: 1%;
            }

            .col-md-8 {
                width: 65%;
            }

            .col-md-4 {
                width: 33%;
            }
            .tile{
            padding:2.2%;
            }
        }

         @media only screen and (min-device-width : 268%) and (max-device-width : 3000%)   
         {
            .col-md-8, .col-md-4 {
                margin-right: 1%;
               
            }

            .col-md-8 {
                width: 65%;
                 min-height:200px;
                 height:100%;
            }

            .col-md-4 {
                width: 33%;
            }
            .tile{
            padding:2.2%;
            }
        }
        @media only screen and (min-width:100%) and (max-width: 3000%)  /*and (max-width: 1605px) */ {
            #map{
                height:100%;
                min-height:65vh;
               
            }
            .tile{
            padding:2.2%;
        }
        }
    </style>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
        integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI="
        crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
        integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM="
        crossorigin=""></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="alert alert-dismissible alert-success page-alert">
                           <button class="close" type="button" data-dismiss="alert">x</button>
                          <strong>Logged in Successfully</strong>
               </div>
    <div class="app-content">
        <div class="mapmarg">
              <div class="tile col-md-8" style="max-height: none; height:85vh; max-height:100%;">
            <div class="card mb-3 text-white bg-dark">
                <div class="card-body" style="font-size: 14px; padding: 10px; font-weight: bold;">
                    Total Sampling Plots - <asp:Label ID="totalnoofplots" runat="server" Text=""></asp:Label>
				<%--<asp:Label for="" ID="lbltsc" runat="server" Text="Total Survey Completed -"></asp:Label>
                    <asp:Label for="" ID="lbltsc2" runat="server" Text=""></asp:Label>--%>
                </div>
            </div>
            <div style="display: flex">
                <div class="preview">
                    <h3 class="tile-title">Data Collection Status</h3>
                </div>

               <%-- <div style="margin-left: 500px;">
                    <asp:DropDownList ID="ddlselectform" runat="server"
                        AutoPostBack="true" OnSelectedIndexChanged="ddlselectform_SelectedIndexChanged"
                        Style="color: rgb(247, 251, 252); border-radius: 5px; background: rgb(52, 52, 122); padding: 5px">
                    </asp:DropDownList>
                </div>--%>
            </div>

            <asp:HiddenField ID="hdndivision" runat="server" Value="" />
            <asp:HiddenField ID="hdnplots" runat="server" Value="" />
            <asp:HiddenField ID="hdnlon" runat="server" Value="" />
            <asp:HiddenField ID="hdnlat" runat="server" Value="" />

            <div id="map" class="col-md-12" <%--style="margin-top:-20px; height:400px;"--%>>
                <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
                <script>
                    debugger;
                   
                    var division = $("#<%=hdndivision.ClientID %>").val();
                    var plot = $("#<%=hdnplots.ClientID %>").val();
                    var lon = $("#<%=hdnlon.ClientID %>").val();
                    var lat = $("#<%=hdnlat.ClientID %>").val();


                    var OpenStreet = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                        id: 'mapbox/streets-v11', attribution: 'Open Street',
                    });

                    var divisions = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?service=WMS&', {
                        layers: division,
                        format: 'image/png',
                        transparent: true
                    });
                    var plots = L.tileLayer.wms('http://3.7.18.31:8080/geoserver/cite/wms?service=WMS&', {
                        layers: plot,
                        format: 'image/png',
                        transparent: true
                    });
                    var otherlayer = [OpenStreet, divisions, plots]
                    var map = L.map('map', {
                        zoomControl: true,
                        center: [lon, lat],
                        zoom: 10,
                        layers: otherlayer
                    });
                </script>
                
            </div>
            <div id='latlonInfo'></div>
            <div id="featureInfo"></div>
        </div>
        </div>
      



        <div class="tile col-md-4" style="max-height: 85vh; overflow-y: scroll;">
            <div class="card mb-3 text-white bg-dark" style="margin-right:-10px;">
                <div class="card-body" style="font-size: 14px; padding: 10px; font-weight: bold;">
                    Mammal Line Transect
                </div>
            </div>
            <div>

                <asp:GridView ID="GDMammalLine" runat="server" AutoGenerateColumns="false" GridLines="none" frame="void"
                    rules="rows" Width="450" Height="200" CellPadding="4" CellSpacing="4">
                    <RowStyle BackColor="White" BorderColor="ControlLight" />
                    <HeaderStyle BorderColor="ControlLight" />
                    <Columns>
                        <%--<asp:BoundField DataField="division" HeaderText="Division" />--%>
                        <asp:BoundField DataField="range" HeaderText="Range" />
                        <asp:BoundField DataField="count" HeaderText="Total Surveys" ItemStyle-HorizontalAlign="Center" />
                    </Columns>
                </asp:GridView>
                <hr />
            </div>


            <div class="card mb-3 text-white bg-dark" style="margin-right:-10px;">
                <div class="card-body" style="font-size: 14px; padding: 10px; font-weight: bold;">
                    Ocular Estimation
                </div>
            </div>
            <div>

                <asp:GridView ID="GDOcularEstimation" runat="server" AutoGenerateColumns="false" GridLines="none" frame="void"
                    rules="rows" Width="450" Height="200">
                    <RowStyle BackColor="White" BorderColor="ControlLight" />
                    <HeaderStyle BorderColor="ControlLight" />
                    <Columns>
                         
                        <asp:BoundField DataField="range" HeaderText="Range" />
                        <asp:BoundField DataField="count" HeaderText="Total Surveys" ItemStyle-HorizontalAlign="Center" />
                    </Columns>
                </asp:GridView>
                <hr />
            </div>


            <div class="card mb-3 text-white bg-dark" style="margin-right:-10px;">
    <div class="card-body" style="font-size: 14px; padding: 10px; font-weight: bold;">
       Dung Count
    </div>
</div>
<div>

    <asp:GridView ID="GDDungCount" runat="server" AutoGenerateColumns="false" GridLines="none" frame="void"
        rules="rows" Width="450" Height="200">
        <RowStyle BackColor="White" BorderColor="ControlLight" />
        <HeaderStyle BorderColor="ControlLight" />
        <Columns>
              
            <asp:BoundField DataField="range" HeaderText="Range" />
            <asp:BoundField DataField="count" HeaderText="Total Surveys" ItemStyle-HorizontalAlign="Center" />
        </Columns>
    </asp:GridView>
    <hr />
</div>


                        <div class="card mb-3 text-white bg-dark" style="margin-right:-10px;">
    <div class="card-body" style="font-size: 14px; padding: 10px; font-weight: bold;">
       Herpetofauna survey
    </div>
</div>
<div>

    <asp:GridView ID="GDHerpetofaunaSurvey" runat="server" AutoGenerateColumns="false" GridLines="none" frame="void"
        rules="rows" Width="450" Height="200">
        <RowStyle BackColor="White" BorderColor="ControlLight" />
        <HeaderStyle BorderColor="ControlLight" />
        <Columns>
              
            <asp:BoundField DataField="range" HeaderText="Range" />
            <asp:BoundField DataField="count" HeaderText="Total Surveys" ItemStyle-HorizontalAlign="Center" />
        </Columns>
    </asp:GridView>
    <hr />
</div>


                                    <div class="card mb-3 text-white bg-dark" style="margin-right:-10px;">
    <div class="card-body" style="font-size: 14px; padding: 10px; font-weight: bold;">
       Human Disturbance
    </div>
</div>
<div>

    <asp:GridView ID="GDHumanDisturbance" runat="server" AutoGenerateColumns="false" GridLines="none" frame="void"
        rules="rows" Width="450" Height="200">
        <RowStyle BackColor="White" BorderColor="ControlLight" />
        <HeaderStyle BorderColor="ControlLight" />
        <Columns>
              
            <asp:BoundField DataField="range" HeaderText="Range" />
            <asp:BoundField DataField="count" HeaderText="Total Surveys" ItemStyle-HorizontalAlign="Center" />
        </Columns>
    </asp:GridView>
    <hr />
</div>


            
                                    <div class="card mb-3 text-white bg-dark" style="margin-right:-10px;">
    <div class="card-body" style="font-size: 14px; padding: 10px; font-weight: bold;">
      Birds Pop Call Count
    </div>
</div>
<div>

    <asp:GridView ID="GDBirdsPOpCall" runat="server" AutoGenerateColumns="false" GridLines="none" frame="void"
        rules="rows" Width="450" Height="200">
        <RowStyle BackColor="White" BorderColor="ControlLight" />
        <HeaderStyle BorderColor="ControlLight" />
        <Columns>
              
            <asp:BoundField DataField="range" HeaderText="Range" />
            <asp:BoundField DataField="count" HeaderText="Total Surveys" ItemStyle-HorizontalAlign="Center" />
        </Columns>
    </asp:GridView>
    <hr />
</div>

  

            <hr />
        </div>

    </div>
</asp:Content>
