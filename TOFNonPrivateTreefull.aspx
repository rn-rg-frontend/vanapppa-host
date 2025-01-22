﻿<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="TOFNonPrivateTreefull.aspx.cs" Inherits="vansystem.TOFNonPrivateTreefull" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap CSS and JS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>

<!-- Bootstrap Multiselect CSS and JS -->
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>

<!-- Select2 CSS and JS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>




   <style>
        .select2-container-fixed {
            position: relative !important;
            /*z-index: 50;*/
        }

        table {
            width: auto;
            border-collapse: collapse;
            margin: 50px auto;
            margin-left: 1px;
            margin-top: -0.8%;
        }

        th {
            background: #5cb85c !important;
            color: white !important;
            font-weight: bold;
            text-align: center;
            position: sticky !important;
            top: -1vh;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            white-space:nowrap;
            z-index: 10;
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


       /* h3 {
            margin-left: 60px;
        }*/

       body{
             font-family:"GillSans", sans-serif !important;
             font-size:16px !important;
         }


        th, td {
            padding: 1.75rem;
        }


        td {
            padding: 0.75rem;
        }

        body {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 2.428571;
    color: #333;
    background-color: #fff;
}
       

        .sweet-alert button.cancel {
            background-color: #dc3545 !important;
        }

        .listboxCSS {
            font-size: 8pt;
            font-family: Arial;
            border: 0;
            overflow-y: auto;
            height: 120px;
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

       

        :root {
            overflow-y: clip;
            overflow-x: clip;
        }
        .card-body {
    padding: 0.25rem;
}
        .card-body {
            background-color: rgb(252, 252, 252);
            overflow-x:scroll;
            overflow-y:scroll;
            margin-left: 2%; 
            width: 99%;
            max-height: 71vh;
            margin-top: 0.5%;
        }

        .plot-tree{
            background-color: #fcfbfb;
        }
         @media screen and (max-width: 1917px) {

            .card-body {
                width: 100%;
                max-height: calc(77vh - 100px);
                margin-right: -4% !important;
                margin-left: 2.7% !important;
            }
            .custom-pager {
            all: initial;
            border: none !important; 
            margin: 0px auto !important; 
            padding: unset;
            text-align: center;
            position: fixed;
            bottom: 1vh;
            left: 85%;
            transform: translateX(-50%);
            z-index: 999; 
            }
            
         }
         /*   @media screen and (max-width: 1537px){

            .card-body {
                width: 100%;
                max-height: calc(80vh - 100px);
                margin-right: -4% !important;
                margin-left: 1% !important;
            }*/
            .custom-pager {
            all: initial;
            border: none !important; 
            margin: 0px auto !important; 
            padding: unset;
            text-align: center;
            position: fixed;
            bottom: 1vh;
            left: 89%;
            transform: translateX(-50%);
            z-index: 999; 
            }
            /* .box-content{
                padding-left:22px !important;
            }*/
         
            @media screen and (max-width: 1153px){

            .card-body {
                width: 100%;
                max-height: calc(73vh - 100px);
                margin-right: -4% !important;
                margin-left: 1% !important;
            }
            .custom-pager {
            all: initial;
            border: none !important; 
            margin: 0px auto !important; 
            padding: unset;
            text-align: center;
            position: fixed;
            bottom: 1vh;
            left: 63%;
            transform: translateX(-50%);
            z-index: 999; 
            }
           
           
            }
            @media screen and (max-width: 780px){

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
            left: 63%;
            transform: translateX(-50%);
            z-index: 999; 
            }
            }
         
        


    </style>



    <style>
        .custom-pager {
            text-align: center;
            margin-top: 50px;
            position: fixed;
            bottom: -52px;
            left: 75%;
            margin-bottom: 0; /* Set margin-bottom to 0 */
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
    </style>
    <style>
        .dropdown-menu {
            MAX-HEIGHT: 150PX;
            OVERFLOW-Y: AUTO;
        }
    </style>
    <style>
        .select2-container-fixed {
            position: relative !important;
            z-index: 50;
        }
    </style>


  
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

            <div <%--class="card" style="height: 826px; background-color: #EFEFEF"--%>>
                <div class="container-fluid mt-6">
                    <div style="margin-left: 0%; /*width: 113%;*/ margin-top: 88px;">
                      

                        <div class="d-sm-flex justify-content-between align-items-center text-center">
                            <div>
                                <h3 style="margin-left:60px !important; margin-inline:auto;"><b>Assessment Of TOF In Non-Private Land-Tree(<asp:Label ID="lblSessionID" runat="server" Text=""></asp:Label>)</b></h3>
                            </div>

                            <div>
                                <asp:LinkButton runat="server" ID="masterdata" class="btn btn-xs btn-success" CommandArgument='<%# Eval("Id") %>' OnCommand="masterdata_Command" Text="Master Data"> </asp:LinkButton>
                            </div>
                            <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top:6px; padding-right:15px;" >
                                Show
                                <div class="pl-2 pr-2">
                                    <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" style="background-color:#004990; color:white; width:70px; border-radius:3px; height:30px;">
                                        <asp:ListItem Text="10" Value="10" />
                                        <asp:ListItem Text="25" Value="25" />
                                        <asp:ListItem Text="50" Value="50" />
                                    </asp:DropDownList>
                                </div>
                                entries
                            </div>
                        </div>

                         <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 2.4%; width: 98%;">

                            <div class="box-content">

                                <asp:GridView ID="GVnonprivatelandTreefull"  runat="server" HeaderStyle-Width="10%" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true" DataKeyNames="id" OnRowCancelingEdit="GVnonprivatelandTree_RowCancelingEdit" OnRowEditing="GVnonprivatelandTree_RowEditing" OnRowUpdating="GVnonprivatelandTree_RowUpdating" Style="width:100%;" OnPageIndexChanging="GVnonprivatelandTree_PageIndexChanging" PageSize="10" AllowPaging="true"  >

                                    <PagerSettings  Mode="NumericFirstLast" FirstPageText="First"   PageButtonCount="10"  LastPageText="Last" />
                                    <Columns>
                                           <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">                                            <ItemTemplate>                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />                                            </ItemTemplate>                                            <ItemStyle Width="100px" />                                        </asp:TemplateField>
                                       

                                <%--   <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                    <ItemTemplate>
                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                    </ItemTemplate>
                                    <ItemStyle Width="100px" />
                                </asp:TemplateField>--%>

                                <asp:BoundField ItemStyle-Width="150px" DataField="NPLand_Id" HeaderStyle-Width="10%" HeaderText="Survey ID" ReadOnly="true"></asp:BoundField>
                                       


                                        <asp:BoundField ItemStyle-Width="150px" DataField="Tree_Species_name" HeaderText="Tree Species name" ReadOnly="true">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>


                                           <asp:TemplateField HeaderText="GBH(in cm)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="150px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblGBH" runat="server" Text='<%# Eval("GBH_in_cm") %>'></asp:Label>
                                            </ItemTemplate>
                                      <EditItemTemplate>
                                                <asp:TextBox ID="txtGBH" runat="server" Text='<%# Eval("GBH_in_cm") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        
                                           <asp:TemplateField HeaderText="Crown Diameter (in meters)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="150px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblCrown" runat="server" Text='<%# Eval("Crown_diameter_in_meters") %>'></asp:Label>
                                            </ItemTemplate>
                                      <EditItemTemplate>
                                                <asp:TextBox ID="txtCrown" runat="server" Text='<%# Eval("Crown_diameter_in_meters") %>' Width="140" oninput="NumberCheck(this)"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>



                                       <%-- <asp:BoundField ItemStyle-Width="150px" DataField="Specify_Others" HeaderText="Specify Others">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>--%>
                                          <asp:TemplateField HeaderText="Specify Others" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="150px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSpecify_Others" runat="server" Text='<%# Eval("Specify_Others") %>'></asp:Label>
                                            </ItemTemplate>
                                      <EditItemTemplate>
                                                <asp:Label ID="txtSpecify_Others" runat="server" Text='<%# Eval("Specify_Others") %>' Width="140"></asp:Label>
                                            </EditItemTemplate>
                                        </asp:TemplateField>



                                        <asp:TemplateField HeaderText="Action" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="Edit" runat="server" />
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" Text="Update" CommandName="Update" />
                                                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger" Text="Cancel" CommandName="cancel" />
                                            </EditItemTemplate>

                                        </asp:TemplateField>

                                    </Columns>
                                     <PagerStyle CssClass="custom-pager" />
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
       

</asp:Content>
