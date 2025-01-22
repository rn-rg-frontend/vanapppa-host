<%@ Page Title="" Language="C#" MasterPageFile="~/State.Master" AutoEventWireup="true" CodeBehind="TabularReport.aspx.cs" Inherits="vansystem.TabularReport" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <title>Van - Download Reports</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="app-content pd10">
        <div class="col-md-12">
            <h3 class="tile-title">Download Reports</h3>
        </div>
        <div class="clearfix"></div>
        <div style="padding: 15px;">
            <div class="tile">
                <ul>
                     <li><asp:LinkButton runat="server" Text="Compartment History Reporting Format 1" ID="btnCH1" OnClick="btnCH1_Click"></asp:LinkButton></li>
                    <li><asp:LinkButton runat="server" Text="Compartment History Reporting Format 2A" ID="btn2A" OnClick="btn2A_Click"></asp:LinkButton></li>
                    <li><asp:LinkButton runat="server" Text="Compartment History Reporting Format 2B" ID="btn2B" OnClick="btn2B_Click"></asp:LinkButton></li>
                  
                </ul>
            </div>
        </div>
    </div>

</asp:Content>
