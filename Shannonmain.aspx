<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="Shannonmain.aspx.cs" Inherits="vansystem.Shannonmain" %>


<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- for SweetAlert Library ND js-->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript">
    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />

    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <style>
        .PageLoadder {
            position: fixed;
            left: 50%;
            top: 40%;
            width: 100%;
            height: 100%;
            z-index: 99999999;
        }

        .card {
            margin-left: 60px !important;
            margin-top: 100px;
            overflow-x: hidden;
            margin-right:10px;
        }

        @media screen and (max-width: 768px) {

            .card {
                margin-left: 20px !important;
            }
        }

        body {
            overflow: hidden;
            /*overflow-x: hidden;*/
            /*overflow-y:hidden;*/
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server" ID="sm1"></asp:ScriptManager>
    <section class="content">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Shannon Diversity Index (H') Report</h3>
                <div class="pull-right card-tools">
                </div>
            </div>
            <!-- /.box-header -->
            <!-- /.box-header -->
            <!-- form start -->
            <div class="card-body">
                <div class="form-group">

                    <div class="row d-sm-flex text-center" id="dvDivision">

                             <div class="pt-4">
                            <asp:Button runat="server" ID="btnGenerate" Text="Generate Plot-Wise" CssClass="btn btn-primary" OnClick="btnGenerate_Click" Style="margin-left: 20px" />

                        </div>
                         <div class="pt-4">
                            <asp:Button runat="server" ID="btncompwise" Text="Generate Compartment-Wise" CssClass="btn btn-primary" OnClick="btncompwise_Click" Style="margin-left: 20px" />
                        </div>
                         <div class="pt-4">
                            <asp:Button runat="server" ID="btnblockwise" Text="Generate Block-Wise" CssClass="btn btn-primary" OnClick="btnblockwise_Click" Style="margin-left: 20px" />
                        </div>
                        <div class="pt-4">
                            <asp:Button runat="server" ID="btnrangewise" Text="Generate Range-Wise" CssClass="btn btn-primary" OnClick="btnrangewise_Click" Style="margin-left: 20px" />
                        </div>

                       

                       

                   
                    </div>

                </div>

                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%"></rsweb:ReportViewer>
                <div id="dvloader" runat="server" class="dvloader">
                    <div class="PageLoadder">
                    </div>
                </div>
            </div>
        </div>

    </section>
</asp:Content>
