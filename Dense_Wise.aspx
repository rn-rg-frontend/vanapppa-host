﻿<%@ Page Title="" Language="C#" MasterPageFile="~/State.Master" AutoEventWireup="true" CodeBehind="Dense_Wise.aspx.cs" Inherits="vansystem.Dense_Wise" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
        body{            overflow-x:hidden;            /*overflow-y:hidden;*/        }
   </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:ScriptManager runat="server" ID="sm1"></asp:ScriptManager>
    <section class="content">
        <div class="card" style="margin-top: 100px;
    margin-left: 50px;">
            <div class="card-header">
                <h3 class="card-title">LAND_USE_TYPE  REPORT</h3>
                <div class="pull-right card-tools">
                </div>
            </div>
            <!-- /.box-header -->
            <!-- /.box-header -->
            <!-- form start -->
            <div class="card-body">
                <div class="row">
                  
                        <div class="form-group">
                           
               
                   
                          
                           
                         <asp:Button runat="server" Style="margin-left:100px" ID="btnGenerate" Text="Generate Report" CssClass="btn btn-primary" OnClick="btnGenerate_Click"/>
                    </div>
                 
             </div>
                   
                </div>
            </div>
       
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Style="width:100%; margin-left:80px;"></rsweb:ReportViewer>
            <div id="dvloader" runat="server" class="dvloader">
                <div class="PageLoadder">
                </div>
            </div>
                <%--</div>--%>
           
           

    </section>
</asp:Content>

