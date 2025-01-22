<%@ Page Title="Van - Weather" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="Weather.aspx.cs" Inherits="vansystem.Weather" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
    <link rel="stylesheet" type="text/css" href="/vali/css/main.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/font-awesome-custom.css">
    <link rel="stylesheet" type="text/css" href="/vali/css/custom.css">
    <link rel="stylesheet" type="text/css" href="/global/css/ol4.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <script type="text/javascript" src="/vali/js/jquery-3.2.1.min.js"></script>
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
    <style type="text/css">
        h6.titleBar, h5 {
            margin: 15px 0;
        }

        h5 {
            margin-bottom: 0;
        }

        div.box {
            height: 200px;
            overflow-y: scroll;
            border: 1px solid #cacaca;
            background: #FAFAFA;
            border: 2px solid #ced4da;
            border-radius: 4px;
        }

        .elementBox {
           /* / margin: 0 15px; /*/
            padding: 10px;
            border: 2px solid #ced4da;
            border-radius: 4px;
        }

 /*       .errorMessage {
            background-color: white;
            width: 143px;
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-left: 107px;
            visibility: hidden;
            border-radius: 10px;
            position: relative;
            float: left;
        }*/

            .errorMessage.top-arrow:after {
                content: " ";
                position: absolute;
                right: 90px;
                top: -15px;
                border-top: none;
                border-right: 10px solid transparent;
                border-left: 10px solid transparent;
                border-bottom: 15px solid white;
            }

        .required-field-message {
            color: Red;
            position: absolute;
            top: 34px;
            /*visibility: visible !important;*/
        }


           #img{
                width:20px;
                height:20px;
                position:absolute;
                top:15%;
                right:5%;
            }
            #pass{
                width:20px;
                height:20px;
                position:absolute;
                top:15%;
                right:5%;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="app-content">
        <form name="simpleForm" class="form-horizontal" method="post" action="/postNewUser">
            <input type="hidden" name="user_role" id="userRole" value="3" />
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <h3 class="tile-title">Weather</h3>
                        <div class="tile-body">
                                                             

                            <div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Year<b class="text-danger">&nbsp;*</b></label>
    <div class="col-md-8">                                 
        <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control" required="true">
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
            <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvYear" runat="server" ControlToValidate="ddlYear" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>

                           <div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">January</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtJanuaryMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJanuaryMaxRainfall" runat="server" ControlToValidate="txtJanuaryMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJanuaryMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJanuaryMinRainfall" runat="server" ControlToValidate="txtJanuaryMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJanuaryAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJanuaryAvgRainfall" runat="server" ControlToValidate="txtJanuaryAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJanuaryMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJanuaryMaxHumidity" runat="server" ControlToValidate="txtJanuaryMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJanuaryMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJanuaryMinHumidity" runat="server" ControlToValidate="txtJanuaryMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJanuaryAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJanuaryAvgHumidity" runat="server" ControlToValidate="txtJanuaryAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJanuaryMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJanuaryMaxTemperature" runat="server" ControlToValidate="txtJanuaryMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJanuaryMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJanuaryMinTemperature" runat="server" ControlToValidate="txtJanuaryMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJanuaryAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJanuaryAvgTemperature" runat="server" ControlToValidate="txtJanuaryAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">February</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtFebruaryMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFebruaryMaxRainfall" runat="server" ControlToValidate="txtFebruaryMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtFebruaryMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFebruaryMinRainfall" runat="server" ControlToValidate="txtFebruaryMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtFebruaryAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFebruaryAvgRainfall" runat="server" ControlToValidate="txtFebruaryAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtFebruaryMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFebruaryMaxHumidity" runat="server" ControlToValidate="txtFebruaryMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtFebruaryMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFebruaryMinHumidity" runat="server" ControlToValidate="txtFebruaryMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtFebruaryAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFebruaryAvgHumidity" runat="server" ControlToValidate="txtFebruaryAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtFebruaryMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFebruaryMaxTemperature" runat="server" ControlToValidate="txtFebruaryMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtFebruaryMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFebruaryMinTemperature" runat="server" ControlToValidate="txtFebruaryMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtFebruaryAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFebruaryAvgTemperature" runat="server" ControlToValidate="txtFebruaryAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">March</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtMarchMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMarchMaxRainfall" runat="server" ControlToValidate="txtMarchMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMarchMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMarchMinRainfall" runat="server" ControlToValidate="txtMarchMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMarchAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMarchAvgRainfall" runat="server" ControlToValidate="txtMarchAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMarchMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMarchMaxHumidity" runat="server" ControlToValidate="txtMarchMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMarchMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMarchMinHumidity" runat="server" ControlToValidate="txtMarchMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMarchAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMarchAvgHumidity" runat="server" ControlToValidate="txtMarchAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMarchMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMarchMaxTemperature" runat="server" ControlToValidate="txtMarchMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMarchMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMarchMinTemperature" runat="server" ControlToValidate="txtMarchMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMarchAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMarchAvgTemperature" runat="server" ControlToValidate="txtMarchAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">April</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtAprilMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAprilMaxRainfall" runat="server" ControlToValidate="txtAprilMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtAprilMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAprilMinRainfall" runat="server" ControlToValidate="txtAprilMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtAprilAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAprilAvgRainfall" runat="server" ControlToValidate="txtAprilAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtAprilMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAprilMaxHumidity" runat="server" ControlToValidate="txtAprilMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtAprilMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAprilMinHumidity" runat="server" ControlToValidate="txtAprilMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtAprilAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAprilAvgHumidity" runat="server" ControlToValidate="txtAprilAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtAprilMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAprilMaxTemperature" runat="server" ControlToValidate="txtAprilMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtAprilMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAprilMinTemperature" runat="server" ControlToValidate="txtAprilMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtAprilAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAprilAvgTemperature" runat="server" ControlToValidate="txtAprilAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">May</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtMayMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMayMaxRainfall" runat="server" ControlToValidate="txtMayMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMayMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMayMinRainfall" runat="server" ControlToValidate="txtMayMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMayAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMayAvgRainfall" runat="server" ControlToValidate="txtMayAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMayMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMayMaxHumidity" runat="server" ControlToValidate="txtMayMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMayMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMayMinHumidity" runat="server" ControlToValidate="txtMayMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMayAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMayAvgHumidity" runat="server" ControlToValidate="txtMayAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMayMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMayMaxTemperature" runat="server" ControlToValidate="txtMayMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMayMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMayMinTemperature" runat="server" ControlToValidate="txtMayMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtMayAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMayAvgTemperature" runat="server" ControlToValidate="txtMayAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">June</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtJuneMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJuneMaxRainfall" runat="server" ControlToValidate="txtJuneMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJuneMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJuneMinRainfall" runat="server" ControlToValidate="txtJuneMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJuneAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJuneAvgRainfall" runat="server" ControlToValidate="txtJuneAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJuneMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJuneMaxHumidity" runat="server" ControlToValidate="txtJuneMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJuneMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJuneMinHumidity" runat="server" ControlToValidate="txtJuneMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJuneAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJuneAvgHumidity" runat="server" ControlToValidate="txtJuneAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJuneMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJuneMaxTemperature" runat="server" ControlToValidate="txtJuneMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJuneMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJuneMinTemperature" runat="server" ControlToValidate="txtJuneMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJuneAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJuneAvgTemperature" runat="server" ControlToValidate="txtJuneAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">July</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtJulyMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJulyMaxRainfall" runat="server" ControlToValidate="txtJulyMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJulyMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJulyMinRainfall" runat="server" ControlToValidate="txtJulyMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJulyAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJulyAvgRainfall" runat="server" ControlToValidate="txtJulyAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJulyMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJulyMaxHumidity" runat="server" ControlToValidate="txtJulyMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJulyMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJulyMinHumidity" runat="server" ControlToValidate="txtJulyMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJulyAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJulyAvgHumidity" runat="server" ControlToValidate="txtJulyAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJulyMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJulyMaxTemperature" runat="server" ControlToValidate="txtJulyMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJulyMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJulyMinTemperature" runat="server" ControlToValidate="txtJulyMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtJulyAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvJulyAvgTemperature" runat="server" ControlToValidate="txtJulyAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">August</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtAugustMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAugustMaxRainfall" runat="server" ControlToValidate="txtAugustMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtAugustMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAugustMinRainfall" runat="server" ControlToValidate="txtAugustMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtAugustAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAugustAvgRainfall" runat="server" ControlToValidate="txtAugustAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtAugustMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAugustMaxHumidity" runat="server" ControlToValidate="txtAugustMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtAugustMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAugustMinHumidity" runat="server" ControlToValidate="txtAugustMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtAugustAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAugustAvgHumidity" runat="server" ControlToValidate="txtAugustAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtAugustMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAugustMaxTemperature" runat="server" ControlToValidate="txtAugustMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtAugustMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAugustMinTemperature" runat="server" ControlToValidate="txtAugustMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-2">
                    <asp:TextBox ID="txtAugustAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAugustAvgTemperature" runat="server" ControlToValidate="txtAugustAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">September</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtSeptemberMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSeptemberMaxRainfall" runat="server" ControlToValidate="txtSeptemberMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtSeptemberMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSeptemberMinRainfall" runat="server" ControlToValidate="txtSeptemberMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtSeptemberAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSeptemberAvgRainfall" runat="server" ControlToValidate="txtSeptemberAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtSeptemberMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSeptemberMaxHumidity" runat="server" ControlToValidate="txtSeptemberMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtSeptemberMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSeptemberMinHumidity" runat="server" ControlToValidate="txtSeptemberMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtSeptemberAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSeptemberAvgHumidity" runat="server" ControlToValidate="txtSeptemberAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtSeptemberMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSeptemberMaxTemperature" runat="server" ControlToValidate="txtSeptemberMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtSeptemberMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSeptemberMinTemperature" runat="server" ControlToValidate="txtSeptemberMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtSeptemberAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSeptemberAvgTemperature" runat="server" ControlToValidate="txtSeptemberAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">October</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtOctoberMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOctoberMaxRainfall" runat="server" ControlToValidate="txtOctoberMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtOctoberMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOctoberMinRainfall" runat="server" ControlToValidate="txtOctoberMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtOctoberAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOctoberAvgRainfall" runat="server" ControlToValidate="txtOctoberAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtOctoberMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOctoberMaxHumidity" runat="server" ControlToValidate="txtOctoberMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtOctoberMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOctoberMinHumidity" runat="server" ControlToValidate="txtOctoberMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
                                    <div class="col-md-2">
                <asp:TextBox ID="txtOctoberAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOctoberAvgHumidity" runat="server" ControlToValidate="txtOctoberAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtOctoberMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOctoberMaxTemperature" runat="server" ControlToValidate="txtOctoberMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtOctoberMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOctoberMinTemperature" runat="server" ControlToValidate="txtOctoberMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtOctoberAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOctoberAvgTemperature" runat="server" ControlToValidate="txtOctoberAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">November</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtNovemberMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNovemberMaxRainfall" runat="server" ControlToValidate="txtNovemberMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtNovemberMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNovemberMinRainfall" runat="server" ControlToValidate="txtNovemberMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtNovemberAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNovemberAvgRainfall" runat="server" ControlToValidate="txtNovemberAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtNovemberMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNovemberMaxHumidity" runat="server" ControlToValidate="txtNovemberMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtNovemberMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNovemberMinHumidity" runat="server" ControlToValidate="txtNovemberMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtNovemberAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNovemberAvgHumidity" runat="server" ControlToValidate="txtNovemberAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtNovemberMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNovemberMaxTemperature" runat="server" ControlToValidate="txtNovemberMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtNovemberMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNovemberMinTemperature" runat="server" ControlToValidate="txtNovemberMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtNovemberAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNovemberAvgTemperature" runat="server" ControlToValidate="txtNovemberAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>

