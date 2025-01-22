<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="carbonemissionmain.aspx.cs" Inherits="vansystem.carbonemissionmain" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .PageLoadder {
            position: fixed;
            left: 50%;
            top: 40%;
            width: 100%;
            height: 100%;
            z-index: 99999999;
        }

        .dvloader {
            margin: 0px;
            display: none;
            padding: 0px;
            position: absolute;
            right: 0px;
            top: 0px;
            width: 100%;
            height: 100%;
            background-color: rgb(255, 255, 255);
            z-index: 300;
            opacity: 0.8;
        }

        .card {
            margin-left: 60px !important;
            margin-top: 100px;
            overflow-x: hidden;
            margin-right: 10px;
        }

        @media screen and (max-width: 768px) {

            .card {
                margin-left: 20px !important;
            }
        }

        body {
            overflow: hidden;
            /*overflow-x: hidden;*/
            /* overflow-y:hidden;*/
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server" ID="sm1"></asp:ScriptManager>
    <section class="content">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Carbon Estimation Report</h3>
                <div class="pull-right card-tools">
                </div>
            </div>
            <!-- /.box-header -->
            <!-- /.box-header -->
            <!-- form start -->
            <div class="card-body">
                <div class="form-group">

                    <div class="row d-sm-flex" id="dvDivision">
                        <div class="form-group">
                            <%--<asp:Label runat="server" ID="lblDivision" Text="Division"></asp:Label>--%>
                            <%--<%--<asp:DropDownList runat="server" ID="ddlDivision" CssClass="form-control" AutoPostBack="true" style="width:220%" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged">--%>
                            <%-- <asp:ListItem Value="All" Text="All"></asp:ListItem>--%>
                            <%--</asp:DropDownList>--%>
                            <%-- <asp:DropDownList ID="ddldivision" runat="server"
                                        AutoPostBack="true"
                                        Style="padding: 5px" OnSelectedIndexChanged="ddldivision_SelectedIndexChanged1">
                                <asp:ListItem Value="All" Text="All"></asp:ListItem>
                                    </asp:DropDownList>
                            <asp:Label ID="lbldivisionid" runat="server" Text=""></asp:Label>
                        </div>

                         <div class="form-group">
                            <asp:Label runat="server" ID="lblrange" Text="Range"></asp:Label>
                          
                            <asp:DropDownList ID="ddlrange" runat="server"
                                        AutoPostBack="true"
                                        Style="padding: 5px">
                                <asp:ListItem Value="All" Text="All"></asp:ListItem>
                                    </asp:DropDownList>
                        </div>--%>
                        </div>

                        <div>
                            <asp:Button runat="server" ID="btnGenerate" Text="Generate Plot-Wise" CssClass="btn btn-primary" OnClick="btnGenerate_Click" />
                        </div>

                        <%--  <asp:Button runat="server" ID="btnrangewise" Text="Generate Rangewise" CssClass="btn btn-primary" OnClick="btnrangewise_Click" style="margin-left:20px" />

                         <asp:Button runat="server" ID="btnblockwise" Text="Generate Blockwise" CssClass="btn btn-primary" OnClick="btnblockwise_Click" style="margin-left:20px" />--%>
                    </div>
                </div>

                <%--<div class="card-footer clearfix">
                <a href="carbonemissionmain.aspx" class="btn btn-danger">Cancel</a>
               <%-- <asp:Button runat="server" ID="btnGenerate" Text="Generate" CssClass="btn btn-primary" OnClick="btnGenerate_Click"/>--%>

                <%--</div>--%>
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%"></rsweb:ReportViewer>
                <div id="dvloader" runat="server" class="dvloader">
                    <div class="PageLoadder">
                    </div>
                </div>
            </div>
        </div>

    </section>
</asp:Content>
