<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="TimberExtraction.aspx.cs" Inherits="vansystem.TimberExtraction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
        label {
            font-weight: normal;
        }
        /*.table-dark, .table-dark > th, .table-dark > td {
	    background-color: #f1f3f5 !important;
	}*/
        table {
            width: 450px;
            border-collapse: collapse;
            margin: 50px auto;
            margin-left: 9px;
            margin-top: 0px;
        }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: 0rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            font-weight: bold;
            text-align: center;
            white-space: nowrap;
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
        /*
        .label tr td label {
            display: block;
        }


        [data-toggle="toggle"] {
            display: none;
        }

        a {
            color: white;
            text-decoration: none;
        }*/

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



        /*#stickyHeader {
            position: sticky;
            top: 0%;
        }*/

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

            .m-coupe {
                padding: 0px;
            }
        }

        @media (max-width: 990px) {
            body {
                overflow: scroll;
                max-height: 600px;
            }

            .m-coupe {
                padding: 0px;
                margin-top: 5px;
            }

            .tile {
                position: sticky;
            }
        }


        th, td {
            padding: 0.75rem;
        }

        .tilee {
            height: 87vh;
        }

        .box-content .box-height {
            height: 65vh;
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
                /* text: "You will not be able to recover this record!",*/
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

        function YearCheck(input) {
            let value = input.value;

            // Keep only digits and limit to 4 digits
            let year = value.replace(/[^0-9]/g, "").substring(0, 4);

            //let currentYear = new Date().getFullYear();
            //if (year < 1000 || year > currentYear + 10) {
            //    // If the year is less than 1000 or more than 10 years in the future, set to current year
            //    year = currentYear;
            //}

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
                        <div style="height: 67vh;">
                            <h3 class="tile-title">Add New Timber Extraction Record</h3>
                            <div class="tile-body" style="max-height: 100%;">
                                <div class="col-md-12 col-sm-12">

                                    <div class="form-group">
                                        <asp:Label ID="lblYear" runat="server" Text="Reporting Year"></asp:Label>
                                        <asp:TextBox ID="txtYear" runat="server" CssClass="form-control" placeholder="Reporting Year" ValidationGroup="LoginFrame" oninput="YearCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Please enter the details" SetFocusOnError="true" ValidationGroup="LoginFrame" Display="Dynamic" ControlToValidate="txtYear"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblwoodTQ" runat="server" Text="Wood Type/Quality"></asp:Label>
                                        <asp:TextBox ID="txtwoodTQ" runat="server" oninput="SplCharCheck(this);" CssClass="form-control" placeholder="Wood Type/Quality" ValidationGroup="LoginFrame"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Please enter the details" SetFocusOnError="true" ValidationGroup="LoginFrame" Display="Dynamic" ControlToValidate="txtwoodTQ"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblWoodExtraction" runat="server" Text="Wood Extraction(cmt)"></asp:Label>
                                        <asp:TextBox ID="txtWoodExtraction" runat="server" oninput="NumberCheck(this);" CssClass="form-control" placeholder="Wood Extraction(cmt)" ValidationGroup="LoginFrame"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Please enter the details" SetFocusOnError="true" ValidationGroup="LoginFrame" Display="Dynamic" ControlToValidate="txtWoodExtraction"></asp:RequiredFieldValidator>

                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblPoles" runat="server" Text="Poles/Small Wood Type/ Quality"></asp:Label>
                                        <asp:TextBox ID="txtPoles" runat="server" oninput="SplCharCheck(this);" CssClass="form-control" placeholder="Poles/Small Wood Type/ Quality" ValidationGroup="LoginFrame"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Please enter the details" SetFocusOnError="true" ValidationGroup="LoginFrame" Display="Dynamic" ControlToValidate="txtPoles"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblPolescmt" runat="server" Text="Poles/Small Wood Extraction (cmt)"></asp:Label>
                                        <asp:TextBox ID="txtPolescmt" runat="server" oninput="NumberCheck(this);" CssClass="form-control" placeholder="Poles/Small Wood Extraction (cmt)" ValidationGroup="LoginFrame"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Please enter the details" SetFocusOnError="true" ValidationGroup="LoginFrame" Display="Dynamic" ControlToValidate="txtPolescmt"></asp:RequiredFieldValidator>

                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblTotalextraction" runat="server" Text="Total Extraction(cmt)"></asp:Label>
                                        <asp:TextBox ID="txtTotalextraction" oninput="NumberCheck(this);" runat="server" CssClass="form-control" placeholder="Total Extraction(cmt)" ValidationGroup="LoginFrame"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Please enter the details" SetFocusOnError="true" ValidationGroup="LoginFrame" Display="Dynamic" ControlToValidate="txtTotalextraction"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblTotalextractionunauthorized" runat="server" Text="Total Extraction from Unauthorized Means (if any)"></asp:Label>
                                        <asp:TextBox ID="txtTotalextractionunauthorized" oninput="NumberCheck(this);" runat="server" CssClass="form-control" placeholder="Total Extraction from Unauthorized Means (if any)" ValidationGroup="LoginFrame"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Please enter the details" SetFocusOnError="true" ValidationGroup="LoginFrame" Display="Dynamic" ControlToValidate="txtTotalextractionunauthorized"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblTotalextractionfromToF" runat="server" Text="Total Extraction from ToF (cmt)"></asp:Label>
                                        <asp:TextBox ID="txtTotalextractionfromToF" oninput="NumberCheck(this);" runat="server" CssClass="form-control" placeholder="Total Extraction from ToF (cmt)" ValidationGroup="LoginFrame"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Please enter the details" SetFocusOnError="true" ValidationGroup="LoginFrame" Display="Dynamic" ControlToValidate="txtTotalextractionfromToF"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblComparedwiththeroster" runat="server" Text="Compared with The Roster and Norm"></asp:Label>
                                        <asp:TextBox ID="txtComparedwiththeroster" oninput="NumberCheck(this);" runat="server" CssClass="form-control" placeholder="Compared with The Roster and Norm" ValidationGroup="LoginFrame"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Please enter the details" SetFocusOnError="true" ValidationGroup="LoginFrame" Display="Dynamic" ControlToValidate="txtComparedwiththeroster"></asp:RequiredFieldValidator>
                                    </div>
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

                                <div>
                                    <h3 class="">Timber Extraction Records</h3>
                                </div>

                                <div class="tile-body row d-md-flex justify-content-center align-items-center text-center">

                                    <div class="d-flex justify-content-center align-items-center pl-4">
                                        Search:
                                        <asp:TextBox ID="TextBox1" runat="server" onkeyup="Search_function(this)" Style="font-size: 16px; background-color: #004990; color: white"></asp:TextBox>
                                    </div>
                                    <div class="pl-3">
                                        <asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />
                                    </div>
                                    <div class="d-flex justify-content-center align-items-center pl-4">
                                        Show
                                       <div class="pl-2 pr-2">
                                           <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" Style="background-color: #004990; color: white; width: 70px; border-radius: 3px; height: 30px;">
                                               <asp:ListItem Text="10" Value="10" />
                                               <asp:ListItem Text="25" Value="25" />
                                               <asp:ListItem Text="50" Value="50" />
                                           </asp:DropDownList>
                                       </div>
                                        Entries  
                                    </div>

                                    

                                </div>

                            </div>

                            <div class="box-content" style="overflow-y: scroll; height: 65vh;">

                                <asp:GridView ID="gvActivity" runat="server" AlternatingRowStyle-CssClass="infoarea" AutoGenerateColumns="false" DataKeyNames="TimberExtractionId" AllowPaging="true" OnPageIndexChanging="gvActivity_PageIndexChanging" OnRowCommand="gvActivity_RowCommand" OnRowDeleting="gvActivity_RowDeleting" PageSize="10" ShowHeaderWhenEmpty="true" CssClass="table" OnRowEditing="gvActivity_RowEditing">

                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="5" LastPageText="Last" />
                                    <Columns>

                                        <%-- <asp:BoundField HeaderText="Sr.No" DataField="TimberExtractionId" ItemStyle-Width="200%" />--%>
                                        <asp:TemplateField HeaderText="S.No." ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="ReportingYear" HeaderText="Reporting Year" SortExpression="ReportingYear" ReadOnly="true" />
                                        <asp:BoundField DataField="WoodTypequality" HeaderText="Wood Type/Quality" SortExpression="WoodTypequality" ReadOnly="true" />
                                        <asp:BoundField DataField="WoodExtraction" HeaderText="Wood Extraction(cmt)" SortExpression="WoodExtraction" ReadOnly="true" />
                                        <asp:BoundField DataField="PolessmallwoodTypequality" HeaderText="Poles/Small Wood Type/ Quality" SortExpression="PolessmallwoodTypequality" ReadOnly="true" />
                                        <asp:BoundField DataField="PolessmallwoodExtraction" HeaderText="Poles/Small Wood Extraction (cmt)" SortExpression="PolessmallwoodExtraction" ReadOnly="true" />
                                        <asp:BoundField DataField="Totalextraction" HeaderText="Total Extraction(cmt)" SortExpression="Totalextraction" ReadOnly="true" />
                                        <asp:BoundField DataField="TotalExtractionUnAuthroized" HeaderText="Total Extraction from Unauthorized Means (if any)" SortExpression="Totalextractionfromunauthorizedmeans" ReadOnly="true" />
                                        <asp:BoundField DataField="TotalextractionToF" HeaderText="Total Extraction from ToF (cmt)" SortExpression="TotalextractionfromToF" ReadOnly="true" />
                                        <asp:BoundField DataField="CompareRosterNorm" HeaderText="Compared with The Roster and Norm" SortExpression="Comparedwiththerosterandnorm" ReadOnly="true" />
                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>

                                                <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="Edit" runat="server"
                                                    CommandArgument='<%#Eval("TimberExtractionId") %>' />
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
            <%--  <div id="DeleteModal" class="modal fade" role='dialog'>
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" onclick="closeDeletepopup()" aria-hidden="true">&times;</button>
                            
                        </div>
                        <div class="modal-body">
                            <p>Do You Really Want to Delete This ?</p>

                        </div>
                        <div class="modal-footer">
                            
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


    <script type="text/javascript">
       <%-- function Search_Gridview(strKey) {
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

     <%--   function Search_function(strKey) {
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
                window.location = "TimberExtraction.aspx";
            });
        });

        $(document).ready(function () {
            $('#successModal').on('hidden.bs.modal', function () {
                // Redirect to the desired location after the modal is closed
                window.location = "TimberExtraction.aspx";
            });
        });



    </script>


</asp:Content>