<div class="form-group row">
    <label class="control-label col-md-2" style="margin-top: 11px;">December</label>
    <div class="col-md-10">
        <div class="row">
            <div class="col-md-2">
                <asp:TextBox ID="txtDecemberMaxRainfall" runat="server" CssClass="form-control" placeholder="Max Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDecemberMaxRainfall" runat="server" ControlToValidate="txtDecemberMaxRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtDecemberMinRainfall" runat="server" CssClass="form-control" placeholder="Min Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDecemberMinRainfall" runat="server" ControlToValidate="txtDecemberMinRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtDecemberAvgRainfall" runat="server" CssClass="form-control" placeholder="Avg Rainfall" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDecemberAvgRainfall" runat="server" ControlToValidate="txtDecemberAvgRainfall" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtDecemberMaxHumidity" runat="server" CssClass="form-control" placeholder="Max Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDecemberMaxHumidity" runat="server" ControlToValidate="txtDecemberMaxHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtDecemberMinHumidity" runat="server" CssClass="form-control" placeholder="Min Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDecemberMinHumidity" runat="server" ControlToValidate="txtDecemberMinHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtDecemberAvgHumidity" runat="server" CssClass="form-control" placeholder="Avg Humidity" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDecemberAvgHumidity" runat="server" ControlToValidate="txtDecemberAvgHumidity" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtDecemberMaxTemperature" runat="server" CssClass="form-control" placeholder="Max Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDecemberMaxTemperature" runat="server" ControlToValidate="txtDecemberMaxTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtDecemberMinTemperature" runat="server" CssClass="form-control" placeholder="Min Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDecemberMinTemperature" runat="server" ControlToValidate="txtDecemberMinTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-2">
                <asp:TextBox ID="txtDecemberAvgTemperature" runat="server" CssClass="form-control" placeholder="Avg Temperature" required="true" oninput="DecimalCheck(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDecemberAvgTemperature" runat="server" ControlToValidate="txtDecemberAvgTemperature" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>

            










