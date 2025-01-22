<%@ Page Title="" Language="C#" MasterPageFile="~/AdminVanUser.Master" AutoEventWireup="true" CodeBehind="getRoles.aspx.cs" Inherits="vansystem.getRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="FES">
    <meta name="keyword" content="">
    <link rel="shortcut icon" href="/vali/img/favicon.png" />
	<title>Van - System Users</title>
	<link rel="stylesheet" type="text/css" href="/vali/css/main.css">
	<link rel="stylesheet" type="text/css" href="/vali/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/vali/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/vali/css/font-awesome-custom.css">
	<link rel="stylesheet" type="text/css" href="/vali/css/custom.css">
	<link rel="stylesheet" type="text/css" href="/global/css/ol4.css">
	<script type="text/javascript" src="/vali/js/jquery-3.2.1.min.js"></script>
 
 
	<style>     th {        background:#51c551!important;        color:white!important;        position: sticky!important;        top: 0;        box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);    }    th, td {        padding: 0.25rem;    }</style>
<script type="text/javascript">
    function showDuplicateRoleMessage(rowIndex) {
        var grid = document.getElementById('<%= GVgetroles.ClientID %>');
    var row = grid.rows[rowIndex + 1]; // Adjusting for header row
    var roleNameCell = row.cells[1]; // Adjust column index as necessary

    // Remove existing message if any
    var existingMessage = roleNameCell.querySelector('.duplicate-message');
    if (existingMessage) {
        existingMessage.remove();
    }

    // Create and insert the duplicate role message
    var message = document.createElement('div');
    message.className = 'duplicate-message';
    message.innerHTML = 'Role name already exists.';
    roleNameCell.insertBefore(message, roleNameCell.firstChild);
}

function showEmptyDescriptionMessage(rowIndex) {
        var grid = document.getElementById('<%= GVgetroles.ClientID %>');
        var row = grid.rows[rowIndex + 1]; // Adjusting for header row
        var descriptionCell = row.cells[2]; // Adjust column index as necessary

        // Remove existing message if any
        var existingMessage = descriptionCell.querySelector('.empty-description-message');
        if (existingMessage) {
            existingMessage.remove();
        }

        // Create and insert the empty description message
        var message = document.createElement('div');
        message.className = 'empty-description-message';
        message.innerHTML = 'Description cannot be empty.';
        descriptionCell.insertBefore(message, descriptionCell.firstChild);
    }

</script>



<style>
.duplicate-message {
    display: inline-block;
    margin-top: 5px;
    color: red;
    font-size: 0.9em;
}

.empty-description-message {
    display: inline-block;
    margin-top: 5px;
    color: red;
    font-size: 0.9em;
}
</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
 
    <div class="app-content">
	<div class="row">
		<div class="col-md-12 col-sm-12">
			<div class="tile">
								<div class="pull-right">
					<a href="getNewrole.aspx" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i> Add Roles</a>
				</div>
								<h3 class="tile-title">System Roles</h3>
				 PageSize:
                                <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                    <asp:ListItem Text="10" Value="10" />
                                    <asp:ListItem Text="25" Value="25" />
                                    <asp:ListItem Text="50" Value="50" />
                                </asp:DropDownList>
                        
				<div class="tile-body">
					
					<div class="table-responsive">
						
						<table class="table table-dark" id="roles">
							
						<asp:GridView ID="GVgetroles" runat="server" AutoGenerateColumns="false" GridLines="none" frame="void"
                            rules="rows"  cellpadding="4" CellSpacing="4" Width="1380" DataKeyNames="RoleId" OnRowEditing="GVgetroles_RowEditing" OnRowUpdating="GVgetroles_RowUpdating" OnRowCancelingEdit="GVgetroles_RowCancelingEdit" OnPageIndexChanging="GVgetroles_PageIndexChanging" AllowPaging="true" PageSize="10" >
							<RowStyle backcolor="White"  BorderColor="ControlLight"/>
							<HeaderStyle bordercolor="ControlLight"/>
							<PagerSettings  Mode="NumericFirstLast" FirstPageText="First"   PageButtonCount="10"  LastPageText="Last" />
							<Columns>
								<asp:BoundField ItemStyle-Width="150px" DataField="RowNumber" HeaderText="Role Id" ReadOnly="True" >
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
								<%--<asp:BoundField ItemStyle-Width="150px" DataField="RoleName" HeaderText="Role Name">
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
								<asp:BoundField ItemStyle-Width="150px" DataField="Description" HeaderText="Description">
                    <ItemStyle Width="150px" />
                    </asp:BoundField>--%>

							<asp:TemplateField HeaderText="Role Name">
    <EditItemTemplate>
        <asp:TextBox ID="txtRoleName" runat="server" Text='<%# Bind("RoleName") %>' 
          />
    </EditItemTemplate>
    <ItemTemplate>
        <asp:Label ID="lblRoleName" runat="server" Text='<%# Bind("RoleName") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

                                        <asp:TemplateField HeaderText="Description">
                                            <ItemTemplate>
                                                <%# Eval("Description") %>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDescription" runat="server" Text='<%# Bind("Description") %>' />
                                            </EditItemTemplate>
                                        </asp:TemplateField>
	    			
						<asp:TemplateField HeaderText="Action" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                               <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="Edit" runat="server" />
                                            </ItemTemplate>
							<EditItemTemplate>
                               <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" Text="Update" CommandName="Update" />
                               <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger" Text="Cancel" CommandName="cancel" />
                                            </EditItemTemplate>
									</asp:TemplateField>
							</Columns>

						</asp:GridView>

						</table>
					
						
					</div>
						
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
	
	<script src="/vali/js/plugins/sweetalert.min.js"></script>
	<script src="/vali/js/plugins/jquery.dataTables.min.js"></script>
	<script src="/vali/js/users.js"></script>
</asp:Content>
