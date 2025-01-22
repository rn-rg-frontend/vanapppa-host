<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="HydrologicalServices.aspx.cs" Inherits="vansystem.HydrologicalServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


     <!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS and JS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>

<!-- Bootstrap Multiselect CSS and JS -->
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <a href="PlotDescription.aspx.designer.cs">PlotDescription.aspx.designer.cs</a>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>


<!-- Select2 CSS and JS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>

    <!-- for SweetAlert Library ND js-->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript">
    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />

    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

   
    <style>
        table {
            width: auto;
            border-collapse: collapse;
            /* margin: 30px auto 0;*/
            margin-left: 1px;
        }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: -2vh;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            z-index: 10;
            font-weight: bold;
            text-align: center;
            white-space:nowrap;
        }

        td, th {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
            font-size: 15px;
        }

        .labels tr td {
            background-color: #2cc16a;
            font-weight: bold;
            color: #fff;
        }

        .label tr td label {
            display: block;
        }


        [data-toggle="toggle"] {
            display: none;
        }

        .box-content {
            max-height: 100%;
            display: flex;
            align-items: center;
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

        body {
            overflow-x: hidden;
            overflow-y: hidden;
        }

        h3 {
            margin-left: 3%;
        }


             @media screen and (max-width: 700px) {
            .pag {
                margin-left: 20%;
            }
        }

          /*@media screen and (max-width: 768px) {

                .app-nav__item {

                   margin-left: 682%;
                    transform: translateX(50%);
                }
          }*/
         
          @media screen and (min-width: 310px) and (max-width: 768px) {
    .app-header {
        height: 63px;
    }
}

            th, td {
                padding: 0.75rem;
            }
            .listboxCSS {
                font-size: 8pt;
                font-family: Arial;
                border: 0;
                overflow: auto;
            }

        .divBorderCSS {
            border-left-width: thin;
            border-right-width: thin;
            border-top: thin;
            border-bottom: thin;
            border-color: #7F9DB9;
            border-style: solid;
            overflow: auto;
            width: 300px;
            height: 100px;
            POSITION: relative;
        }



        .card-body {
            background-color: rgb(252, 252, 252);
            overflow: auto;
            margin-left: 2%;
            margin-bottom: 60px;
            width: 96%;
            max-height: calc(82vh - 100px);
        }

        .custom-pager {
            all: initial;
            border: none !important;
            margin: 0px auto !important;
            padding: unset;
            text-align: center;
            position: fixed;
            bottom: 1vh;
            left: 90%;
            transform: translateX(-50%);
            z-index: 999;
        }

        .sweet-alert button.cancel {
            background-color: #dc3545 !important;
        }



        .custom-pager a:hover,
        .custom-pager a:active,
        .custom-pager a.active {
            background-color: #ddd;
        }

        .btn-approved {
            background-color: green;
            color: white;
        }

        .dropdown-menu {
            MAX-HEIGHT: 150PX;
            OVERFLOW-Y: AUTO;
        }

        @media screen and (max-width: 1917px) {

            .card-body {
                width: 100%;
                max-height: calc(79vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 90%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }

        @media screen and (max-width: 1537px) {

            .card-body {
                width: 100%;
                max-height: calc(77vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 90%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }

        @media screen and (max-width: 1153px) {

            .card-body {
                width: 100%;
                max-height: calc(73vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 90%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }

        @media screen and (max-width: 780px) {

            .card-body {
                width: 100%;
                max-height: calc(66vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 90%;
                transform: translateX(-75%);
                z-index: 999;
            }
        }
    </style>

   

    


      <script type="text/javascript">


          function NumberCheck(input) {

              let value = input.value;
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

              let year = value.replace(/[^0-9]/g, "").substring(0, 4);

              input.value = year;
          }
      </script>



<%--    <script>
        window.onload = function () {
            var cardBody = document.getElementById('cardBody');
            cardBody.scrollTop = cardBody.scrollHeight;
        };
    </script>--%>
   
    
    
    <script>
        var object = { status: false, ele: null };

        function confirmDelete1(ev) {
            if (object.status) {
                object.status = false; // Reset status for next confirmation
                return true;
            }

            swal({
                title: "Are you sure you want to delete this entry?",
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
                    object.status = false;
                });

            return false;
        }
    </script>

   
     <script type="text/javascript">
         function Search_function(strKey) {
             var strData = strKey.value.toLowerCase().split(" ");
             var tblData = document.getElementById("<%=GVHydrological.ClientID %>");
            var rowData;
            var found = false;

            for (var i = 1; i < tblData.rows.length; i++) {
                rowData = tblData.rows[i].innerHTML.toLowerCase();
                var rowFound = true; // Assume the row matches until proven otherwise
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.indexOf(strData[j]) === -1) {
                        rowFound = false; // If any search term is not found in the row, mark it as not found
                        break;
                    }
                }
                tblData.rows[i].style.display = rowFound ? '' : 'none'; // Show or hide the row based on whether it matches the search terms
                if (rowFound) {
                    found = true; // If at least one row matches the search terms, set found to true
                }
            }

            var messageElement = document.getElementById('recordNotFoundMessage');
            if (!messageElement) {
                messageElement = document.createElement('div');
                messageElement.id = 'recordNotFoundMessage';
                messageElement.innerHTML = 'Record not found.';
                messageElement.style.textAlign = 'center';
                messageElement.style.marginTop = '19px';
                messageElement.style.width = "100vw"
                messageElement.style.color = 'red';
                //messageElement.style.paddingBottom = '18%';
                //messageElement.style.overflowY = 'clip';
                tblData.parentElement.appendChild(messageElement);
            }

            messageElement.style.display = found ? 'none' : 'block'; // Show or hide the error message based on whether any records were found
        }

        window.onload = function () {
            document.getElementById("<%= txtSearch1.ClientID %>").value = "";
         };
     </script>
    <script type="text/javascript">
        function Search_Gridview(event) {
            if (event.keyCode === 13) {
                // Prevent the default behavior of the Enter key (form submission)
                event.preventDefault();
                // Perform your search logic here
                adjustGridViewPosition();
                // Additional search logic...
                return false;
            }
            return true;
        }
    </script>


    


      

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager runat="server"></asp:ScriptManager>
   
    <div <%--class="card" style="height: 826px; background-color: #EFEFEF"--%>>
        <div class="container-fluid mt-6">
            <div style="margin-left: 0%; /*width: 113%; */ margin-top: 88px;">
                <div class="d-md-flex justify-content-between align-items-center text-center">

                    <div style="margin-left: 3% !important;">
                        <h3 style="margin-inline:auto; margin-left: 40px !important;"><b>Hydrological Services</b></h3>
                    </div>
                    <div class=" row d-sm-flex justify-content-center align-items-end text-center">
                        <div>
                        <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px; width: 100vw">No records found.</asp:Label>
                      </div>
                        <div class="d-flex justify-content-center align-items-center pl-4" >
                            Search:
                            <asp:TextBox ID="txtSearch1" runat="server" style="background-color:#004990; color:white;" Font-Size="20px" onkeydown="return Search_Gridview(event)" onkeyup="Search_function(this)"></asp:TextBox>
                        </div>
                        <div class="pl-4" style="padding-top:6px;" >
                            <asp:Button ID="btnExport" runat="server" Style="height:34px;" Text="Export to Excel" OnClick="btnExport_Click" />
                        </div>

                    <%-- <input type="button" runat="server" value="Export to Excel" onclick="exportToExcel()" />--%>

                        <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top:6px;  padding-right: 15px;" >
                            Show
                            <div class="pl-2 pr-2">
                                <asp:DropDownList ID="ddlPageSize" runat="server" style="background-color:#004990; color:white; width:70px; border-radius:3px; height:30px;" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                <asp:ListItem Text="10" Value="10" />
                                <asp:ListItem Text="25" Value="25" />
                                <asp:ListItem Text="50" Value="50" />
                            </asp:DropDownList>
                            </div>
                            entries
                        </div>

<%--                        <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top:6px;" >
                            <lable>Show</lable>
                            <div>                                <asp:DropDownList ID="DropDownList1" style="background-color:#004990; color:white; width:70px; border-radius:3px; height:30px;" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">                                    <asp:ListItem Text="10" Value="10" />                                    <asp:ListItem Text="25" Value="25" />                                    <asp:ListItem Text="50" Value="50" />                                </asp:DropDownList>                            </div>                            <lable>entries</lable>
                        </div>--%>
                        
                    </div>
                    
                </div>
              
               <%-- <marquee><div id="recordNotFoundMessage" style="display: none; color: red;">No Records Found.</div></marquee>--%>

                <hr />
                
                <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 3.5rem !important; width: 98%; ">
                    <asp:UpdatePanel runat="server" ID="updatepanel1" style="margin-top: -20px;">
                <ContentTemplate>



                            <div class="box-content" style="display: flex; align-items: center; onkeydown="return Search_Gridview(event)">
                                <asp:GridView ID="GVHydrological" runat="server" AutoGenerateColumns="False" DataKeyNames="HydrologicalServicesId" OnPageIndexChanging="GVHydrological_PageIndexChanging" Style="width: 100%"  AllowPaging="True" OnRowCommand="GVHydrological_RowCommand" OnRowDataBound="GVHydrological_RowDataBound" ShowHeaderWhenEmpty="true">
                                    <AlternatingRowStyle BackColor="White" />
                                     <RowStyle BackColor="#f5f5f5" />
                                    <PagerSettings  Mode="NumericFirstLast" FirstPageText="First"   PageButtonCount="10"  LastPageText="Last" />
                                    <Columns>

                                            
                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="device_id" HeaderText="DEVICE_ID" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                          <%--<asp:BoundField ItemStyle-Width="150px" DataField="circle_name" HeaderText="CIRCLE" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                        <%--<asp:TemplateField HeaderText="Action" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary"  CausesValidation="false" CommandName="cmdApprove" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Approve" />
                                          </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>--%>

                                        

                                       
                                        
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>
                              <%--  <asp:TemplateField HeaderText="Survey ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSurveyID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle Width="20%" />
                                </asp:TemplateField>--%>
                                        <asp:BoundField DataField="HydrologicalServicesId" HeaderText="Survey ID" Visible="true" />

                                        <asp:BoundField ItemStyle-Width="150px" DataField="HydrologicalServicesName" HeaderText="Surveyor Name" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="Gender" HeaderText="Gender" />

                                        <asp:BoundField ItemStyle-Width="150px" DataField="PhoneNumber" HeaderText="Phone Number">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Designation" HeaderText="Surveyor Designation" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Longitude" HeaderText="Longitude" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Latitude" HeaderText="Latitude" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Accuracy" HeaderText="Accuracy" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Altitude" HeaderText="Altitude" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                         <asp:BoundField ItemStyle-Width="150px" DataField="datecreated" HeaderText="Survey Date" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>                                            
                                        <asp:BoundField ItemStyle-Width="150px" DataField="StateName" HeaderText="State" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="DivisionName" HeaderText="Division" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="RangeName" HeaderText="Range" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="BlockName" HeaderText="Block" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="VillageId" HeaderText="Name of Village">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="ForestTypeId" HeaderText="Forest Type">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="HydroType" HeaderText="Type of Hydrological Service">
                                          <ItemStyle Width="150px" />
                                          </asp:BoundField>
                                       
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Stream" HeaderText="Name of Stream/ River">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Nature" HeaderText="Past Nature of Flow in Stream">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Duration" HeaderText="Duration of Water Flow(Avg.Months)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="VillageUse" HeaderText="Name of Villages Using Water">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterPolluted" HeaderText="Is Stream/River Water Polluted">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Incidents" HeaderText="Incident due to Poor Quality of Water">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Ph" HeaderText="pH of Stream">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Tds" HeaderText="TDS of Stream">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Ecoil" HeaderText="eCoil of Stream">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

<%--                                         <asp:BoundField ItemStyle-Width="150px" DataField="multi_stream" HeaderText="Types of soil and moisture conversation works under taken in the catchmnet of stream/River">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>

                                         <asp:TemplateField HeaderText="Types of soil and moisture conversation works under taken in the catchmnet of stream/River">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBirds" runat="server" Text='<%# TrimTo(Eval("multi_stream"),30)%>'></asp:Label>

                                            </ItemTemplate>
                                            <EditItemTemplate>
                                               <asp:Label ID="lblBirds" runat="server" Text='<%# TrimTo(Eval("multi_stream"),30)%>'></asp:Label>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterName" HeaderText="Name of Waterbody">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterbodyType" HeaderText="Type of Waterbody">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterbodyStatus" HeaderText="Status of Waterbody">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterbodySeason" HeaderText="Seasonality of Waterbody">
                                            <ItemStyle Width="200px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterBodyPort" HeaderText="Is Water Potable">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterExtent" HeaderText="Extent of Forest area under Waterbody(ha)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                         <asp:BoundField ItemStyle-Width="150px" DataField="WaterBodyReport" HeaderText="Water Quality Report Available">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterPh" HeaderText="pH of Waterbody">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterTds" HeaderText="TDS of Waterbody">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterEcoil" HeaderText="eCoil of Waterbody">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterComm" HeaderText="Waterbody used by Community for how many year">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterFlora" HeaderText="Major Aquatic Flora Found">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterFauna" HeaderText="Major Aquatic Fauna found">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterBirds" HeaderText="Major Local Migratory Birds found">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="WaterBodyUsed" HeaderText="Waterbody used by Community">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                          <asp:BoundField ItemStyle-Width="150px" DataField="WaterVisitors" HeaderText="Approx Number of Visitors in 1 Year">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Waterbody_livelihood_income" HeaderText="Any Livelihood income activity around Site">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                         <asp:BoundField ItemStyle-Width="150px" DataField="Well_ground" HeaderText="Type of Groundwater Source">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                      <asp:BoundField ItemStyle-Width="150px" DataField="Well_depth" HeaderText="Total Depth of Well">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Well_jan" HeaderText="Water Level in January">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="200px" DataField="Well_may" HeaderText="Water Level in May" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Well_sept" HeaderText="Water Level in September">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="ReportRiver" HeaderText="Water Quality Report Available">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>


                                        <asp:BoundField ItemStyle-Width="150px" DataField="Well_ph" HeaderText="pH of Well Water">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Well_tds" HeaderText="TDS of Well Water">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Well_ecoil" HeaderText="eColi of Well Water">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       <asp:BoundField ItemStyle-Width="150px" DataField="Well_comm" HeaderText="Waterbody used by Community for how many years " ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                          <asp:BoundField ItemStyle-Width="150px" DataField="Well_used" HeaderText="Waterbody used by Community for" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                      
                                        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl='~/images/bin.png' ID="Button1" runat="server" CausesValidation="false" CommandName="cmdDelete" CommandArgument="<%# Container.DataItemIndex %>" OnClientClick="return confirmDelete1(this)" Text="Delete"  Width="20px" Height="20px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="RFO Approval" ShowHeader="False">
                                             <ItemTemplate>
                                                 <asp:Button ID="Button3" runat="server" CausesValidation="false" CommandName="" Text="RFO Not Approve"  />
                                             </ItemTemplate>
                                         </asp:TemplateField>
                                        <asp:TemplateField HeaderText="DFO Approval" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" CausesValidation="false" CommandName="cmdApprove" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Approve" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                     <PagerStyle CssClass="custom-pager" />
                                </asp:GridView>
                            </div>
                     </ContentTemplate>
                        
                     </asp:UpdatePanel>
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

        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnExport" />
        </Triggers>
    </asp:UpdatePanel>
     

</asp:Content>
 