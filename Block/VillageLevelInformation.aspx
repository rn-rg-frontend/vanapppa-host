<%@ Page Title="" Language="C#" MasterPageFile="~/Block/Block.Master" AutoEventWireup="true" CodeBehind="VillageLevelInformation.aspx.cs" Inherits="vansystem.Block.VillageLevelInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

       <style>        table {            width: 450px;            border-collapse: collapse;            margin: 50px auto;            margin-left: 1px;            margin-top: 8px;        }        th {            background: #5cb85c;            color: white;            font-weight: bold;            text-align: center;        }        td, th {            padding: 10px;            border: 1px solid #ccc;            text-align: center;            font-size: 15px;        }        .labels tr td {            background-color: #2cc16a;            font-weight: bold;            color: #fff;        }        .label tr td label {            display: block;        }        [data-toggle="toggle"] {            display: none;        }        .box-content {            max-height: 50%;                    }        @media (min-width: 992px) {            .col-md-8, .col-md-4 {                margin-right: 1%;            }            .col-md-8 {                width: 65%;            }            .col-md-4 {                width: 33%;            }        }       /*  body{            overflow-x:hidden;            overflow-y:hidden;        }*/          h3{            margin-left:80px;        }    </style>     <style>        th {            background: #51c551 !important;            color: white !important;            position: sticky !important;            top:7vh;            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);        }        th, td {            padding: 0.75rem;        }    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updatepanel1">
        <ContentTemplate>
            <div <%--class="card" style="height: 826px; background-color: #EFEFEF"--%>>
                <div class="container-fluid mt-6">
                    <div style="margin-left: 0%; margin-top: 88px;">
                        <h3><b>Village Level Information</b></h3>
                        <div class="card-body" style="background-color: rgb(252, 252, 252); margin-left:50px; /*width: 1480px;*/">
                            <div style="margin-left: 58%;">

                                <%--  <asp:LinkButton id="btnDownloadCSV" runat="server" type="button" class="btn btn-secondary" Text="Download CSV"><span class="fa fa-download"></span></asp:LinkButton>--%>
                                Search:
                                 <asp:TextBox ID="txtSearch" runat="server" Font-Size="20px" onkeyup="Search_Gridview(this)"></asp:TextBox>
                                <asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />

                              <%--  <asp:Button ID="btnJson" runat="server" Text="Download Raw Data" OnClick="btnJson_Click" />--%>
                                PageSize:
                                <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                    <asp:ListItem Text="10" Value="10" />
                                    <asp:ListItem Text="25" Value="25" />
                                    <asp:ListItem Text="50" Value="50" />
                                    
                                </asp:DropDownList>
                                <hr />

                            </div>

                            <%-- style="overflow-y: scroll; overflow-x: hidden; height: 200px; width: 600px;"--%>
                            <div class="box-content">

                                <asp:GridView ID="gvVLI" runat="server" AutoGenerateColumns="False" DataKeyNames="id" GridLines="Horizontal" AllowPaging="true" PageSize="10" OnPageIndexChanging="gvVLI_PageIndexChanging"> 
                                     <PagerSettings  Mode="NumericFirstLast" FirstPageText="First"   PageButtonCount="10"  LastPageText="Last" />
                                    <Columns>
                                         <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">                                            <ItemTemplate>                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />                                            </ItemTemplate>                                            <ItemStyle Width="100px" />                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Survey ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Surveyor Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyorName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Surveyor Phone No" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyorPhoneNo" runat="server" Text='<%# Eval("phonenumber") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surveyor Designation" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldesignation" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Survey Date" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDate_created" runat="server" Text='<%# Eval("Date_created") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Latitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" runat="server" Text='<%# Eval("Latitude","{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Longitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" runat="server" Text='<%# Eval("Longitude","{0:F6}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Altitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAltitude" runat="server" Text='<%# Eval("Altitude","{0:F1}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Accuracy" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAccuracy" runat="server" Text='<%# Eval("Accuracy","{0:F1}") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                      
                                        <asp:TemplateField HeaderText="State" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblStateName" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Division" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDivisionName" runat="server" Text='<%# Eval("Division") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Range" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRangeName" runat="server" Text='<%# Eval("Range") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Block" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBlockName" runat="server" Text='<%# Eval("Block") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Village" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVillageName" runat="server" Text='<%# Eval("Village") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>

                                          <asp:TemplateField HeaderText="Compartment Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCompartmentNumber" runat="server" Text='<%# Eval("compartmentid") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Plot Number" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPlotNumber" runat="server" Text='<%# Eval("plotid") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Type of hamlet/village" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                             
                                            <ItemTemplate>
                                                <asp:Label ID="lblTypeofhamletvillage" runat="server" Text='<%# Eval("village_type") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField> 
                                        <asp:TemplateField HeaderText="Fuel wood requirement met?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfuelwoodreq" runat="server" Text='<%# Eval("fuelwoodreq") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="From where do you meet fuel wood deficit" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmeetdeficit" runat="server" Text='<%# Eval("meetdeficit") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField> 
                                        <asp:TemplateField HeaderText="Sell the excess fuel wood?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            
                                            <ItemTemplate>
                                                <asp:Label ID="lblfuelwoodsell" runat="server" Text='<%# Eval("fuelwoodsell") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField>   
                                       
                                         <asp:TemplateField HeaderText="Where do you sell?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsellingplace" runat="server" Text='<%# Eval("sellingplace") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField> 
                                         <asp:TemplateField HeaderText="Price in Rs. per quintal" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsellingprice" runat="server" Text='<%# Eval("sellingprice") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" />

                                        </asp:TemplateField> 
                                          <asp:TemplateField HeaderText="Distance Travelled for collection (km)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldistance" runat="server" Text='<%# Eval("distance") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 

                                        </asp:TemplateField> 
                                          <asp:TemplateField HeaderText="Trips per Week" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltrips" runat="server" Text='<%# Eval("trips") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 

                                        </asp:TemplateField> 
                                          <asp:TemplateField HeaderText="Weight of wood by Man" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblweightcarriedbyman" runat="server" Text='<%# Eval("weightcarriedbyman") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 

                                        </asp:TemplateField> 
                                          <asp:TemplateField HeaderText="Weight of wood by Woman" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblweightcarriedbywoman" runat="server" Text='<%# Eval("weightcarriedbywoman") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 


                                        </asp:TemplateField> 
                                         <asp:TemplateField HeaderText="Weight of wood by Child" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblweightcarriedbychild" runat="server" Text='<%# Eval("weightcarriedbychild") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                        <asp:TemplateField HeaderText="First Priority Species for Advantage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfirstpriority" runat="server" Text='<%# Eval("firstpriority") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                        <asp:TemplateField HeaderText="Second Priority Species for Advantage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsecondpriority" runat="server" Text='<%# Eval("secondpriority") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                        <asp:TemplateField HeaderText="Third Priority Species for Advantage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblthirdpriority" runat="server" Text='<%# Eval("thirdpriority") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                        <asp:TemplateField HeaderText="Fourth Priority Species for Advantage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfourthpriority" runat="server" Text='<%# Eval("fourthpriority") %>'></asp:Label>
                                            </ItemTemplate>
                                          
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="Fodder requirement met?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfodderreq" runat="server" Text='<%# Eval("fodderreq") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="From where do you meet fodder deficit" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmeetdeficitfodder" runat="server" Text='<%# Eval("meetdeficitfodder") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="Sell the excess fooder?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsell_excess_fodder" runat="server" Text='<%# Eval("fodderreq") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="Where do you sell?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsellingplacefodder" runat="server" Text='<%# Eval("sellingplacefodder") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="Price in Rs. per quintal" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsellingpricefodder" runat="server" Text='<%# Eval("sellingpricefodder") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="Distance Travelled for collection (km)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldistancefodder" runat="server" Text='<%# Eval("distancefodder") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="Trips per Week" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltripsfodder" runat="server" Text='<%# Eval("tripsfodder") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="Weight of fooder by Man" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfodderweightcarriedbyman" runat="server" Text='<%# Eval("fodderweightcarriedbyman") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="Weight of fooder by Woman" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfodderweightcarriedbywoman" runat="server" Text='<%# Eval("fodderweightcarriedbywoman") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="Weight of fooder by Child" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfodderweightcarriedbychild" runat="server" Text='<%# Eval("fodderweightcarriedbychild") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="'Dati system' practice prevailing?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldatisystem" runat="server" Text='<%# Eval("datisystem") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="Any other practice" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblpractice" runat="server" Text='<%# Eval("practice") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                         <asp:TemplateField HeaderText="Practice of sillage making followed?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblpracticeofsillage" runat="server" Text='<%# Eval("practiceofsillage") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                          <asp:TemplateField HeaderText="First Priority Species for Advantage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfoddergrassfirstpriority" runat="server" Text='<%# Eval("foddergrassfirstpriority") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                          <asp:TemplateField HeaderText="Second Priority Species for Advantage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfoddergrasssecondpriority" runat="server" Text='<%# Eval("foddergrasssecondpriority") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                          <asp:TemplateField HeaderText="Third Priority Species for Advantage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfoddergrassthirdpriority" runat="server" Text='<%# Eval("foddergrassthirdpriority") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                          <asp:TemplateField HeaderText="Fourth Priority Species for Advantage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfoddergrassfourthpriority" runat="server" Text='<%# Eval("foddergrassfourthpriority") %>'></asp:Label>
                                            </ItemTemplate>
                                               
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                        <asp:TemplateField HeaderText="Write the names of NTFPs" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblntfp_name" runat="server" Text='<%# Eval("ntfp_name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 

                                        <asp:TemplateField HeaderText="Measures taken to stop open grazing?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmeasurestaken" runat="server" Text='<%# Eval("measurestaken") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle Width="20%" /> 
                                        </asp:TemplateField> 
                                        
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

      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>

     <script type="text/javascript">
            function Search_Gridview(strKey) {
                var strData = strKey.value.toLowerCase().split(" ");
               
                var tblData = document.getElementById("<%=gvVLI.ClientID %>");
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
