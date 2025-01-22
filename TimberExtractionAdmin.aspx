<%@ Page Title="" Language="C#" MasterPageFile="~/AdminVanUser.Master" AutoEventWireup="true" CodeBehind="TimberExtractionAdmin.aspx.cs" Inherits="vansystem.TimberExtractionAdmin" %>
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
            margin-top: 14px;
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
    </style>
    <style>
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



    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updatepanel1">
        <ContentTemplate>
            <div class="app-content">
                <div class="row">
                    <div class="col-md-4 col-sm-12">
                        <div class="tile" style="margin-left: 50px; overflow-y: scroll; max-height: 500px;">
                            <h3 class="tile-title">Add New Timber Extraction Record</h3>
                            <div class="scrollbar tile-body" style="max-height: 100%; overflow-y: auto;">
                                <div class="col-md-9 col-sm-12">

                                    <div class="form-group">
                                        <asp:Label ID="lblYear" runat="server" Text="Reporting Year"></asp:Label>
                                        <asp:TextBox ID="txtYear" runat="server" CssClass="form-control" placeholder="Reporting Year" ValidationGroup="LoginFrame" oninput="NumberCheck(this);"></asp:TextBox>
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
                                    <div class="form-group">
                                        <asp:Button ID="btnAdd" runat="server" ValidationGroup="LoginFrame" OnClick="btnAdd_Click" Text="Add" CssClass="btn btn-success" />
                                    </div>

                                </div>
                                 <asp:Label ID="lblMsg" runat="server"></asp:Label>
                            </div>
                            <!--div class="tile-footer"><a class="btn btn-primary" href="#">Link</a></div-->
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-12">
                        <div class="tile" style="overflow-y: scroll; max-height: 500px;">
                            <h3 class="tile-title">Timber Extraction Records</h3>
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

                                <asp:GridView ID="gvActivity" runat="server" AlternatingRowStyle-CssClass="infoarea"  AutoGenerateColumns="false" DataKeyNames="TimberExtractionId"  AllowPaging="true"  OnPageIndexChanging="gvActivity_PageIndexChanging" OnRowCommand="gvActivity_RowCommand" OnRowDeleting="gvActivity_RowDeleting" PageSize="10">

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
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnDelete" ForeColor="Red" Font-Size="X-Large" runat="server" Text="<i class='nav-icon fa fa-trash-o'></i>" CommandName="delete" CommandArgument='<%#Eval("TimberExtractionId") %>'></asp:LinkButton>
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
            <div id="DeleteModal" class="modal fade" role='dialog'>
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" onclick="closeDeletepopup()" aria-hidden="true">&times;</button>
                            <%--<h4 class="modal-title">Delete </h4>--%>
                        </div>
                        <div class="modal-body">
                            <p>Do You Really Want to Delete This ?</p>

                        </div>
                        <div class="modal-footer">
                            <%--<button type="button" class="btn btn-secondary" onclick="closeDeletepopup()">Cancel</button>--%>
                            <asp:Button ID="btnCancel" runat="server" Text="Cancle" class="btn btn-secondary" OnClick="btnCancel_Click" />
                            <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete" OnClick="btnDelete_Click" />
                        </div>

                    </div>
                </div>
            </div>
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
                    Record added successfully.
                </div>
                <div class="modal-footer">
                    <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">OK</button>--%>
                     <asp:Button ID="Button1" class="btn btn-success btn-block" runat="server" Text="Ok" OnClientClick="closepopup1" />
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('#successModal').on('hidden.bs.modal', function () {
                // Redirect to the desired location after the modal is closed
                window.location = "TimberExtractionAdmin.aspx";
            });
        });



    </script>
</asp:Content>
