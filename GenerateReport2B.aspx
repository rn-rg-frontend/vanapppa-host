<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateReport2B.aspx.cs" Inherits="vansystem.GenerateReport2B" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%"></rsweb:ReportViewer>
     <div id="dvloader" runat="server" class="dvloader">
                <div class="PageLoadder">
                </div>
        </div>
        </div>
    </form>
</body>
</html>
