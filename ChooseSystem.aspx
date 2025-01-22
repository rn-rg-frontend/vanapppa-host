<%@ Page Title="Van - Choose Type" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ChooseSystem.aspx.cs" Inherits="vansystem.ChooseSystem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="FES">
<meta name="keyword" content="">
<link rel="shortcut icon" href="/vali/img/favicon.png" />
<link rel="stylesheet" type="text/css" href="/vali/css/main.css">
<link rel="stylesheet" type="text/css" href="/vali/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/vali/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/vali/css/font-awesome-custom.css">
<link rel="stylesheet" type="text/css" href="/vali/css/custom.css">
<link rel="stylesheet" type="text/css" href="/global/css/ol4.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
<script type="text/javascript" src="/vali/js/jquery-3.2.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


    <div class="app-content">
    <div class="row">
        
        <div class="tile" style="width:100%!important">
    <h3 class="tile-title"></h3>
    <div class="tile-body">
        <div class="col-sm-6 col-md-6 col-lg-6">
            <asp:Button ID="btnNwp" runat="server" Text="NWPC" class="btn btn-primary btn-lg btn-block" Width="100%" OnClick="btnNwp_Click" />
        </div>
        <div class="col-sm-6 col-md-6 col-lg-6">
            <asp:Button ID="btnPA" runat="server" Text="PA Management" class="btn btn-primary btn-lg btn-block" Width="100%" OnClick="btnPA_Click" />
        </div>
           </div> </div>
      </div>
        </div>
</asp:Content>
