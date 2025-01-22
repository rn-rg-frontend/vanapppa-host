<%@ Page Title="" Language="C#" MasterPageFile="~/Range/Range.Master" AutoEventWireup="true" CodeBehind="AssesmentTOFNonPrivateLandaspx_RFO.aspxcs" Inherits="vansystem.Range.AssesmentTOFNonPrivateLandaspx_RFO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
           <!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS and JS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>

<!-- Bootstrap Multiselect CSS and JS -->
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>


<!-- Select2 CSS and JS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
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
            top: -1rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            font-weight: bold;
            text-align: center;
            position: sticky !important;
            /*top: 18px;*/
            height: 5vh;
            overflow-wrap: break-word;
            z-index: 1;
            /*width: 16.666%;*/
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
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
            /* display: flex;*/
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
        /*h3 {
            margin-left: 3%;
        }*/

        body {
            font-family: "GillSans", sans-serif !important;
            font-size: 16px !important;
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
            width: 97%;
            max-height: calc(82vh - 100px);
            margin-top: 1%;
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
                max-height: calc(82vh - 100px);
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
                margin-top: 1%;
                width: 99%;
                max-height: calc(80vh - 100px);
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
     function Search_Gridview1(event) {
         if (event.keyCode === 13) {
             event.preventDefault(); // Prevent the default action of the Enter key
             return false;
         }

     }
 </script>

     <script>
         var object = { status: false, ele: null };

         function confirmDelete1(ev) {
             if (object.status) {
                 object.status = false;
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

   <%--  <script type="text/javascript">         function Search_function(strKey) {             var strData = strKey.value.toLowerCase().split(" ");             var tblData = document.getElementById("<%=gvTOF.ClientID %>");        var rowData;        var found = false;        for (var i = 1; i < tblData.rows.length - 1; i++) {             rowData = tblData.rows[i].innerHTML.toLowerCase();            var styleDisplay = 'none';            for (var j = 0; j < strData.length; j++) {                if (rowData.indexOf(strData[j]) >= 0) {                    styleDisplay = '';                    found = true;                } else {                    styleDisplay = 'none';                    found = false;                     break;                }            }            tblData.rows[i].style.display = styleDisplay;        }        var messageElement = document.getElementById('recordNotFoundMessage');        if (!messageElement) {            messageElement = document.createElement('div');            messageElement.id = 'recordNotFoundMessage';            messageElement.innerHTML = 'Record not found.';            messageElement.style.textAlign = 'center';            messageElement.style.marginTop = '20px';            tblData.parentElement.appendChild(messageElement);        }                messageElement.style.display = found ? 'none' : 'block';    }        window.onload = function() {        document.getElementById("<%= txtSearch.ClientID %>").value = "";         };    </script>--%>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div <%--class="card" style="height: 826px; background-color: #EFEFEF"--%>>
                <div class="container-fluid mt-6">
                    <div style="margin-left: 0%; /*width: 113%;*/ margin-top: 88px;">

                        <div class="d-md-flex justify-content-between align-items-center text-center">

                            <div style="margin-left:3% !important;">
                                <h3 style="margin-inline:auto; margin-left: 40px !important;"><b>Assessment Of TOF In Non-Private Land</b></h3>
                            </div>
                            <div class="d-flex justify-content-center" >
                                <div>
                                    <asp:LinkButton runat="server" ID="masterdata" class="btn btn-xs btn-success" CommandArgument='<%# Eval("Id") %>' OnCommand="masterdata_Command"  Text="Master Data"> </asp:LinkButton>
                                </div>
                                <div class="pl-4">
                                    <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Tree" CommandArgument='<%# Eval("Id") %>' OnCommand="Tree_Command" Text="Tree"> </asp:LinkButton>
                                </div>

                               
                             </div>
                             <div  class="row d-md-flex justify-content-center align-items-center text-center" style="padding-top:6px;">
                                <%--  <asp:LinkButton id="btnDownloadCSV" runat="server" type="button" class="btn btn-secondary" Text="Download CSV"><span class="fa fa-download"></span></asp:LinkButton>--%>
                                
                                  <div>
                                    <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No records found.</asp:Label>
                                </div>

                                 <div class="d-flex justify-content-center align-items-center pl-4">
                                    Search:
                                    <asp:TextBox ID="txtSearch" runat="server" style="background-color:#004990; color:white;" Font-Size="20px" onkeydown="return Search_Gridview1(event)" onkeyup="Search_function(this)"></asp:TextBox>
                                 </div>
                                <div class="pl-4" style="padding-top:6px;">
                                    <asp:Button ID="btnExport" style="height:34px;" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />
                                </div>

                                <%--<asp:Button ID="btnJson" runat="server" Text="Download Raw Data" OnClick="btnJson_Click" />--%>
                              
                                <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top:6px; padding-right:15px;" >
                                    Show
                                    <div class="pl-2 pr-2" >
                                        <asp:DropDownList ID="ddlPageSize" runat="server" style="background-color:#004990; color:white; width:70px; border-radius:3px; height:30px;" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                        <asp:ListItem Text="10" Value="10" />
                                        <asp:ListItem Text="25" Value="25" />
                                        <asp:ListItem Text="50" Value="50" />
                                    </asp:DropDownList>
                                    </div>
                                    entries
                                </div>
                            </div>
                        </div>

                        <%--<marquee><div id="recordNotFoundMessage" style="display: none; color: red;">No Records Found.</div></marquee>--%>

                        <hr />

                            <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 3.5rem !important; width: 98%;">
                            <div class="box-content">

                                <asp:GridView ID="gvTOF" AutoGenerateColumns="False" runat="server" DataKeyNames="id" OnPageIndexChanging="gvTOF_PageIndexChanging" AllowPaging="True" ShowHeaderWhenEmpty="True" Style="width: auto;margin-top:-1%" OnRowCommand="gvTOF_RowCommand" OnRowDataBound="gvTOF_RowDataBound" >
                                
                                        <PagerSettings  Mode="NumericFirstLast" FirstPageText="First"   PageButtonCount="10"  LastPageText="Last" />


                                  


                                    <Columns>
                                         <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="id" HeaderText="Survey ID" ReadOnly="True">
                                         
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="name" HeaderText="Surveyor Name" ReadOnly="True">
                                            <%--<ItemStyle Width="150px" />--%>
                                        </asp:BoundField>

                                         <asp:BoundField ItemStyle-Width="150px" DataField="gender" HeaderText="Gender" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="PhoneNumber" HeaderText="Surveyor Phone No" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Designation" HeaderText="Surveyor Designation" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                         <asp:BoundField ItemStyle-Width="150px" DataField="date_created" HeaderText="Survey Date" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Latitude" HeaderText="Latitude" ReadOnly="True" DataFormatString="{0:F6}">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Longitude" HeaderText="Longitude" ReadOnly="True" DataFormatString="{0:F6}">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Altitude" HeaderText="Altitude" ReadOnly="True" DataFormatString="{0:F1}">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>


                                        <asp:BoundField ItemStyle-Width="150px" DataField="accuracy" HeaderText="Accuracy" ReadOnly="True" DataFormatString="{0:F1}">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="State_name" HeaderText="State" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Division" HeaderText="Division" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Range" HeaderText="Range" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Block" HeaderText="Block" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="name_of_village" HeaderText="Village"  ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                           <asp:BoundField ItemStyle-Width="150px" DataField="Name_of_Tehsil_Town" HeaderText="Name of Tehsil Town" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                          <asp:BoundField ItemStyle-Width="150px" DataField="Name_of_Gram_Panchayat" HeaderText="Name of Gram Panchayat" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                          <asp:BoundField ItemStyle-Width="150px" DataField="Name_of_Revenue_Block" HeaderText="Name of Revenue Block" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       <%--   <asp:BoundField ItemStyle-Width="150px" DataField="house_number" HeaderText="House Number">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                            <asp:BoundField ItemStyle-Width="150px" DataField="Buffer_Stratum" HeaderText="Buffer Stratum" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                                <asp:BoundField ItemStyle-Width="150px" DataField="Ownership_of_Trees_Outside_Forest_Land" HeaderText="Ownership of Trees Outside Forest Land" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                                <asp:BoundField ItemStyle-Width="150px" DataField="Other_Ownership_category" HeaderText="Other Ownership category" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                                <asp:BoundField ItemStyle-Width="150px" DataField="Category_of_Plantation" HeaderText="Category of Plantation" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                          <asp:BoundField ItemStyle-Width="150px" DataField="surveyed_Non_Private_land" HeaderText="Area of UFS block surveyed / Non-Private land (in sq. meters)" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>


                                            <asp:TemplateField HeaderText="Tree" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("Id") %>' OnCommand="Tree_link" Text="Tree"> </asp:LinkButton>

                                            </ItemTemplate>

                                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                                            <ItemStyle Width="20%"></ItemStyle>

                                        </asp:TemplateField>
                                     
                                         <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                             <ItemTemplate>
                                                 <asp:ImageButton ImageUrl='~/images/bin.png' ID="Button1" runat="server" CausesValidation="false" CommandName="cmdDelete" ToolTip="Delete" CommandArgument="<%#Container.DataItemIndex %>" OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                             </ItemTemplate>
                                         </asp:TemplateField>


                                         <asp:TemplateField HeaderText="RFO Approval" ShowHeader="False">
                                             <ItemTemplate>
                                                 <asp:Button ID="Button2" runat="server" CausesValidation="false" CssClass="btn btn-primary"  CommandName="cmdApprove" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Approve" />
                                             </ItemTemplate>
                                         </asp:TemplateField>


                                        
                                         
                                    </Columns>
                                     <PagerStyle CssClass="custom-pager"  />

                                </asp:GridView>


                            </div>

                            

                           <ul class="pagination"  id="pagingnation" visible="false" runat="server" style="margin-top: 6px; margin-left: 9px; color: #5cb85c">

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
    <Triggers>
            <asp:PostBackTrigger ControlID="btnExport" />
        </Triggers>
    <script type="text/javascript">
        function Search_Gridview(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");

            var tblData = document.getElementById("<%=gvTOF.ClientID %>");
            var rowData;
            for (var i = 1; i < tblData.rows.length; i++) {
                rowData = tblData.rows[i].innerHTML;
                var styleDisplay = 'none';
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.toLowerCase().indexOf(strData[j]) >= 0)
                        styleDisplay = '';
                    else {
                        styleDisplay = 'none';
                        break;
                    }
                }
                tblData.rows[i].style.display = styleDisplay;
            }
        }
    </script>
</asp:Content>
