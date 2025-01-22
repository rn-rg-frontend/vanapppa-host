<%@ Page Title="" Language="C#" MasterPageFile="~/Range/Range.Master" AutoEventWireup="true" CodeBehind="NTFPExtraction.aspx.cs" Inherits="vansystem.Range.NTFPExtraction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
        label {
            font-weight: normal;
        }
       
        table {
            width: 450px;
            border-collapse: collapse;
            margin: 50px auto;
            margin-left: 9px;
            margin-top: 14px;
        }


        th {
            background: #5cb85c;
            color: white;
            font-weight: bold;
            text-align: center;
        }

        #stickyHeader {
            position: sticky;
            top: 0%;
        }

        .coupe-control {
            border-bottom: 2px solid #ddd;
            padding-bottom: 8px;
        }

        body {
            overflow: hidden;
        }

        @media (min-width: 2000px) {
            body {
                overflow: hidden;
            }
        }

        @media (max-width: 990px) {
            body {
                overflow: scroll;
                max-height: 600px;
            }
        }

        .tilee {
            height: 87vh;
        }


        td, th {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
            font-size: 15px;
        }
        .swal-overlay--show-modal .swal-modal {
            width: 30%;
            height: 31%;
        }

        .swal-text {
            font-size: 18px;
        }

        .swal-footer {
            padding: 6% 37%;
        }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: -4vh;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
        }

        th, td {
            padding: 0.75rem;
        }
    </style>

    <!-- jQuery library -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>



    <%--  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <script>
        var object = { status: false, ele: null };

        function confirmDelete1(ev) {
            if (object.status) {
                object.status = false; // Reset status for next confirmation
                return true;
            }

            swal({
                title: "Are you sure?",
                text: "Your will not be able to recover this record file!",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, delete it!",
                cancelButtonText: "No, cancel!",
                closeOnConfirm: true,
            },
                function () {
                    object.status = true;
                    object.ele = ev;
                    object.ele.click();
                    object.status = false; // Reset status after confirmation is complete
                });

            return false;
        }
    </script>
    <script>
        function showDeletepopup() {

            $("#DeleteModal").modal('show');
        }
        function closeDeletepopup() {
            $("#DeleteModal").modal('hide');
            window.top.location.reload();
        }

        function showmodel() {

            $("#myModal").modal('show');

        }
        function closepopup() {
            debugger;
            $("#myModal").modal('hide');
            window.top.location.reload();
        }
        function closepopup1() {
            window.top.location.reload();
            $("#successModal").modal('hide');
            window.top.location.reload();
        }
        function showErrorpopup() {

            var x = document.getElementById("error");
            if (x.style.display === "none") {
                x.style.display = "block";

            } else {
                x.style.display = "none";
            }
        }
        function closeErrorpopup() {

            var x = document.getElementById("error");
            if (x.style.display === "none") {
                x.style.display = "block";
                window.top.location.reload();
            } else {
                x.style.display = "none";
            }
        }
    </script>

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



    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updatepanel1">
        <ContentTemplate>
            <div class="app-content">
                <div class="row">
                    <div class="col-md-4 tile tilee" style="overflow-y: scroll;">
                        <div style="max-height: 67vh;">
                            <h3 class="tile-title">Add New NTFP Extraction Record</h3>
                            <div class="tile-body" style="max-height: 100%; overflow-y: auto;">
                                <div class="col-md-12 col-sm-12">

                                    <div class="form-group">
                                        <asp:Label ID="lblYear" runat="server" Text="Reporting Year"></asp:Label>
                                        <asp:TextBox ID="txtYear" runat="server" CssClass="form-control" placeholder="Reporting Year" ValidationGroup="LoginFrame" oninput="NumberCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Year" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtYear"></asp:RequiredFieldValidator>
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <asp:Label ID="lblName" runat="server" Text="Name of The Major NTFP/Spp."></asp:Label>
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name of The Major NTFP/Spp." ValidationGroup="LoginFrame" oninput="SplCharCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Name of the major NTFP/Spp." SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <asp:Label ID="lblTotalcollection" runat="server" Text="Total Collection (kg, metric tons, std. Bags)"></asp:Label>
                                        <asp:TextBox ID="txtTotalcollection" runat="server" CssClass="form-control" placeholder="Total Collection (kg, metric tons, std. Bags)" ValidationGroup="LoginFrame"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Total collection" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtTotalcollection"></asp:RequiredFieldValidator>
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <asp:Label ID="lblActualcollection" runat="server" Text="Difference in The Target and Actual Collection"></asp:Label>
                                        <asp:TextBox ID="txtActualcollection" runat="server" CssClass="form-control" placeholder="Difference in The Target and Actual Collection" ValidationGroup="LoginFrame" oninput="NumberCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Difference in the target and actual collection" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtActualcollection"></asp:RequiredFieldValidator>
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <asp:Label ID="lblproductivity" runat="server" Text="Measures Taken Maintaining The Productivity"></asp:Label>
                                        <asp:TextBox ID="txtproductivity" runat="server" CssClass="form-control" placeholder="Measures Taken Maintaining The Productivity" ValidationGroup="LoginFrame" oninput="NumberCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Measures taken maintaining the productivity" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtproductivity"></asp:RequiredFieldValidator>
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <asp:Label ID="lblBudget" runat="server" Text="Budget Allocation for NTFP Management"></asp:Label>
                                        <asp:TextBox ID="txtBudget" runat="server" CssClass="form-control" placeholder="Budget Allocation for NTFP Management" ValidationGroup="LoginFrame" oninput="NumberCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Budget allocation for NTFP management" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtBudget"></asp:RequiredFieldValidator>
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <asp:Button ID="btnAdd" runat="server" ValidationGroup="LoginFrame" OnClick="btnAdd_Click" Text="Add" CssClass="btn btn-success" />
                                    </div>

                                </div>
                                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                            </div>
                            <!--div class="tile-footer"><a class="btn btn-primary" href="#">Link</a></div-->
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-12 m-coupe">
                        <div class=" tile tilee">


                            <div class="d-md-flex justify-content-between align-items-center coupe-control" id="stickyHeader">

                                <div>
                                    <h3 class="">NTFP Extraction Records</h3>
                                </div>

                                <div class="tile-body" <%--style="overflow-x: auto; font-size: 90%; max-height: 700px;"--%>>
                                    Show
                                    <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" Style="background-color: #004990; color: white; height: 30px; width: 70px">
                                        <asp:ListItem Text="10" Value="10" />
                                        <asp:ListItem Text="25" Value="25" />
                                        <asp:ListItem Text="50" Value="50" />
                                    </asp:DropDownList>
                                    Entries  
                                   
                                    Search:
                                      <asp:TextBox ID="TextBox1" runat="server" onkeyup="Search_Gridview(this)" Style="font-size: 16px; background-color: #004990; color: white"></asp:TextBox>
                                    <asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />

                                </div>

                            </div>



                            <div class="box-content" style="overflow-y: scroll; height: 65vh;">
                                <div class="box-content">
                                <asp:GridView runat="server" AlternatingRowStyle-CssClass="infoarea" ID="gvActivity" AutoGenerateColumns="false" DataKeyNames="NTFPExtractionId" AllowPaging="true" OnPageIndexChanging="gvActivity_PageIndexChanging" PageSize="10" ShowHeaderWhenEmpty="true" OnRowCommand="gvActivity_RowCommand">
                                      <PagerSettings  Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="5"  LastPageText="Last" />
                                    <Columns>

                                        <%-- <asp:BoundField HeaderText="Sr.No" DataField="TimberExtractionId" ItemStyle-Width="200%" />--%>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="ReportingYear" HeaderText="Reporting Year" SortExpression="ReportingYear"/>
                                         <asp:BoundField DataField="NTFPName" HeaderText="Name of The Major NTFP/Spp." SortExpression="NTFPName" />
                                        <asp:BoundField DataField="Totalcollection" HeaderText="Total Collection (kg, metric tons, std. Bags)" SortExpression="Totalcollection" />
                                        <asp:BoundField DataField="DiffTargetActual" HeaderText="Difference in The Target and Actual Collection" SortExpression="DiffTargetActual"/>
                                        <asp:BoundField DataField="ProductivityMeasures" HeaderText="Measures Taken Maintaining The Productivity" SortExpression="ProductivityMeasures" />
                                        <asp:BoundField DataField="BudgetAllocation" HeaderText="Budget Allocation for NTFP Management" SortExpression="BudgetAllocation"/>
                                         <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl='~/images/bin.png' ID="Button1" ToolTip="Delete" runat="server" CausesValidation="false" CommandName="cmdDelete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                             <ul class="pagination"  id="pagingnation" visible="false" runat="server" style="margin-top: 6px; margin-left: 9px; color: #5cb85c">
                                 
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
