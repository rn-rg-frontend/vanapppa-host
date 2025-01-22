<%@ Page Title="" Language="C#" MasterPageFile="~/Block/Block.Master" AutoEventWireup="true" CodeBehind="TimberExtraction.aspx.cs" Inherits="vansystem.Block.TimberExtraction" %>

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
        /*body{            overflow-x:hidden;            overflow-y:hidden;        }*/
         h3{            margin-left:80px;        }
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
    <script type="text/javascript">


        function NumberCheck(input) {

            let value = input.value;/*<a href="TimberExtraction.aspx">TimberExtraction.aspx</a>*/
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



    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updatepanel1">
        <ContentTemplate>

            <div>
                <div class="container-fluid mt-6">
                    <div style="margin-left: 0%;  margin-top: 88px;">
                        <h3><b>Timber Extraction Records</b></h3>
                        <div class="card-body" style="background-color: rgb(252, 252, 252); margin-left:-2000px;">
                            <div style="margin-left:59%;">
                           
                            <div class="tile-body" <%--style="overflow-x: auto; font-size: 90%; max-height: 700px;"--%>>
                                Show
                            <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                <asp:ListItem Text="10" Value="10" />
                                <asp:ListItem Text="25" Value="25" />
                                <asp:ListItem Text="50" Value="50" />
                            </asp:DropDownList>
                                Search:
                                  <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px" onkeyup="Search_Gridview(this)"></asp:TextBox>
                                <asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />
                                <br />
                                Entries
                                <br />

                                <asp:GridView ID="gvActivity" runat="server" AlternatingRowStyle-CssClass="infoarea"  AutoGenerateColumns="false" DataKeyNames="TimberExtractionId"  AllowPaging="true"  OnPageIndexChanging="gvActivity_PageIndexChanging" PageSize="10" ShowHeaderWhenEmpty="true">

                                        <PagerSettings  Mode="NumericFirstLast" FirstPageText="First"   PageButtonCount="5"  LastPageText="Last" />
                                    <Columns>

                                        <%-- <asp:BoundField HeaderText="Sr.No" DataField="TimberExtractionId" ItemStyle-Width="200%" />--%>
                                        <asp:TemplateField HeaderText="S.No." ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="ReportingYear" HeaderText="Reporting Year" SortExpression="ReportingYear" />
                                        <asp:BoundField DataField="WoodTypequality" HeaderText="Wood Type/Quality" SortExpression="WoodTypequality" />
                                        <asp:BoundField DataField="WoodExtraction" HeaderText="Wood Extraction(cmt)" SortExpression="WoodExtraction" />
                                        <asp:BoundField DataField="PolessmallwoodTypequality" HeaderText="Poles/Small Wood Type/ Quality" SortExpression="PolessmallwoodTypequality" />
                                        <asp:BoundField DataField="PolessmallwoodExtraction" HeaderText="Poles/Small Wood Extraction (cmt)" SortExpression="PolessmallwoodExtraction" />
                                        <asp:BoundField DataField="Totalextraction" HeaderText="Total Extraction(cmt)" SortExpression="Totalextraction" />
                                        <asp:BoundField DataField="TotalExtractionUnAuthroized" HeaderText="Total Extraction from Unauthorized Means (if any)" SortExpression="Totalextractionfromunauthorizedmeans" />
                                        <asp:BoundField DataField="TotalextractionToF" HeaderText="Total Extraction from ToF (cmt)" SortExpression="TotalextractionfromToF" />
                                        <asp:BoundField DataField="CompareRosterNorm" HeaderText="Compared with The Roster and Norm" SortExpression="Comparedwiththerosterandnorm" />
                                        
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
                </div>
          
          
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnExport" />
        </Triggers>
    </asp:UpdatePanel>

  
    <script type="text/javascript">
        function Search_Gridview(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");

            var tblData = document.getElementById("<%=gvActivity.ClientID %>");
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