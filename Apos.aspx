<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="Apos.aspx.cs" Inherits="vansystem.Apos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">
   <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <script src="https://cdn.datatables.net/fixedheader/3.1.7/js/dataTables.fixedHeader.min.js"></script>
<%--    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>--%>
<%--    <script src="https://cdn.datatables.net/2.0.2/js/dataTables.js"></script>--%>
     <link rel="stylesheet" href="https://cdn.datatables.net/fixedheader/3.1.7/css/fixedHeader.dataTables.min.css">
<%--   <link rel="stylesheet" href="https://cdn.datatables.net/2.0.2/css/dataTables.dataTables.css" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="  margin-left:75px; margin-top:100px; margin-bottom:80px;margin-right:30px;  ">
        
       
         <p style="font-size:20px;font-weight:bolder;margin-left:15px; margin-top:35px">Annual Plan of Operation Form Records</p>
          
        <div class="container"  >
             <div style="display: flex; flex-direction: row; align-items: end; justify-content: flex-end;">
                
                   <asp:Button ID="Button2" runat="server" Text="Add New Form"  OnClick="btn4_Click" style="margin:1%; background-color: #337ab7; color:white; font-weight:500; border: 0; padding:0.7%;" />

</div>
    <style>
    th{
      padding: 5%;
      background-color: #5cb85c;
      color: white;
    }
    .bbb{
      padding: 3%;
      color: white;
      background-color:  #0155b0;
      border: 0;
      text-align: center;
    }
    body{
        /*overflow:hidden;*/
    }
        .sweet-alert button.cancel {
        background-color: #dc3545 !important;
        }
  </style>
            <asp:HiddenField ID="Err" runat="server" />
            
<asp:HiddenField ID="Mes" runat="server" />
            <asp:TextBox ID="TextBox1" runat="server"  style="display:none;"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"  style="display:none;"></asp:TextBox>
        <asp:Repeater ID="RepeatInformation" runat="server">  
            <HeaderTemplate>  
               <table class="table table-bordered table-striped" id="myTable">
                <thead>
                    <tr >
                <th style="text-align: center;">Sr.No</th>
                <th style="text-align: center;">Form Id</th>        
                <th style="text-align: center;">Date of Receipt</th>
                <th style="text-align: center;">Date of Approval of EC State/UT</th>
                <th style="text-align: center;">Date of Approval of the Steering Committee</th>
                <th style="text-align: center;">Total Amount/Outlay</th>
                <th style="text-align: center;">Actions</th>
                        <th style="text-align: center;">Created Date</th>
                </tr>
                </thead>
                
                    <tbody>
            </HeaderTemplate> 
            
            <ItemTemplate  >  
                <tr>
                    <td><asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                  <td style="text-align: center;"><%#DataBinder.Eval(Container,"DataItem.id")%></td> 
  <td style="text-align: center;"><%#DataBinder.Eval(Container,"DataItem.dor")%></td>
  <td style="text-align: center;"><%#DataBinder.Eval(Container,"DataItem.doa_ec")%></td>
  <td style="text-align: center;"><%#DataBinder.Eval(Container,"DataItem.doa_sc")%></td>
  <td style="text-align: center;"><%#DataBinder.Eval(Container,"DataItem.tao")%></td>

  <td>
    <div style="display:flex; flex-direction:column; ">
      <asp:LinkButton ID="LinkButton1" runat="server" style="margin:3%;" CommandArgument='<%#DataBinder.Eval(Container,"DataItem.id")%>' class="bbb" OnClick="btn1_Click">Edit</asp:LinkButton>
      <asp:LinkButton ID="LinkButton2" runat="server" style="margin:2%;" CommandArgument='<%#DataBinder.Eval(Container,"DataItem.id")%>' class="bbb" OnClick="btn2_Click">Download </asp:LinkButton>
      <asp:LinkButton ID="LinkButton3" runat="server" style="margin:3%;" CommandArgument='<%#DataBinder.Eval(Container,"DataItem.id")%>' class="bbb" OnClick="btn3_Click" OnClientClick="return confirmDelete1(this)">Delete</asp:LinkButton>
  </div>
</td>
                    <td style="text-align: center;"><%#DataBinder.Eval(Container,"DataItem.dor")%></td>
  </tr>
               
            </ItemTemplate>  
                  
            <FooterTemplate>  
                  </tbody>
                 </table>
            </FooterTemplate>  
        </asp:Repeater>  
          
    </div>  
         <%--<script>
             $(document).ready(function () {
                 $("#myInput").on("keyup", function () {
                     var value = $(this).val().toLowerCase();
                     $("#myTable tr").filter(function () {
                         $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                     });
                 });
             });
         </script>--%>
         <script>
             $('#myTable thead th').eq(3).attr('width', '30%');
             let table = new DataTable('#myTable', {
                 scrollCollapse: true,
                 scrollY: '50vh',
                 
             });
            
             
         </script>
         <script>
             if (document.getElementById('<%=TextBox1.ClientID%>').value == "Deleted Successfully") {
                 swal({
                     text: 'Entry deleted successfully.',
                     icon: 'success',
                     showCancelButton: true,
                     buttons: {
                         confirm: 'OK'
                     }
                 }).then(function (result) {
                     if (result) {
                         window.location.href = '/Apos.aspx';
                     }
                 });
             }
             if (document.getElementById('<%=TextBox1.ClientID%>').value == "Record Created Successfully") {
                 swal({
                     text: 'Entry Created Successfully.',
                     icon: 'success',
                     showCancelButton: true,
                     buttons: {
                         confirm: 'OK'
                     }
                 }).then(function (result) {
                     if (result) {
                         window.location.href = '/Apos.aspx';
                     }
                 });
             }
             if (document.getElementById('<%=TextBox1.ClientID%>').value == "Record Edited Successfully") {
                 swal({
                     text: 'Entry Updated Successfully.',
                     icon: 'success',
                     showCancelButton: true,
                     buttons: {
                         confirm: 'OK'
                     }
                 }).then(function (result) {
                     if (result) {
                         window.location.href = '/Apos.aspx';
                     }
                 });
             }
             if (document.getElementById('<%=TextBox2.ClientID%>').value != "") {
                 swal({

                     text: 'Entry deleted successfully!',
                     icon: 'success',
                     showCancelButton: true,
                     buttons: {
                         confirm: 'OK'
                     }
                 }).then(function (result) {
                     if (result) {
                         window.location.href = '/Apos.aspx';
                     }
                 });
                 
                 }
             

         </script>
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

         
    
         </div>
    
</asp:Content>






  
    
      
         
  



