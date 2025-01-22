<%@ Page Title="" Language="C#" MasterPageFile="~/Block/Block.Master" AutoEventWireup="true" CodeBehind="Grassfull.aspx.cs" Inherits="vansystem.Block.Grassfull" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
             <!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS and JS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
<!-- Select2 CSS and JS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
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
           /* overflow: scroll;*/
        }
      /*  body{
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


            <div <%--class="card" style="height: 826px; background-color: #EFEFEF"--%>>
                <div class="container-fluid mt-6">
                    <div style="margin-left: 0%;/* width: 113%;*/ margin-top: 88px;">
                        <h3><b>Plot Enumeration-Grass</b></h3>
                        <div style="margin-left: 450px">
                            <asp:LinkButton runat="server" ID="masterdata" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="masterdata_Command" Style="margin-top: -79px;" Text="Master Data"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Tree1" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Tree_Command" Text="Tree"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Bamboo1" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Bamboo_Command" Text="Bamboo"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Shurb1" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Shurb_Command" Text="Shurb"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Sapling" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Sapling_Command" Text="Sapling"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Herb" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Herb_Command" Text="Herb"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Seedling" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Seedling_Command" Text="Seedling"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Grass" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Grass_Command" Text="Grass"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Climber" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Climber_Command" Text="Climber"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="LeafLitter" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="LeafLitter_Command" Text="Leaf Litter"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="WoodyLitter" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="WoodyLitter_Command" Text="Woody Litter"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Soil" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Soil_Command" Text="Soil"> </asp:LinkButton>
                            <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="DeadWood" Style="margin-top: -79px;" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="DeadWood_Command" Text="Dead Wood"> </asp:LinkButton>
                        </div>
                        <div class="card-body" style="background-color: rgb(252, 252, 252);  margin-left:60px;">
                            <div style="margin-left: 90%;">
                                PageSize:
                                <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" Style="margin-top: auto; background: rgb(52, 52, 122); color: rgb(247, 251, 252);">
                                    <asp:ListItem Text="10" Value="10" />
                                    <asp:ListItem Text="25" Value="25" />
                                    <asp:ListItem Text="50" Value="50" />
                                </asp:DropDownList>
                            </div>
                            <div class="box-content">
                                <asp:GridView ID="GVGrass" runat="server" DataKeyNames="id" ShowHeaderWhenEmpty="true" OnPageIndexChanging="GVGrass_PageIndexChanging" AutoGenerateColumns="false" Style="width: 100%" AllowPaging="true" PageSize="10">
                                    <PagerSettings  Mode="NumericFirstLast" FirstPageText="First"   PageButtonCount="10"  LastPageText="Last" />
                                    <Columns>
                                         <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">                                            <ItemTemplate>                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />                                            </ItemTemplate>                                            <ItemStyle Width="100px" />                                        </asp:TemplateField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="PlotEnumerationId" HeaderText="Surveyor ID" ReadOnly="true">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                      <%--  <asp:BoundField ItemStyle-Width="150px" DataField="grassdatadirection" HeaderText="Select corner plot">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>
                                       <asp:TemplateField HeaderText="Select corner plot">
                                            <ItemTemplate>
                                                <asp:Label ID="lblgrassdatadirection" runat="server" Text='<%# Eval("direction_names")%>'></asp:Label>
                                              </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlgrassdatadirection" runat="server">
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>



                                        <asp:TemplateField HeaderText="Local Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLocal_Name" runat="server" Text='<%# Eval("Local_Name")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlLocal_Name" runat="server" CssClass="search-dropdown">
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>


                                        <asp:BoundField ItemStyle-Width="150px" DataField="othername" HeaderText="Specify other">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                       <%-- <asp:BoundField ItemStyle-Width="150px" DataField="grassdensity" HeaderText="Density">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>
                                         <asp:TemplateField HeaderText="Density">
                                            <ItemTemplate>
                                                <asp:Label ID="lblgrassdensity" runat="server" Text='<%# Eval("grassdensity_names")%>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="ddlgrassdensity" runat="server">
                                                </asp:DropDownList>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        
                                    </Columns>
                                </asp:GridView>

                            </div>
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
     <script>

          $(document).ready(function () {
              // Initialize Select2 for the DropDownList with the specified class
              $(".search-dropdown").select2({
                  theme: "classic", // You can change the theme as needed
                  placeholder: "Search for an option",
                  allowClear: true, // Optionally allow clearing the selection
              });
          });
     </script>
</asp:Content>

