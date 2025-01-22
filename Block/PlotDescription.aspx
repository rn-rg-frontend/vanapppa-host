<%@ Page Title="" Language="C#" MasterPageFile="~/Block/Block.Master" AutoEventWireup="true" CodeBehind="PlotDescription.aspx.cs" Inherits="vansystem.Block.PlotDescription" %>
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
            /*width: 400px;*/
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
            max-height:50%;
            
        }

           .custom-gridview {
        width: 100%; /* Set the width of the GridView to 100% */
    }
        /*    body{            overflow-x:hidden;            overflow-y:hidden;        }*/
             h3{            margin-left:80px;        }
    </style>
    <style>
        /*.ItemStyle
        {
            
            width: 300px;
           
        }*/


        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top:7vh;
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

            <div <%--class="card" style="height: 826px; background-color: #EFEFEF"--%>>
                <div class="container-fluid mt-6">
                    <div style="margin-left: 0%; /*width: 113%;*/ margin-top: 88px;">
                        <h3><b>Plot Description</b></h3>
                        <div class="card-body" style="background-color: rgb(252, 252, 252); margin-left:50px; /*width: 1480px;*/">
                            <div style="margin-left: 59%;">

                                <%--  <asp:LinkButton id="btnDownloadCSV" runat="server" type="button" class="btn btn-secondary" Text="Download CSV"><span class="fa fa-download"></span></asp:LinkButton>--%>
                                Search:
                                <asp:TextBox ID="txtSearch" runat="server" Font-Size="20px" onkeyup="Search_Gridview(this)" AutoPostBack="true"></asp:TextBox>
                                <asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />

                               <%-- <asp:Button ID="btnJson" runat="server" Text="Download Raw Data" OnClick="btnJson_Click" />--%>
                                PageSize:
                                <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                    <asp:ListItem Text="10" Value="10" />
                                    <asp:ListItem Text="25" Value="25" />
                                    <asp:ListItem Text="50" Value="50" />
                                    
                                </asp:DropDownList>
                                <hr />

                            </div>
                            <div class="box-content">
                                <asp:GridView ID="GVPlotDescription" CssClass="custom-gridview" OnPageIndexChanging="GVPlotDescription_PageIndexChanging"  AutoGenerateColumns="False" runat="server" DataKeyNames="PlotDescId" AllowPaging="true" PageSize="10">
                                   <PagerSettings  Mode="NumericFirstLast" FirstPageText="First"   PageButtonCount="10"  LastPageText="Last" />
                                  <Columns>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">                                            <ItemTemplate>                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />                                            </ItemTemplate>                                            <ItemStyle Width="100px" />                                        </asp:TemplateField>
                                     <%--  <asp:BoundField HeaderText="Sr.No" DataField="RowNumber" ItemStyle-Width="200%" />--%>
                                        <asp:BoundField DataField="PlotDescId" ItemStyle-Width="150px" HeaderText="Survey ID" ReadOnly="True">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PlotDescName" ItemStyle-Width="150px" HeaderText="Surveyor Name">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>

                                          <asp:BoundField DataField="PhoneNumber" ItemStyle-Width="150px" HeaderText="Surveyor Phone No">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                         <asp:BoundField DataField="Designation" HeaderText="Surveyor Designation" ReadOnly="True">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>

                                         <asp:BoundField DataField="DateCreated" ItemStyle-Width="150px" HeaderText="Survey Date" ReadOnly="True">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>

                                        <asp:BoundField DataField="Latitude" ItemStyle-Width="150px" HeaderText="Latitude" ReadOnly="True" DataFormatString="{0:F6}">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Longitude" ItemStyle-Width="150px" HeaderText="Longitude" ReadOnly="True" DataFormatString="{0:F6}">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Altitude" ItemStyle-Width="150px" HeaderText="Altitude" ReadOnly="True" DataFormatString="{0:F1}">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Accuracy" ItemStyle-Width="150px" HeaderText="Accuracy" ReadOnly="True" DataFormatString="{0:F1}">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="StateName" ItemStyle-Width="150px" HeaderText="State" ReadOnly="True">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="DivisionName" ItemStyle-Width="150px" HeaderText="Division" ReadOnly="True">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="RangeName" ItemStyle-Width="150px" HeaderText="Range" ReadOnly="True">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="BlockName" ItemStyle-Width="150px" HeaderText="Block" ReadOnly="True">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="VillageId" ItemStyle-Width="150px" HeaderText="Village">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="CompartmentName" ItemStyle-Width="150px" HeaderText="Compartment Number">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:BoundField DataField="PlotName" ItemStyle-Width="150px" HeaderText="Plot Number">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                            <asp:TemplateField HeaderText="Legal Status">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllegalStatus" runat="server" Text='<%# Eval("LegalStatus")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>

                                          <asp:TemplateField HeaderText="Land use type" >
                                            <ItemTemplate>
                                                <asp:Label ID="lblLanduse" runat="server" Text='<%# Eval("Landuse")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                          <asp:BoundField DataField="Rocks" HeaderText="Type of rock">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                      
                                        <asp:TemplateField HeaderText="Topography of the plot">
                                            <ItemTemplate>
                                                <asp:Label ID="lblGeneral" runat="server" Text='<%# Eval("General")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Slope of the plot">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSlope" runat="server" Text='<%# Eval("Slope")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                         <asp:BoundField DataField="Soildepth" HeaderText="Soil Depth (in cm)">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                      
                                        <asp:TemplateField HeaderText="Soil Texture">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSoiltexture" runat="server" Text='<%# Eval("Soiltexture")%>'></asp:Label>
                                            </ItemTemplate>
                                            
                                        </asp:TemplateField>
                                       
                                        <asp:TemplateField HeaderText="Soil Permeability">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSoilpermeability" runat="server" Text='<%# Eval("Soilpermeability")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Soil Erosion">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSoilerosion" runat="server" Text='<%# Eval("Soilerosion")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Crop composition of the plot">                                            <ItemTemplate>                                                        <%--  <%# TrimTo(Eval("Crop"), 30) %>--%>                                                <asp:Label ID="lblCrop" runat="server" Text=' <%# TrimTo(Eval("Crop"),30)%>'></asp:Label>                                            </ItemTemplate>                                                                                  </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="Crop" HeaderText="Crop">
                                         
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Regeneration status of the plot">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRegeneration" runat="server" Text='<%# Eval("Regeneration")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Grazing">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCc_Grazing" runat="server" Text='<%# Eval("Cc_Grazing")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Injury/ damage to crop, if any">
                                            <ItemTemplate>
                                                <asp:Label ID="lblInjury" runat="server" Text='<%# Eval("Injury")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Presence Of Bamboo">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPresenceOfBamboo" runat="server" Text='<%# Eval("PresenceOfBamboo")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Bamboo Density">                                            <ItemTemplate>                                                <asp:Label ID="lblBambooDensity" runat="server" Text='<%# Eval("BambooDensity")%>'></asp:Label>                                            </ItemTemplate>                                            <EditItemTemplate>                                                <asp:DropDownList ID="ddlBambooDensity" runat="server">                                                </asp:DropDownList>                                            </EditItemTemplate>                                        </asp:TemplateField>   
                                        <asp:TemplateField HeaderText="Bamboo Quality">                                            <ItemTemplate>                                                <asp:Label ID="lblBambooQuality" runat="server" Text='<%# Eval("BambooQuality")%>'></asp:Label>                                            </ItemTemplate>                                                                                    </asp:TemplateField>         
                                        <asp:TemplateField HeaderText="Bamboo Regeneration">                                            <ItemTemplate>                                                <asp:Label ID="lblBambooRegeneration" runat="server" Text='<%# Eval("BambooRegeneration")%>'></asp:Label>                                            </ItemTemplate>                                                                                   </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Presence Of Grass">                                            <ItemTemplate>                                                <asp:Label ID="lblPresenceOfGrass" runat="server" Text='<%# Eval("PresenceOfGrass")%>'></asp:Label>                                            </ItemTemplate>                                                                                   </asp:TemplateField>                                          <asp:TemplateField HeaderText="Presence Of Weeds">                                            <ItemTemplate>                                                <asp:Label ID="lblPresenceOfWeeds" runat="server" Text='<%# Eval("PresenceOfWeeds")%>'></asp:Label>                                            </ItemTemplate>                                                                                 </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Name Of Weed">                                            <ItemTemplate>                                                        <%--  <%# TrimTo(Eval("Crop"), 30) %>--%>                                                <asp:Label ID="lblNameOfWeed" runat="server" Text=' <%# TrimTo(Eval("NameOfWeed"),30)%>'></asp:Label>                                            </ItemTemplate>                                                                                  </asp:TemplateField>
                                        <asp:BoundField DataField="Specify_other" ItemStyle-Width="150px" HeaderText="Specify other">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>

                                         <asp:BoundField DataField="Average_Crop_Diameter" ItemStyle-Width="150px" HeaderText="Average Crop Diameter">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                         <asp:BoundField DataField="Area_of_Plantation" ItemStyle-Width="150px" HeaderText="Area of Plantation">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>

                                         <asp:BoundField DataField="Year_of_Plantation" ItemStyle-Width="150px" HeaderText="Year of Plantation">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                           <asp:BoundField DataField="avgtreegirth" ItemStyle-Width="150px" HeaderText="Average Tree Girth">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Plantation Species">                                            <ItemTemplate>                                                        <%--  <%# TrimTo(Eval("Crop"), 30) %>--%>                                                <asp:Label ID="lblPlantation_Species" runat="server" Text=' <%# TrimTo(Eval("Plantation_Species"),30)%>'></asp:Label>                                            </ItemTemplate>                                                                                                                             </asp:TemplateField>
                                        <asp:BoundField DataField="Spacement_in_meter" ItemStyle-Width="150px" HeaderText="Spacement in meter">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                      
                                        <%-- <asp:BoundField DataField="NameOfWeed" HeaderText="Name Of Weed">
                                       
                                        </asp:BoundField>--%>
                                       
                                        <asp:TemplateField HeaderText="Type of Water body">                                            <ItemTemplate>                                                <asp:Label ID="lblWaterBodyType" runat="server" Text='<%# Eval("WaterBodyType")%>'></asp:Label>                                            </ItemTemplate>                                                                                  </asp:TemplateField>
                                                                                 <asp:TemplateField HeaderText="Status of Water body">                                            <ItemTemplate>                                                <asp:Label ID="lblWaterBodyStatus" runat="server" Text='<%# Eval("WaterBodyStatus")%>'></asp:Label>                                            </ItemTemplate>                                                                                   </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Seasonality of Water body">                                            <ItemTemplate>                                                <asp:Label ID="lblWaterBodySeasonality" runat="server" Text='<%# Eval("WaterBodySeasonality")%>'></asp:Label>                                            </ItemTemplate>                                                                                   </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Potability of Water body">                                            <ItemTemplate>                                                <asp:Label ID="lblWaterBodyPotability" runat="server" Text='<%# Eval("WaterBodyPotability")%>'></asp:Label>                                            </ItemTemplate>                                                                                  </asp:TemplateField>
                                        <asp:BoundField DataField="TypeOfDegradation" ItemStyle-Width="150px" HeaderText="Type Of Degradation" Visible="false">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>

                                        <asp:TemplateField HeaderText="Charcoal Making">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCharcoalMaking" runat="server" Text='<%# Eval("CharcoalMaking")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="DevelopmentProjects" HeaderText="Development Projects">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Development Projects">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDevelopmentProjects" runat="server" Text='<%# Eval("DevelopmentProjects")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="Fire" HeaderText="Fire">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Fire">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFire" runat="server" Text='<%# Eval("Fire")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                        <%--  <asp:BoundField  DataField="FirewoodExtraction" HeaderText="Firewood Extraction">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Firewood Extraction">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFirewoodExtraction" runat="server" Text='<%# Eval("FirewoodExtraction")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="Grazing" HeaderText="Grazing">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Grazing">
                                            <ItemTemplate>
                                                <asp:Label ID="lblGrazing" runat="server" Text='<%# Eval("Grazing")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlGrazing" runat="server">

                                                    <asp:ListItem Text="Yes" Value="122,"></asp:ListItem>
                                                    <asp:ListItem Text="No" Value="Null"></asp:ListItem>
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="IllegalLogging" HeaderText="Illegal Logging">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Illegal Logging">
                                            <ItemTemplate>
                                                <asp:Label ID="lblIllegalLogging" runat="server" Text='<%# Eval("IllegalLogging")%>'></asp:Label>
                                            </ItemTemplate>
                                            
                                        </asp:TemplateField>
                                        <%--  <asp:BoundField  DataField="Mining" HeaderText="Mining">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Mining">
                                            <ItemTemplate>
                                                <asp:Label ID="lblMining" runat="server" Text='<%# Eval("Mining")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                        <%--<asp:BoundField  DataField="PathogenicAttack" HeaderText="Pathogenic Attack">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Pathogenic Attack">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPathogenicAttack" runat="server" Text='<%# Eval("PathogenicAttack")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="InvasiveSpecies" HeaderText="Invasive Species">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Invasive Species">
                                            <ItemTemplate>
                                                <asp:Label ID="lblInvasiveSpecies" runat="server" Text='<%# Eval("InvasiveSpecies")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="Flood" HeaderText="Flood">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Flood">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFlood" runat="server" Text='<%# Eval("Flood")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                        <%--<asp:BoundField  DataField="Drought" HeaderText="Drought">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Drought">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDrought" runat="server" Text='<%# Eval("Drought")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                        <%--<asp:BoundField  DataField="Landslides" HeaderText="Landslides">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Landslides">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLandslides" runat="server" Text='<%# Eval("Landslides")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="Avalanche" HeaderText="Avalanche">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Avalanche">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAvalanche" runat="server" Text='<%# Eval("Avalanche")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="Storm" HeaderText="Storm">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Storm">
                                            <ItemTemplate>
                                                <asp:Label ID="lblStorm" runat="server" Text='<%# Eval("Storm")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="Cyclone" HeaderText="Cyclone">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Cyclone">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCyclone" runat="server" Text='<%# Eval("Cyclone")%>'></asp:Label>
                                            </ItemTemplate>
                                        
                                        </asp:TemplateField>
                                        <%--<asp:BoundField  DataField="Earthquake" HeaderText="Earthquake">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Earthquake">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEarthquake" runat="server" Text='<%# Eval("Earthquake")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                        <%--  <asp:BoundField  DataField="HeavyRainfall" HeaderText="Heavy Rainfall">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Heavy Rainfall">
                                            <ItemTemplate>
                                                <asp:Label ID="lblHeavyRainfall" runat="server" Text='<%# Eval("HeavyRainfall")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="HeavySnowfall" HeaderText="Heavy Snowfall">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Heavy Snowfall">
                                            <ItemTemplate>
                                                <asp:Label ID="lblHeavySnowfall" runat="server" Text='<%# Eval("HeavySnowfall")%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="Other" HeaderText="Other">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Other">
                                            <ItemTemplate>
                                                <asp:Label ID="lblOther" runat="server" Text='<%# Eval("Other")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="None" HeaderText="None">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="None">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNone" runat="server" Text='<%# Eval("None")%>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                        <%-- <asp:BoundField  DataField="Mammals" HeaderText="Mammals">
                                             <%-- <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Sighting traces of flagship species: Mammals">
                                            <ItemTemplate>
                                                <asp:Label ID="lblMammals" runat="server" Text='<%# TrimTo(Eval("Mammals"),30)%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:BoundField DataField="Mammals_comments" HeaderText="Mammals Comments">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>

                                         <asp:TemplateField HeaderText="Sighting traces of flagship species: Birds">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBirds" runat="server" Text='<%# TrimTo(Eval("Birds"),30)%>'></asp:Label>
                                            </ItemTemplate>
                                          
                                        </asp:TemplateField>
                                         <asp:BoundField DataField="Birds_comments" HeaderText="Birds Comments">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>

                                        <%-- <asp:BoundField  DataField="Reptiles" HeaderText="Reptiles">
                                             <%-- <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>
                                         <asp:TemplateField HeaderText="Sighting traces of flagship species: Reptiles">
                                            <ItemTemplate>
                                                <asp:Label ID="lblReptiles" runat="server" Text=' <%# TrimTo(Eval("Reptiles"),30)%>'></asp:Label>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:BoundField DataField="Reptiles_comments" ItemStyle-Width="150px" HeaderText="Reptiles Comments">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>

                                        <%-- <asp:BoundField  DataField="Amphibians" HeaderText="Amphibians">
                                             <%-- <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>
                                        <asp:TemplateField HeaderText="Sighting traces of flagship species: Amphibians">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAmphibians" runat="server" Text='<%# TrimTo(Eval("Amphibians"),30)%>'></asp:Label>
                                            </ItemTemplate>
                                            
                                        </asp:TemplateField>
                                         <asp:BoundField DataField="Amphibians_comments" HeaderText="Amphibians Comments">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>
                                        <%--  <asp:BoundField  DataField="Plants" HeaderText="Plants">
                                             <%-- <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>
                                         <asp:TemplateField HeaderText="Sighting traces of flagship species: Plants">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPlants" runat="server" Text='<%# TrimTo(Eval("Plants"),15)%>'>></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                         <asp:BoundField DataField="Plants_comments" HeaderText="Plants Comments">
                                            <%-- <ItemStyle Width="150px"></ItemStyle>--%>
                                        </asp:BoundField>


                                        <asp:BoundField DataField="BambooPresence" ItemStyle-Width="150px" HeaderText="Bamboo Presence">
                                          
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
    <%-- <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css"
        rel="stylesheet" type="text/css" />--%>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>


     <script type="text/javascript">
         function Search_Gridview(strKey) {
             var strData = strKey.value.toLowerCase().split(" ");

             var tblData = document.getElementById("<%=GVPlotDescription.ClientID %>");
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