<div class="form-group row">
    <label class="control-label col-md-3" style="margin-top: 11px;">Remarks</label>
    <div class="col-md-8">                                 
        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" placeholder="Remarks" MaxLength="200"></asp:TextBox>
    </div>
</div>

                                                  
      
                            <div class="tile-footer">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
  
                                        <button class="btn btn-primary" type="submit" runat="server" id="btnsubmit" name="btnsubmit"  onserverclick="Unnamed_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save Details</button>
                                        <button class="btn btn-danger" type="button" onclick="window.location = 'Weathers.aspx';"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</button>
                                        <br />
                                        <asp:Label ID="insertbox" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
          </div>
        <p class="errorMessage top-arrow"></p>
      
        <script src="/vali/js/user-add.js"></script>
        <script>
        debugger;
        let img = document.getElementById("img");
        let password = document.getElementById("ContentPlaceHolder1_password");

        img.onclick = function () {
            if (password.type == "password") {

                password.type = "text";
                img.src = "images/show.png";
            } else {
                password.type = "password";
                img.src = "images/Eye.png";
            }
        }


    </script>
    <script>
        function isAlphabet(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122) || charCode == 32) {
                return true;
            }
            return false;
        }
    </script>

        <script>
        debugger;
        let pass = document.getElementById("pass");
        let password1 = document.getElementById("ContentPlaceHolder1_retypepassword");

        pass.onclick = function () {

            if (password1.type == "password") {

                password1.type = "text";
                pass.src = "images/show.png";
            } else {
                password1.type = "password";
                pass.src = "images/Eye.png";
            }

        }
    </script>
        <script> 
        function validateEmail(emailId) {
            var mailformat = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            if (emailId.value.match(mailformat)) {

                return true;
            }
            else {
                alert("Invalid email address.");
                emailId.value = "";
            }
        }
    </script>
</asp:Content>
