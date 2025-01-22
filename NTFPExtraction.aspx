<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="NTFPExtraction.aspx.cs" Inherits="vansystem.NTFPExtraction" %>

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
         .sweet-alert button.cancel {
            background-color: #dc3545 !important;
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
                title: "Are you sure you want to delete this entry?",
                /*text: "You will not be able to recover this record!",*/
                text: "This entry cannot be recovered and will be deleted permanently.",
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

        function YearCheck(input) {
            let value = input.value;

            // Keep only digits and limit to 4 digits
            let year = value.replace(/[^0-9]/g, "").substring(0, 4);

            input.value = year;
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" defaultbutton="btnAdd">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updatepanel1">
        <ContentTemplate>
            <div class="app-content">
                <div class="row">
                    <div class="col-md-4 tile tilee" style="overflow-y: scroll;">
                        <div style="max-height: 67vh;">
                            <h3 class="tile-title">Add New NTFP Extraction Record</h3>
                            <div class="tile-body" style="max-height: 100%;">
                                <div class="col-md-12 col-sm-12">

                                    <div class="form-group">
                                        <asp:Label ID="lblYear" runat="server" Text="Reporting Year"></asp:Label>
                                        <asp:TextBox ID="txtYear" runat="server" CssClass="form-control" placeholder="Reporting Year" ValidationGroup="LoginFrame" oninput="YearCheck(this);"></asp:TextBox>
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
                                    <div class="form-group pb-5">
                                        <asp:Button ID="btnAdd" runat="server" ValidationGroup="LoginFrame" OnClick="btnAdd_Click" Text="Add" CssClass="btn btn-success" />
                                         <asp:Button ID="btnupdate" runat="server" Text="Update" class="btn btn-success" OnClick="btnupdate_Click" />

                                        <asp:Button ID="btncancelupdate" runat="server" Text="Cancel" class="btn btn-secondary" OnClick="btncancelupdate_Click" />
                                    </div>

                                </div>
                                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                            </div>
                            <!--div class="tile-footer"><a class="btn btn-primary" href="#">Link</a></div-->
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-12 m-coupe">
                        <div class=" tile tilee">


                            <div class="d-md-flex justify-content-between align-items-center coupe-control text-center" id="stickyHeader">
                                <div style="margin-left: 3% !important;">
                                    <h3 class="">NTFP Extraction Records</h3>
                                </div>
                                <div class=" row tile-body d-sm-flex justify-content-center align-items-end text-center" <%--style="overflow-x: auto; font-size: 90%; max-height: 700px;"--%>>


                                    <div>
                                        <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No records found.</asp:Label>
                                    </div>


                                    <div class="d-flex justify-content-center align-items-center pl-4">
                                        Search:
                                      <asp:TextBox ID="TextBox1" runat="server" onkeyup="Search_function(this);" Style="font-size: 16px; background-color: #004990; color: white"></asp:TextBox>
                                    </div>
                                    <div class="pl-4" style="padding-top: 6px;">
                                        <asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />

                                    </div>

                                    <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top: 6px; padding-right: 15px;">
                                        Show
                                        <div class="pl-2 pr-2">
                                            <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" Style="background-color:#004990; color:white; width:60px; border-radius:3px; height:30px;">
                                                <asp:ListItem Text="10" Value="10" />
                                                <asp:ListItem Text="25" Value="25" />
                                                <asp:ListItem Text="50" Value="50" />
                                            </asp:DropDownList>
                                        </div>
                                        entries  
                                    </div>
                                    <br />
                                </div>
                            </div>



                            <div class="box-content" style="overflow: auto; height: 75vh; margin: 1%">
                                <asp:GridView runat="server" AlternatingRowStyle-CssClass="infoarea" ID="gvActivity" AutoGenerateColumns="false" DataKeyNames="NTFPExtractionId" AllowPaging="true" OnPageIndexChanging="gvActivity_PageIndexChanging" OnRowCommand="gvActivity_RowCommand" OnRowDeleting="gvActivity_RowDeleting" PageSize="10" ShowHeaderWhenEmpty="true" CssClass="table" OnRowEditing="gvActivity_RowEditing">
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="5" LastPageText="Last" />
                                    <Columns>

                                        <%-- <asp:BoundField HeaderText="Sr.No" DataField="TimberExtractionId" ItemStyle-Width="200%" />--%>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="ReportingYear" HeaderText="Reporting Year" SortExpression="ReportingYear" ReadOnly="true"/>
                                        <asp:BoundField DataField="NTFPName" HeaderText="Name of The Major NTFP/Spp." SortExpression="NTFPName" ReadOnly="true"/>
                                        <asp:BoundField DataField="Totalcollection" HeaderText="Total Collection (Kg, Metric Tons, Std. Bags)" SortExpression="Totalcollection" ReadOnly="true"/>
                                        <asp:BoundField DataField="DiffTargetActual" HeaderText="Difference in The Target and Actual Collection" SortExpression="DiffTargetActual" ReadOnly="true"/>
                                        <asp:BoundField DataField="ProductivityMeasures" HeaderText="Measures Taken Maintaining The Productivity" SortExpression="ProductivityMeasures" ReadOnly="true"/>
                                        <asp:BoundField DataField="BudgetAllocation" HeaderText="Budget Allocation for NTFP Management" SortExpression="BudgetAllocation" ReadOnly="true"/>
                                         <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>

                                                <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="Edit" runat="server"
                                                    CommandArgument='<%#Eval("NTFPExtractionId") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl='~/images/bin.png' ID="Button1" ToolTip="Delete" runat="server" CausesValidation="false" CommandName="cmdDelete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                            </ItemTemplate>
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
            <!----Delete modal starts here--->
            <%-- <div id="DeleteModal" class="modal fade" role='dialog'>
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" onclick="closeDeletepopup()" aria-hidden="true">&times;</button>
                           
                        </div>
                        <div class="modal-body">
                            <p>Do You Really Want to Delete This ?</p>

                        </div>
                        <div class="modal-footer">
                            <%--<button type="button" class="btn btn-secondary" onclick="closeDeletepopup()">Cancel</button>
                            <asp:Button ID="btnCancel" runat="server" Text="Cancle" class="btn btn-secondary" OnClick="btnCancel_Click" />
                            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete" OnClick="btnDelete_Click" />
                        </div>

                    </div>
                </div>
            </div>--%>
            <!-- Delete Modal ends here--->
            <!-- Modal HTML -->
            <div id="myModal" class="modal fade" style="margin-left: 105px; margin-top: 168px;">
                <div class="modal-dialog modal-confirm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <div class="icon-box">
                                <i class="material-icons">&#xE876;</i>
                            </div>
                            <h4 class="modal-title w-100">Awesome!</h4>
                        </div>
                        <div class="modal-body">

                            <p class="text-center" id="pContent"><%=successMsg%></p>
                        </div>
                        <div class="modal-footer">
                            <%--<button class="btn btn-success btn-block" data-dismiss="modal">OK</button>
                        <button class="btn btn-success btn-block" onclick="closepopup">OK</button>--%>
                            <asp:Button ID="btnClose" class="btn btn-success btn-block" runat="server" Text="Ok" OnClientClick="closepopup()" />
                            <%-- <asp:Button ID="Button2" class="btn btn-success btn-block" runat="server" Text="Ok" OnClientClick="closepopup2" />--%>
                        </div>
                    </div>
                </div>
            </div>
            <%--Error Popup--%>
            <div class="popup" id="error" style="display: none;">
                <div class="popup-content">
                    <div class="modal-header">
                        <button type="button" class="close" onclick="closeErrorpopup()" aria-hidden="true">&times;</button>
                        <%--<h4 class="modal-title">Delete </h4>--%>
                    </div>
                    <div class="imgbox">
                        <img src="../Images/cancel.png" alt="" class="img">
                    </div>
                    <div class="title">
                        <h3>Sorry :(</h3>
                    </div>
                    <p class="para">Something went wrong. Please try again!</p>
                </div>
            </div>
            <div class="card-footer text-muted" style="background-color: #0b3355;">
            </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnExport" />
        </Triggers>
    </asp:UpdatePanel>

    <%-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>--%>
    <%-- <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css"
        rel="stylesheet" type="text/css" />--%>
    <%-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>--%>
    <%-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>--%>




    <script type="text/javascript">
        <%--function Search_Gridview(strKey) {
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
        }--%>


   <%--     function Search_function(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");
            var tblData = document.getElementById("<%=gvActivity.ClientID %>");
            var rowData;
            var found = false;

            for (var i = 1; i < tblData.rows.length; i++) {
                rowData = tblData.rows[i].innerHTML.toLowerCase();
                var rowFound = true; // Assume the row matches until proven otherwise
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.indexOf(strData[j]) === -1) {
                        rowFound = false; // If any search term is not found in the row, mark it as not found
                        break;
                    }
                }
                tblData.rows[i].style.display = rowFound ? '' : 'none'; // Show or hide the row based on whether it matches the search terms
                if (rowFound) {
                    found = true; // If at least one row matches the search terms, set found to true
                }
            }

            var messageElement = document.getElementById('recordNotFoundMessage');
            if (!messageElement) {
                messageElement = document.createElement('div');
                messageElement.id = 'recordNotFoundMessage';
                messageElement.innerHTML = 'Record not found.';
                messageElement.style.textAlign = 'center';
                messageElement.style.marginTop = '19px';
                messageElement.style.color = 'red';
                messageElement.style.paddingBottom = '18%';
                messageElement.style.overflowY = 'clip';
                tblData.parentElement.appendChild(messageElement);
            }

            messageElement.style.display = found ? 'none' : 'block'; // Show or hide the error message based on whether any records were found
        }

        window.onload = function () {
            document.getElementById("<%= TextBox1.ClientID %>").value = "";
        };--%>

        function Search_function(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");
            var tblData = document.getElementById("<%= gvActivity.ClientID %>");

            // Ensure tblData is defined and has rows
            if (!tblData || tblData.rows.length === 0) {
                displayNoDataMessage();
                return;
            }

            var rowData;
            var found = false;

            // Loop through table rows, starting from 1 to skip the header
            for (var i = 1; i < tblData.rows.length; i++) {
                rowData = tblData.rows[i].innerHTML.toLowerCase();
                var rowFound = true;
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.indexOf(strData[j]) === -1) {
                        rowFound = false;
                        break;
                    }
                }
                tblData.rows[i].style.display = rowFound ? '' : 'none';
                if (rowFound) {
                    found = true;
                }
            }

            displayNoDataMessage(found);
        }

        function displayNoDataMessage(found) {
            var tblData = document.getElementById("<%= gvActivity.ClientID %>");
            var messageElement = document.getElementById('recordNotFoundMessage');

            if (!messageElement) {
                messageElement = document.createElement('div');
                messageElement.id = 'recordNotFoundMessage';
                messageElement.innerHTML = 'Record not found.';
                messageElement.style.textAlign = 'center';
                messageElement.style.marginTop = '19px';
                messageElement.style.color = 'red';
                messageElement.style.paddingBottom = '18%';
                messageElement.style.overflowY = 'clip';
                tblData.parentElement.appendChild(messageElement);
            }

            messageElement.style.display = found ? 'none' : 'block';
        }

        window.onload = function () {
            document.getElementById("<%= TextBox1.ClientID %>").value = "";
        };

        // Handle the Enter key press to ensure the message persists
        document.getElementById("<%= TextBox1.ClientID %>").addEventListener('keydown', function (event) {
            if (event.key === 'Enter') {
                event.preventDefault();
                Search_function(this);
            }
        });

    </script>
    <script type="text/javascript">
        function preventEnterKey(e) {
            // Check if the key pressed is Enter key
            if (e.keyCode === 13) {
                e.preventDefault(); // Prevent the default action
                return false;
            }
        }
    </script>

    <!-- Add this HTML code within your ContentPlaceHolder1 -->
    <div class="modal fade" id="successModal" tabindex="-1" role="dialog" aria-labelledby="successModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="successModalLabel">Success!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Entry added successfully.
                </div>
                <div class="modal-footer">
                    <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">OK</button>--%>
                    <asp:Button ID="Button1" class="btn btn-success btn-block" runat="server" Text="Ok" OnClientClick="closepopup1" />
                </div>
            </div>
        </div>
    </div>
      <div class="modal fade" id="successUpdaateModal" tabindex="-1" role="dialog" aria-labelledby="successUpdaateModal" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="successUpdaateLabel">Success!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Entry Updated successfully.
                  
                </div>
                <div class="modal-footer">
                    <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">OK</button>--%>
                    <asp:Button ID="Button2" class="btn btn-success btn-block" runat="server" Text="Ok" OnClientClick="closepopup1" />
                </div>
            </div>
        </div>
    </div>

    <script>
      

        $(document).ready(function () {
            $('#successUpdaateModal').on('hidden.bs.modal', function () {
                // Redirect to the desired location after the modal is closed
                window.location = "NTFPExtraction.aspx";
            });
        });

    
        $(document).ready(function () {
            $('#successModal').on('hidden.bs.modal', function () {
                // Redirect to the desired location after the modal is closed
                window.location = "NTFPExtraction.aspx";
            });
        });



    </script>


</asp:Content>
