<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="CoupeControl.aspx.cs" Inherits="vansystem.CoupeControlaspx" %>

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
            margin-top: -0.25%;
        }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: -1rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            font-weight: bold;
            white-space: nowrap;
            text-align: center;
            z-index: 10;
        }




        td, th {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
            font-size: 15px;
        }

        body {
            overflow: hidden;
        }

        .coupe-body {
            overflow: hidden;
        }

        @media (min-width: 2000px) {
            .coupe-body {
                overflow: hidden;
            }
        }

        @media (max-width: 990px) {
            .coupe-body {
                overflow: scroll;
                max-height: 600px;
            }
        }


        /*.labels tr td {
            background-color: #2cc16a;
            font-weight: bold;
            color: #fff;
        }

        .label tr td label {
            display: block;
        }


        [data-toggle="toggle"] {
            display: none;
        }*/

        /* a {
            color: white;
            text-decoration: none;
        }


*/
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

        .coupe-control {
            border-bottom: 2px solid #ddd;
            padding-bottom: 8px;
        }

        #stickyHeader {
            position: sticky;
            top: 0%;
        }


        /*  th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: 0%;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
        }*/

        th, td {
            padding: 0.75rem;
        }

        .tilee {
            height: 87vh;
        }

        .box-content .box-height {
            height: 65vh;
        }

        body {
            font-family: "GillSans", sans-serif !important;
            font-size: 16px !important;
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

            .mobile-view {
                height: 60vh !important;
            }
        }

        .sticky-header {
            background-color: #5cb85c;
            color: white !important;
            position: sticky;
            top: -13px;
            z-index: 1;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
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
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>


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
        function closepopup1() {
            window.top.location.reload();
            $("#successUpdaateModal").modal('hide');
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
                        <div style="height: 67vh;">
                            <h3 class="tile-title">Coupe Control Form</h3>
                            <div class=" tile-body" style="max-height: 100%;">
                                <div class="col-md-12 col-sm-12">

                                    <div class="form-group">
                                        <asp:Label ID="lblprescription" runat="server" Text="Working Circle-Periodic Block- Prescription in brief"></asp:Label>
                                        <asp:TextBox ID="txtprescription" runat="server" CssClass="form-control" placeholder="Prescription in brief" ValidationGroup="LoginFrame" oninput="SplCharCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Prescription in brief" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtprescription"></asp:RequiredFieldValidator>
                                    </div>


                                    <div class="form-group">
                                        <asp:Label ID="lblworkingplanpara" runat="server" Text="Working Circle-Periodic Block- Working Plan Para"></asp:Label>
                                        <asp:TextBox ID="txtworkingplanpara" runat="server" CssClass="form-control" placeholder="Working Plan Para" ValidationGroup="LoginFrame" oninput="SplCharCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Working Plan Para" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtworkingplanpara"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label ID="lblyeardue" runat="server" Text="Felling-Series- Cutting – Section -  Year due (YYYY)
"></asp:Label>
                                        <asp:TextBox ID="txtyeardue" runat="server" CssClass="form-control" placeholder="Year due (YYYY)" ValidationGroup="LoginFrame" oninput="YearCheck(this)"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Year due (YYYY)" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtyeardue"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblyear" runat="server" Text="Localities prescribed; Localities suggested – Year (YYYY)"></asp:Label>
                                        <asp:TextBox ID="txtyear" runat="server" CssClass="form-control" placeholder="Year (YYYY)" ValidationGroup="LoginFrame" oninput="YearCheck(this)"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Year (YYYY)" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtyear"></asp:RequiredFieldValidator>
                                    </div>


                                    <div class="form-group">
                                        <asp:Label ID="lblBlock" runat="server" Text="Localities prescribed; Localities suggested – Block/ Compartment"></asp:Label>
                                        <asp:TextBox ID="txtBlock" runat="server" CssClass="form-control" placeholder="Block/ Compartment" ValidationGroup="LoginFrame" oninput="SplCharCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage=" Enter Block/ Compartment" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtBlock"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label ID="lblarea" runat="server" Text="Localities prescribed; Localities suggested – Area in hectare"></asp:Label>
                                        <asp:TextBox ID="txtarea" runat="server" CssClass="form-control" placeholder="Area in hectare" ValidationGroup="LoginFrame" oninput="DecimalCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Area in hectare" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtarea"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label ID="lblvolume" runat="server" Text="Localities prescribed; Localities suggested – Volume in cubic meter"></asp:Label>
                                        <asp:TextBox ID="txtvolume" runat="server" CssClass="form-control" placeholder="Volume in cubic meter" ValidationGroup="LoginFrame" oninput="DecimalCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Volume in cubic meter" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtvolume"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblcoupeareainha" runat="server" Text="Coupe No. Excess (+) or Deficit (-) – Area in hectare"></asp:Label>
                                        <asp:TextBox ID="txtcoupeareainha" runat="server" CssClass="form-control" placeholder="Excess (+) or Deficit (-) Area in hectare" ValidationGroup="LoginFrame" oninput="DecimalCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Area in hectare" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtcoupeareainha"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label ID="lblvolumeincubicm" runat="server" Text="Coupe No. Excess (+) or Deficit (-) – Volume in cubic meter"></asp:Label>
                                        <asp:TextBox ID="txtvolumeincubicm" runat="server" CssClass="form-control" placeholder="Excess (+) or Deficit (-) Volume in cubic meter" ValidationGroup="LoginFrame" oninput="DecimalCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Volume in cubic meter" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtvolumeincubicm"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label ID="lblpage" runat="server" Text="Coupe Control Form - Page"></asp:Label>
                                        <asp:TextBox ID="txtpage" runat="server" CssClass="form-control" placeholder="Coupe Control Form - Page" ValidationGroup="LoginFrame" oninput="SplCharCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Coupe Control Form - Page" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtpage"></asp:RequiredFieldValidator>
                                    </div>


                                    <div class="form-group">
                                        <asp:Label ID="lblremarks" runat="server" Text="Coupe Control Form – Remarks & Sanction"></asp:Label>
                                        <asp:TextBox ID="txtremarks" runat="server" CssClass="form-control" placeholder="Remarks & Sanction" ValidationGroup="LoginFrame" oninput="SplCharCheck(this);"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" CssClass="text-danger" ErrorMessage="Enter Remarks & Sanction" SetFocusOnError="true" Display="Dynamic" ValidationGroup="LoginFrame" ControlToValidate="txtvolume"></asp:RequiredFieldValidator>
                                    </div>



                                    <div class="form-group pb-5">
                                        <asp:Button ID="btnAdd" runat="server" ValidationGroup="LoginFrame" OnClick="btnAdd_Click" Text="Add" CssClass="btn btn-success" />

                                        <asp:Button ID="btnupdate" runat="server" Text="Update" class="btn btn-success" OnClick="btnUpdate_click" />

                                        <asp:Button ID="btncancelupdate" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btnUpdateCancel_click" />
                                    </div>

                                </div>
                                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                            </div>
                            <!--div class="tile-footer"><a class="btn btn-primary" href="#">Link</a></div-->
                        </div>
                    </div>

                    <div class="col-md-8 col-sm-12 m-coupe">

                        <div class="tile tilee">

                            <div class="d-md-flex justify-content-between align-items-center coupe-control text-center" id="stickyHeader">
                                <div>
                                    <h3>Coupe Control Records</h3>
                                </div>
                                <div class=" row tile-body d-dm-flex justify-content-center align-items-end ">


                                    <div>
                                        <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No records found.</asp:Label>
                                    </div>

                                    &nbsp
                                    <div class="d-flex justify-content-center align-items-center pl-2">
                                        Search:
                                      <%--<asp:TextBox ID="txtSearch1" runat="server" Font-Size="20px" onkeyup="Search_Gridview(this)" Style="font-size: 16px; background-color: #004990; color: white"></asp:TextBox>--%>
                                        <asp:TextBox ID="txtSearch1" Style="background-color: #004990; height: 30px; color: white; border-radius: 3px;" runat="server" Font-Size="20px" onkeydown="return Search_Gridview(event); adjustGridViewPosition();" onkeyup="Search_function(this); adjustGridViewPosition();"></asp:TextBox>
                                    </div>
                                    &nbsp &nbsp
                                  <div>
                                      <asp:Button ID="btnExport" Style="height: 30px;" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />
                                  </div>
                                    <div class="d-md-flex justify-content-center align-items-center pl-2" style="padding-top: 6px; padding-right: 15px;">
                                        Show
                                        <div class="pl-2 pr-2">
                                            <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged"
                                                Style="background-color: #004990; color: white; width: 60px; border-radius: 3px; height: 30px;">
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

                            <div class="box-content mobile-view " style="overflow: scroll; height: 70vh; margin: 1%">
                                <asp:GridView runat="server" AlternatingRowStyle-CssClass="infoarea" ID="gvcoupe" AutoGenerateColumns="false" DataKeyNames="CoupeControlId" AllowPaging="true" OnPageIndexChanging="gvcoupe_PageIndexChanging" OnRowCommand="gvcoupe_RowCommand" OnRowDeleting="gvcoupe_RowDeleting" PageSize="10" ShowHeaderWhenEmpty="true" OnRowEditing="gvcoupe_RowEditing" ShowHeader="true" CssClass="table ">
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="5" LastPageText="Last" />
                                    <Columns>

                                        <%-- <asp:BoundField HeaderText="Sr.No" DataField="TimberExtractionId" ItemStyle-Width="200%" />--%>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="prescription_in_brief" HeaderText="Prescription in brief" SortExpression="working_Plan_Para" ReadOnly="true" />

                                        <asp:BoundField DataField="working_Plan_Para" HeaderText="Working Plan Para" ReadOnly="true" SortExpression="working_Plan_Para" />

                                        <asp:BoundField DataField="year_due" HeaderText="Year due (YYYY)" ReadOnly="true" SortExpression="year_due" />

                                        <asp:BoundField DataField="year" HeaderText="Year (YYYY)" SortExpression="year" ReadOnly="true" />

                                        <asp:BoundField DataField="block_or_compartment" HeaderText="Block/ Compt"
                                            SortExpression="block_or_compartment" ReadOnly="true" />
                                        <asp:BoundField DataField="localities_area_in_hectare" HeaderText="Area in hectare" SortExpression="localities_area_in_hectare" ReadOnly="true" />

                                        <asp:BoundField DataField="localities_volume_in_cubic_meter" HeaderText="Volume in cubic meter" SortExpression="localities_volume_in_cubic_meter" ReadOnly="true" />

                                        <asp:BoundField DataField="coupe_no_area_in_hectare" HeaderText="Area in hectare" SortExpression="coupe_no_area_in_hectare" ReadOnly="true" />

                                        <asp:BoundField DataField="coupe_no_volume_in_cubic_meter" HeaderText="Volume in cubic meter" SortExpression="coupe_no_volume_in_cubic_meter" ReadOnly="true" />

                                        <asp:BoundField DataField="Remarks_and_Sanction" HeaderText="Remarks & Sanction" SortExpression="Remarks_and_Sanction" ReadOnly="true" />


                                        <asp:TemplateField HeaderText="Edit">
                                            <ItemTemplate>
                                                <%-- <asp:LinkButton ID="btnEdit" CssClass="btn btn-primary" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%#Eval("CoupeControlId") %>'></asp:LinkButton>--%>

                                                <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="Edit" runat="server"
                                                    CommandArgument='<%#Eval("CoupeControlId") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%-- <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnDelete" ForeColor="Red" Font-Size="Large" runat="server" Text="<i class='nav-icon fa fa-trash-o'></i>" CommandName="delete" CommandArgument='<%#Eval("CoupeControlId") %>'></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>
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
            <div id="DeleteModal" class="modal fade" role='dialog'>
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" onclick="closeDeletepopup()" aria-hidden="true">&times;</button>

                        </div>
                        <div class="modal-body">
                            <p>Do You Really Want to Delete This ?</p>

                        </div>
                        <div class="modal-footer">
                            <%--<button type="button" class="btn btn-secondary" onclick="closeDeletepopup()">Cancel</button>--%>
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-secondary" OnClick="btnCancel_Click" />
                            <%--<asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete" OnClick="btnDelete_Click" />--%>
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
                &nbsp
&nbsp
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
        function Search_Gridview(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");

            var tblData = document.getElementById("<%=gvcoupe.ClientID %>");
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
            $('#successModal').on('hidden.bs.modal', function () {
                // Redirect to the desired location after the modal is closed
                window.location = "CoupeControl.aspx";
            });
        });

        $(document).ready(function () {
            $('#successUpdaateModal').on('hidden.bs.modal', function () {
                // Redirect to the desired location after the modal is closed
                window.location = "CoupeControl.aspx";
            });
        });


    </script>
    <script type="text/javascript">
        <%-- function Search_function(strKey) {
        var strData = strKey.value.toLowerCase().split(" ");
        var tblData = document.getElementById("<%=gvcoupe.ClientID %>");
        var rowData;
        var found = false;

            for (var i = 1; i < tblData.rows.length; i++) {
                rowData = tblData.rows[i].innerHTML.toLowerCase();
                var styleDisplay = 'none';
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.indexOf(strData[j]) >= 0) {
                        styleDisplay = '';
                        found = true;
                    } else {
                        styleDisplay = 'none';
                        found = false;
                        break;
                    }
                }
                tblData.rows[i].style.display = styleDisplay;
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

            messageElement.style.display = found ? 'none' : 'block';
        }

    window.onload = function () {
        document.getElementById("<%= txtSearch1.ClientID %>").value = "";
        };--%>
        function Search_function(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");
            var tblData = document.getElementById("<%= gvcoupe.ClientID %>");

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
            var tblData = document.getElementById("<%= gvcoupe.ClientID %>");
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
            document.getElementById("<%= txtSearch1.ClientID %>").value = "";
        };

        // Handle the Enter key press to ensure the message persists
        document.getElementById("<%= txtSearch1.ClientID %>").addEventListener('keydown', function (event) {
            if (event.key === 'Enter') {
                event.preventDefault();
                Search_function(this);
            }
        });

    </script>

    <script>        var object = { status: false, ele: null };
        function confirmDelete1(ev) {            if (object.status) {                object.status = false; // Reset status for next confirmation                return true;            }
            swal({                title: "Are you sure you want to delete this entry?",                text: "This entry cannot be recovered and will be deleted permanently.",                type: "warning",                showCancelButton: true,                confirmButtonClass: "btn-danger",                confirmButtonText: "Yes, delete it!",                cancelButtonText: "No, cancel!",                closeOnConfirm: true,            },                function () {                    object.status = true;                    object.ele = ev;                    object.ele.click();                    object.status = false; // Reset status after confirmation is complete                });
            return false;        } </script>


</asp:Content>
