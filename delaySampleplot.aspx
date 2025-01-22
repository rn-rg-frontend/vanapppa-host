<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="delaySampleplot.aspx.cs" Inherits="vansystem.delaySampleplot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="app-content pd10">
	<div class="col-md-12">
        <h3 class="pull-left">Grid Based Sampling Technique</h3>
		
	</div>
	<div class="clearfix"></div>
	<div style="padding: 15px 0;">
					<div class="col-md-12 col-sm-12">
				<div class="tile">
    <div class="alert alert-danger">
						<h6>Division,Range,Block,Compartment,plot boundaries are not uploaded. Please upload them before verification.</h6> 
						<br>
						<h6>You will be redirected to Data Upload -&gt; Forest Admin Boundaries in <span id="secCounter" class="blink"><span id="seconds">10</span> </span>seconds. <a href="/ForestAdminBoundaries.aspx">Redirect now</a></h6>
					</div>
						</div>
			</div>
			</div>
</div>
	<script>
        timeLeft = 10;

        function countdown() {
            timeLeft--;
            document.getElementById("seconds").innerHTML = String(timeLeft);
            if (timeLeft > 0) {
                setTimeout(countdown, 1000);
            }
            else {
                window.location.href = "/ForestAdminBoundaries.aspx";
            }
        };

        setTimeout(countdown, 1000);
       
    </script>
</asp:Content>
