<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ProvisioningServices.aspx.cs" Inherits="vansystem.ProvisioningServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
       /* body{
            overflow-x:hidden;
            overflow-y:hidden;
        }*/
        h3{
            margin-left:80px;
        }
       
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

            <div<%-- class="card" style="height: 826px; background-color: #EFEFEF"--%>>
                <div class="container-fluid mt-6">
                    <div style="margin-left: 0%;/* width: 113%; */margin-top: 88px;">
                        <h3><b>Ecosystem Services (provisioning)</b></h3>
                        <div class="card-body" style="background-color: rgb(252, 252, 252); margin-left:60px; /*width: 1470px;*/">



                            <div>

                                <%--  <asp:LinkButton id="btnDownloadCSV" runat="server" type="button" class="btn btn-secondary" Text="Download CSV"><span class="fa fa-download"></span></asp:LinkButton>--%>
                                <div style="margin-right: 921px; margin-bottom: auto">
                                    <asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />
                                </div>

                                <div style="margin-left: 85%;">
                                    Show
                                <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" Style="margin-top: auto; background: rgb(52, 52, 122); color: rgb(247, 251, 252);">
                                    <asp:ListItem Text="10" Value="10" />
                                    <asp:ListItem Text="25" Value="25" />
                                    <asp:ListItem Text="50" Value="50" />
                                </asp:DropDownList>
                                    Entries:
                               
                                </div>
                                <%--<asp:Button ID="btnJson" runat="server" Text="Download Raw Data" OnClick="btnJson_Click" />--%>
                            </div>
                            <hr />

                            <div class="box-content">
                                <asp:GridView ID="GVProservices" runat="server" AutoGenerateColumns="false"  AllowPaging="true" PageSize="10" OnPageIndexChanging="GVProservices_PageIndexChanging" Style="width: 100%" >
                                    <PagerSettings  Mode="NumericFirstLast" FirstPageText="First"   PageButtonCount="10"  LastPageText="Last" />
                                    <Columns>
                                       <%-- <asp:BoundField ItemStyle-Width="150px" DataField="lProvisioningServicesId" HeaderText="SR.No">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>
                                         <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="lProvisioningServicesName" HeaderText="SURVEYOR NAME" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="PhoneNumber" HeaderText="SURVEYOR NUMBER">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Designation" HeaderText="SURVEYOR DESIGNATION" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                          <asp:BoundField ItemStyle-Width="150px" DataField="Device_id" HeaderText="Device ID" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Latitude" HeaderText="LATITUDE" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Longitude" HeaderText="LONGITUDE" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Accuracy" HeaderText="ACCURACY" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Altitude" HeaderText="ALTITUDE" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="DateCreated" HeaderText="DATE" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="StateName" HeaderText="STATE" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                          <asp:BoundField ItemStyle-Width="150px" DataField="circle_name" HeaderText="CIRCLE" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="DivisionName" HeaderText="DIVISION" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="RangeName" HeaderText="RANGE" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="BlockName" HeaderText="BLOCK" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="VillageId" HeaderText="VILLAGE">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="ForestTypeId" HeaderText="TYPE OF FOREST">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>




                                        <asp:BoundField ItemStyle-Width="150px" DataField="provision_type" HeaderText="PROVISION SERVICE TYPE">
                                          </asp:BoundField><%--Spn_pro_type--%>



                                        <asp:BoundField ItemStyle-Width="150px" DataField="provision_unit" HeaderText="PROVISION SERVICE UNIT(1)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField><%--Spn_pro_unit--%>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_name1" HeaderText="PROVISION SERVICE NAME(1)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_units1" HeaderText="NO OF UNITS HARVESTED(1)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_gen1" HeaderText="AVERAGE UNITS HARVESTED(1)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_name2" HeaderText="PROVISION SERVICE NAME(2)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_units2" HeaderText="NO OF UNITS HARVESTED(2)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_gen2" HeaderText="AVERAGE UNITS HARVESTED(2)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_name3" HeaderText="PROVISION SERVICE NAME(3)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_units3" HeaderText="NO OF UNITS HARVESTED">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_gen3" HeaderText="AVERAGE NO OF UNITS HARVESTED">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="provision_name" HeaderText="PROVISION SERVICE NAME">
                                            <ItemStyle Width="150px" /><%--Pro_name4--%>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_units4" HeaderText="NO OF UNITS HARVESTED">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_gen4" HeaderText="AVERAGE UNITS HARVESTED">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Spn_pro_other" HeaderText="OTHER PROVISIONING SERVICE?">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Spn_pro_type_y" HeaderText="PROVISIONING SERVICE">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Spn_pro_unit_y" HeaderText="UNITS PROVISIONING_SERVICE" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_name1_y" HeaderText="NAME OF PROVISIONING SERVICE(1)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_units1_y" HeaderText="NO OF UNITS HARVESTED(1)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_gen1_y" HeaderText="AVERAGE UNITS HARVESTED(1)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_name2_y" HeaderText="COMMUNITY HARVESTED SERVICE(2)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_units2_y" HeaderText="NO OF UNITS HARVESTED(2)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_gen2_y" HeaderText="AVERAGE UNITS HARVESTED(2)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_name3_y" HeaderText="NAME OF SERVICE HARVESTED(3)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_units3_y" HeaderText="NO OF UNITS HARVESTED(3)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_gen3_y" HeaderText="AVERAGE UNITS HARVESTED(3)">

                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                       
                                          <asp:BoundField ItemStyle-Width="150px" DataField="Pro_units4_y" HeaderText="NO OF UNITS HARVESTED(4)" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_gen4_y" HeaderText="AVERAGE UNITS HARVESTED(4)">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_measure" HeaderText="MEASURE TOKEN" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_budget" HeaderText="BUDGET(in RS)" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Spn_pro_demand" HeaderText="DEMAND MET BY OTHER SOURCES?" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Spn_pro_excess" HeaderText="EXPORTED?">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_yes" HeaderText="QUALITY & INCOME(in RS)" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_total" HeaderText="TOTAL AREA HARVESTED(in HA)" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_record" HeaderText="RECORDED HARVESTED IN TONS" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Spn_pro_grazer" HeaderText="ANY GRAZER?" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_area" HeaderText="GRAZING MONTH" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_name" HeaderText="GRAZING AREA">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_migration" HeaderText="MIGRATION ROUTE">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                         <asp:BoundField ItemStyle-Width="150px" DataField="Pro_camps" HeaderText="CAMPS LOCATION" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Pro_approx" HeaderText="NO OF OUTSIDE LIVESTOCK">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Women_spend_time_in_collection_of" HeaderText="HOW MUCH TIME DO WOMEN SPEND IN THE COLLECTION OF ?" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Women_spend_time_in_collection" HeaderText="WOMEN SPENT TIME IN HOURS" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Women_distance_travel_for_collection" HeaderText="HOW MUCH DISTANCE DO THEY TRAVEL TO COLLECT THESE RESOURCES ?" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Hardwork_be_reduced_in_collection" HeaderText="HOW CAN THE LABORIOUS WORK OR BASED WORK BE REDUCED FOR COLLECTION OF THESE RESOURCES ?" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Rorest_department_consulting_community" HeaderText="IS THE FOREST DEPARTMENT CONSULTING COMMUNICATION 
    WELL BEFORE ON THE ENCLOURE/FENCING OF AREAS FOR PLANTATION(S)?" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>
                                        <%--<asp:BoundField ItemStyle-Width="150px" DataField="TRIAL355" HeaderText="TRIAL355" ReadOnly="True">
                                            <ItemStyle Width="150px" />
                                        </asp:BoundField>--%>


                                    </Columns>
                                </asp:GridView>
                            </div>
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
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnExport" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
