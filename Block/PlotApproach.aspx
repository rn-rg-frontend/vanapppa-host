<%@ Page Title="" Language="C#" MasterPageFile="~/Block/Block.Master" AutoEventWireup="true" CodeBehind="PlotApproach.aspx.cs" Inherits="vansystem.Block.PlotApproach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        table {
            width: 450px;
            border-collapse: collapse;
            margin: 50px auto;
            margin-left: 1px;
            margin-top: 8px;
        }

        th {
            background: #5cb85c;
            color: white;
            font-weight: bold;
            text-align: center;
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
            max-height: 50%;
            
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
        /*body{            overflow-x:hidden;            overflow-y:hidden;        }*/
         h3{            margin-left:80px;        }
    </style>
    <style>
        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: 7vh;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
        }

        th, td {
            padding: 0.75rem;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updatepanel1">
        <ContentTemplate>

            <div>
                <div class="container-fluid mt-6">
                    <div style="margin-left: 0%;  margin-top: 88px;">
                        <h3><b>Plot Approach</b></h3>
                        <div class="card-body" style="background-color: rgb(252, 252, 252); margin-left:50px;">
                            <div style="margin-left:59%;">


                                Search:
                                <asp:TextBox ID="txtSearch" runat="server" Font-Size="20px" onkeyup="Search_Gridview(this)"></asp:TextBox>
                                <asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />

                               
                                PageSize:
                                <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                    <asp:ListItem Text="10" Value="10" />
                                    <asp:ListItem Text="25" Value="25" />
                                    <asp:ListItem Text="50" Value="50" />
                                  
                                </asp:DropDownList>
                                <hr />

                            </div>
                            <div class="box-content">

                                <asp:GridView ID="GVPlotApproach" AutoGenerateColumns="False" runat="server" DataKeyNames="PlotApproachId"  OnPageIndexChanging="GVPlotApproach_PageIndexChanging" AllowPaging="true" PageSize="10">
                                
                                        <PagerSettings  Mode="NumericFirstLast" FirstPageText="First"   PageButtonCount="10"  LastPageText="Last" />
                                    <Columns>
                                         <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">                                            <ItemTemplate>                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />                                            </ItemTemplate>                                            <ItemStyle Width="100px" />                                        </asp:TemplateField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="PlotApproachId" HeaderText="SurveyID" ReadOnly="True">
                                         
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="name" HeaderText="Surveyor Name">
                                            <%--<ItemStyle Width="150px" />--%>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="PhoneNumber" HeaderText="Surveyor Phone No">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Designation" HeaderText="Surveyor Designation" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                         <asp:BoundField ItemStyle-Width="150px" DataField="Date_created" HeaderText="Survey Date" ReadOnly="True">
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
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Accuracy" HeaderText="Accuracy" ReadOnly="True" DataFormatString="{0:F1}">
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
                                        <asp:BoundField ItemStyle-Width="150px" DataField="VillageId" HeaderText="Village">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="CompartmentName" HeaderText="Compartment Number">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="GeneralTopography" HeaderText="Topography of the plot">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Slope" HeaderText="Slope of the plot">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="TypeOfDegradation" HeaderText="Type of Degradation" Visible="false">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="CharcoalMaking" HeaderText="Charcoal Making">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                     
                                         <asp:BoundField ItemStyle-Width="150px" DataField="DevelopmentProjects" HeaderText="Development Projects">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Fire" HeaderText="Fire">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                          <asp:BoundField ItemStyle-Width="150px" DataField="FirewoodExtraction" HeaderText="Firewood Extraction">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Grazing" HeaderText="Grazing">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                         <asp:BoundField ItemStyle-Width="150px" DataField="IllegalLogging" HeaderText="Illegal Logging">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        
                                          <asp:BoundField ItemStyle-Width="150px" DataField="Mining" HeaderText="Mining">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                        <asp:BoundField ItemStyle-Width="150px" DataField="PathogenicAttack" HeaderText="Pathogenic Attack">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                      
                                         <asp:BoundField ItemStyle-Width="150px" DataField="InvasiveSpecies" HeaderText="Invasive Species">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        
                                       
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Flood" HeaderText="Flood">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                      
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Drought" HeaderText="Drought">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Landslides" HeaderText="Landslides">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Avalanche" HeaderText="Avalanche">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Storm" HeaderText="Storm">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Cyclone" HeaderText="Cyclone">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Earthquake" HeaderText="Earthquake">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                          <asp:BoundField ItemStyle-Width="150px" DataField="HeavyRainfall" HeaderText="Heavy Rainfall">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                         <asp:BoundField ItemStyle-Width="150px" DataField="HeavySnowfall" HeaderText="Heavy Snowfall">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Other" HeaderText="Other">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        
                                         <asp:BoundField ItemStyle-Width="150px" DataField="None" HeaderText="None">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>                       
                                         <asp:TemplateField HeaderText="Sighting traces of flagship species:Mammals">
                                            <ItemTemplate>
                                                <asp:Label ID="lblMammals" runat="server" Text='<%# TrimTo(Eval("Mammals"),30)%>'></asp:Label>
                                            </ItemTemplate>
                                            
                                        </asp:TemplateField>
                                        
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Mammals_comments" HeaderText="Mammals_Comments">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>                                    
                                           <asp:TemplateField HeaderText="Sighting traces of flagship species:Birds">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBirds" runat="server" Text='<%# TrimTo(Eval("Birds"),30)%>'></asp:Label>

                                            </ItemTemplate>
                                               </asp:TemplateField>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Birds_comments" HeaderText="Birds Comments">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                           <asp:TemplateField HeaderText="Sighting traces of flagship species:Reptiles">
                                            <ItemTemplate>
                                                <asp:Label ID="lblReptiles" runat="server" Text=' <%# TrimTo(Eval("Reptiles"),30)%>'></asp:Label>

                                            </ItemTemplate>
                                               </asp:TemplateField>
                                        
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Reptiles_comments" HeaderText="Reptiles_Comments">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>                                     
                                           <asp:TemplateField HeaderText="Sighting traces of flagship species:Amphibians">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAmphibians" runat="server" Text='<%# TrimTo(Eval("Amphibians"),30)%>'></asp:Label>

                                            </ItemTemplate>
                                                 </asp:TemplateField>
                                          <asp:BoundField ItemStyle-Width="150px" DataField="Amphibians_comments" HeaderText="Amphibians_Comments">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>                                       
                                          <asp:BoundField ItemStyle-Width="150px" DataField="habit" HeaderText="Habit of species">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="sc_name" HeaderText="Species Name">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>                                       
                                        <asp:BoundField ItemStyle-Width="150px" DataField="species_other" HeaderText="Specify other">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                           <asp:BoundField ItemStyle-Width="150px" DataField="density" HeaderText="Density">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                      <asp:BoundField ItemStyle-Width="150px" DataField="ntfp" HeaderText="NTFP Species?">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="invasive" HeaderText="Invasive Species?">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="quality" HeaderText="Quality">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="regeneration" HeaderText="Regeneration">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="sps_remarks" HeaderText="Species Remarks">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                      <%-- <asp:TemplateField HeaderText="Plants">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPlants" runat="server" Text='<%# TrimTo(Eval("Plants"),30)%>'></asp:Label>
                                            </ItemTemplate>
                                           </asp:TemplateField>--%>
                                      
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Fuel" HeaderText="Removal of fuel wood">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Fodder" HeaderText="Removal of fodder">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                   
                                        <asp:BoundField ItemStyle-Width="150px" DataField="remark" HeaderText="Remark">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>                                      
                                    </Columns>

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


        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnExport" />
        </Triggers>
       
    </asp:UpdatePanel>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>  
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
    <script type="text/javascript">
        function Search_Gridview(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");

            var tblData = document.getElementById("<%=GVPlotApproach.ClientID %>");
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
