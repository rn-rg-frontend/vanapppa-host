﻿<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="getUsers.aspx.cs" Inherits="vansystem.getUsers" %>
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
 <style>
       
        </style>
 
	<style>     th {        background:#51c551!important;        color:white!important;        position: sticky!important;        top: 0;        box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);    }    th, td {        padding: 0.25rem;    }</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	 <%--<div class="alert alert-dismissible alert-success page-alert">
        <asp:Label ID="successLabel" runat="server" Text=""></asp:Label>
        </div>--%>
	<div class="app-content">
	<div class="row">
		<div class="col-md-12 col-sm-12">
			<div class="tile">
								<div class="pull-right">
									<a href="getNewUser" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i> Add User</a>
					<%--<a href="/VanIt/getNewUser" class="btn btn-xs btn-primary"><i class="fa fa-plus-circle"></i> Add User</a>--%>
				</div>
								<h3 class="tile-title">System Users</h3>
				<div class="tile-body">
					
					<div class="table-responsive">
						 <div style="margin-left: 1400px;">
                                PageSize:
                                <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" Style="margin-top: auto; background: rgb(52, 52, 122); color: rgb(247, 251, 252);">
                                    <asp:ListItem Text="10" Value="10" />
                                    <asp:ListItem Text="25" Value="25" />
                                    <asp:ListItem Text="50" Value="50" />
                                </asp:DropDownList>
                            </div>
						<table class="table table-dark" id="users">
							
						<asp:GridView ID="GVgetuser" runat="server" AutoGenerateColumns="false" GridLines="none" frame="void" OnRowEditing="GVgetuser_RowEditing" DataKeyNames="uid" OnPageIndexChanging="GVgetuser_PageIndexChanging" AllowPaging="true" PageSize="10"
                            rules="rows"  cellpadding="4" CellSpacing="4" width=1500>
							<RowStyle backcolor="White"  BorderColor="ControlLight"/>
							<HeaderStyle bordercolor="ControlLight"/>
							<PagerSettings  Mode="NumericFirstLast" FirstPageText="First"   PageButtonCount="10"  LastPageText="Last" />
							<Columns>
				<asp:BoundField ItemStyle-Width="150px" DataField="name" HeaderText="Name" ReadOnly="True" >
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
								<asp:BoundField ItemStyle-Width="150px" DataField="user_id" HeaderText="User Name" ReadOnly="True" >
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
								
								<asp:BoundField ItemStyle-Width="150px" DataField="mob_number" HeaderText="Mobile" ReadOnly="True" >
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
								<asp:BoundField ItemStyle-Width="150px" DataField="email" HeaderText="Email" ReadOnly="True" >
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
								<asp:BoundField ItemStyle-Width="150px" DataField="designation" HeaderText="Role" ReadOnly="True" >
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
								<asp:TemplateField HeaderText="Action" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                               <asp:Button ID="btnEdit" Text="Edit" CssClass="btn btn-primary" CommandName="Edit" runat="server" />
                                            </ItemTemplate>
									</asp:TemplateField>
							</Columns>

						</asp:GridView>

						</table>
					
						
					</div>
						
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
	
	<script src="/vali/js/plugins/sweetalert.min.js"></script>
	<script src="/vali/js/plugins/jquery.dataTables.min.js"></script>
	<script src="/vali/js/users.js"></script>
</asp:Content>
