<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="ForestAdminBoundaries.aspx.cs" Inherits="vansystem.forestadminboundaraies_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- SweetAlert CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.min.css">

    <!-- SweetAlert JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

    <style>
        .filewrapdiv {
            margin-bottom: 20px;
            margin-right: 2px;
            margin-left: 2px;

        }
         .data-upload-wrapper {        background-color: #f8f9fa;         padding: 20px;        border-radius: 8px;    }    .btn-light-green {        background-color: #d4edda;         color: #155724;    }
    .col-md-9.col-sm-8 {
    width: 68% !important;
}

    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="app-content">
        <div class="row">
            <div class="col-md-4 col-sm-12">
                <div class="tile">
                    <h3 class="tile-title">How to upload forests admin boundaries?</h3>
                    <div class="tile-body">
                        <p>Upload the forest boundaries in shapefile format for the predefined admin hierarchy. The forest admin hierarchy can be defined to the site administrator and the hierarchy will be displayed here accordingly.</p>
                        <p>In most of the cases, it will be division, range, block, compartment, and plots. Upload the shapefile for each of these before proceeding.</p>
                        <p>
                            Once uploaded, the shapefile needs to be verified. <a href="verifyAdminBoundaries.aspx"><b>Click here to verify</b></a>.
                        </p>
                        <br>
                        <p><b>Shape file format:</b></p>
                        <p>
                            Field 1: id<br />
                            Field 2: name<br />
                            Field 3: geom<br />
                        </p>


                    </div>
                    <!--div class="tile-footer"><a class="btn btn-primary" href="#">Link</a></div-->
                </div>
            </div>
            <div class="col-md-8 col-sm-12" id="uploadshapefile" runat="server">
                <div class="tile">
                    <h3 class="tile-title">Upload Forest Admin Boundaries</h3>
                    <div class="tile-body">
                          <asp:Panel ID="pdiv1" runat="server" CssClass="row data-upload-wrapper active filewrapdiv">
                            <div class="col-sm-1"><span class="badge-custom badge-light">1</span></div>
                             <div class="col-md-9 col-sm-8">
                                    <div class="form-group" ng-class="{'has-error': uploadFAB_1.file_47.$touched && uploadFAB_1.file_47.$error.required , 'has-success': uploadFAB_1.file_47.$valid }">
                                        <label for="exampleSelect1">Upload Division</label>
                                        <asp:FileUpload ID="fldDivision" runat="server" />


                                        <small class="form-text text-muted"  style="color: #fff !important;">Upload a shape file of Division in zip format</small>
                                        
                                    </div>
                                </div>
                            <div class="col-md-2 col-sm-3">
                                    <button id="btndivision" class="btn btn-light" runat="server" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>

                                </div>

                        </asp:Panel>
                        <asp:Panel ID="pdiv2" runat="server" CssClass="row data-upload-wrapper filewrapdiv">
                             <div class="col-sm-1"><span class="badge-custom badge-light">1</span></div>
                               <div class="col-md-9 col-sm-8">
                                   <div class="alert alert-success" role="alert">
                                       <b>Boundaries of following Division(s) are already uploaded.</b><br>
                                       <div class="row">
                                           
                                           <div class="col-md-12">
                                                <asp:Label ID="lbldivision" runat="server" Text=""></asp:Label>

                                           </div>
                                       </div>
                                   </div>
                                  
                               </div>
                            <br />
                            <div class="col-md-2 col-sm-3">
                                <%--    <asp:Button ID="btndelete" runat="server" Text="Delete"  CssClass="btn btn-default btn-light"/>
                                <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal3" data-backdrop="static">Modal with static backdrop</button>--%>
                                 <%--  <asp:FileUpload ID="fldDivisionextra" runat="server" />
                                   <button id="btndivisionextra" class="btn btn-light" runat="server" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>--%>
                                </div>
                        </asp:Panel>

                         <asp:Panel ID="prange1" runat="server" CssClass="row data-upload-wrapper active filewrapdiv">
                            <div class="col-sm-1"><span class="badge-custom badge-light">2</span></div>
                             <div class="col-md-9 col-sm-8">
                                    <div class="form-group" ng-class="{'has-error': uploadFAB_1.file_47.$touched && uploadFAB_1.file_47.$error.required , 'has-success': uploadFAB_1.file_47.$valid }">
                                        <label for="exampleSelect1">Upload Range</label>
                                        <asp:FileUpload ID="fldRange" runat="server" />


                                        <small class="form-text text-muted"  style="color: #fff !important;">Upload a shape file of Range in zip format</small>
                                        
                                    </div>
                                </div>
                            <div class="col-md-2 col-sm-3">
                                    <button id="btnrange" class="btn btn-light" runat="server" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>

                                </div>

                        </asp:Panel>
                        <asp:Panel ID="prange2" runat="server" CssClass="row data-upload-wrapper filewrapdiv">
                             <div class="col-sm-1"><span class="badge-custom badge-light">2</span></div>
                               <div class="col-md-9 col-sm-8">
                                   <div class="alert alert-success" role="alert">
                                       <b>Boundaries of following Range(s) are already uploaded.</b><br>
                                       <div class="row">
                                           
                                           <div class="col-md-12">
                                                <asp:Label ID="lblranges" runat="server" Text=""></asp:Label>

                                           </div>
                                       </div>
                                   </div>
                                  
                               </div>
                            <div class="col-md-2 col-sm-3">
                                   <%--  <asp:FileUpload ID="fldRangeextra" runat="server" />
                                   <button id="btnRangeextra" class="btn btn-light" runat="server" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>--%>
                                </div>
                        </asp:Panel>

                         <asp:Panel ID="rangegray" runat="server" CssClass="row data-upload-wrapper active filewrapdiv" style="filter: grayscale(100%);">
                            <div class="col-sm-1"><span class="badge-custom badge-light">2</span></div>
                             <div class="col-md-9 col-sm-8">
                                    <div class="form-group" ng-class="{'has-error': uploadFAB_1.file_47.$touched && uploadFAB_1.file_47.$error.required , 'has-success': uploadFAB_1.file_47.$valid }">
                                        <label for="exampleSelect1">Upload Range</label>
                                       <%-- <asp:FileUpload ID="FileUpload1" runat="server" />--%>


                                        <small class="form-text text-muted"  style="color: #fff !important;">Upload a shape file of Range in zip format</small>
                                        
                                    </div>
                                </div>
                            <div class="col-md-2 col-sm-3">
                                    <button id="Button10" class="btn btn-light" runat="server" disabled="disabled" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>

                                </div>

                        </asp:Panel>

                        

                         <asp:Panel ID="pblock1" runat="server" CssClass="row data-upload-wrapper active filewrapdiv">
                            <div class="col-sm-1"><span class="badge-custom badge-light">3</span></div>
                             <div class="col-md-9 col-sm-8">
                                    <div class="form-group" ng-class="{'has-error': uploadFAB_1.file_47.$touched && uploadFAB_1.file_47.$error.required , 'has-success': uploadFAB_1.file_47.$valid }">
                                        <label for="exampleSelect1">Upload Block</label>
                                        <asp:FileUpload ID="fldblock" runat="server" />


                                        <small class="form-text text-muted"  style="color: #fff !important;">Upload a shape file of Block in zip format</small>
                                        
                                    </div>
                                </div>
                            <div class="col-md-2 col-sm-3">
                                    <button id="btnblock" class="btn btn-light" runat="server" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>

                                </div>

                        </asp:Panel>
                        <asp:Panel ID="pblock2" runat="server" CssClass="row data-upload-wrapper filewrapdiv">
                             <div class="col-sm-1"><span class="badge-custom badge-light">3</span></div>
                               <div class="col-md-9 col-sm-8">
                                   <div class="alert alert-success" role="alert">
                                       <b>Boundaries of following Block(s) are already uploaded.</b><br>
                                       <div class="row">
                                           
                                           <div class="col-md-12">
                                                <asp:Label ID="lblblock" runat="server" Text=""></asp:Label>

                                           </div>
                                       </div>
                                   </div>
                                  
                               </div>
                            <div class="col-md-2 col-sm-3">
                                  <%-- <asp:FileUpload ID="fldblockextra" runat="server" />
                                   <button id="btnblockextra" class="btn btn-light" runat="server" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>--%>
                                </div>
                        </asp:Panel>

                                <asp:Panel ID="blockgrey" runat="server" CssClass="row data-upload-wrapper active filewrapdiv" style="filter: grayscale(100%);">
                            <div class="col-sm-1"><span class="badge-custom badge-light">3</span></div>
                             <div class="col-md-9 col-sm-8">
                                    <div class="form-group" ng-class="{'has-error': uploadFAB_1.file_47.$touched && uploadFAB_1.file_47.$error.required , 'has-success': uploadFAB_1.file_47.$valid }">
                                        <label for="exampleSelect1">Upload Block</label>
                                        <asp:FileUpload ID="FileUpload2" runat="server" />


                                        <small class="form-text text-muted"  style="color: #fff !important;">Upload a shape file of Block in zip format</small>
                                        
                                    </div>
                                </div>
                            <div class="col-md-2 col-sm-3">
                                    <button id="Button14" class="btn btn-light" runat="server"  disabled="disabled" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>

                                </div>

                        </asp:Panel>
                                <asp:Panel ID="pcomp1" runat="server" CssClass="row data-upload-wrapper active filewrapdiv">
                            <div class="col-sm-1"><span class="badge-custom badge-light">4</span></div>
                             <div class="col-md-9 col-sm-8">
                                    <div class="form-group" ng-class="{'has-error': uploadFAB_1.file_47.$touched && uploadFAB_1.file_47.$error.required , 'has-success': uploadFAB_1.file_47.$valid }">
                                        <label for="exampleSelect1">Upload Compartments</label>
                                        <asp:FileUpload ID="fldcomp" runat="server" />


                                        <small class="form-text text-muted"  style="color: #fff !important;">Upload a shape file of Compartments in zip format</small>
                                        
                                    </div>
                                </div>
                            <div class="col-md-2 col-sm-3">
                                    <button id="btncomp" class="btn btn-light" runat="server" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>

                                </div>

                        </asp:Panel>
                        <asp:Panel ID="pcomp2" runat="server" CssClass="row data-upload-wrapper filewrapdiv">
                             <div class="col-sm-1"><span class="badge-custom badge-light">4</span></div>
                               <div class="col-md-9 col-sm-8">
                                   <div class="alert alert-success" role="alert">
                                       <b>Boundaries of following Compartments(s) are already uploaded.</b><br>
                                       <div class="row">
                                           
                                           <div class="col-md-12">
                                                <asp:Label ID="lblcpmp" runat="server" Text=""></asp:Label>

                                           </div>
                                       </div>
                                   </div>
                                  
                               </div>
                            <div class="col-md-2 col-sm-3">
                                   <asp:FileUpload ID="fldcompextra" runat="server" />
                                   <button id="btncompextra" class="btn btn-light" runat="server" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>
                                </div>
                        </asp:Panel>


                          <asp:Panel ID="compgrey" runat="server" CssClass="row data-upload-wrapper active filewrapdiv" style="filter: grayscale(100%);">
                            <div class="col-sm-1"><span class="badge-custom badge-light">4</span></div>
                             <div class="col-md-9 col-sm-8">
                                    <div class="form-group" ng-class="{'has-error': uploadFAB_1.file_47.$touched && uploadFAB_1.file_47.$error.required , 'has-success': uploadFAB_1.file_47.$valid }">
                                        <label for="exampleSelect1">Upload Compartments</label>
                                   <%--     <asp:FileUpload ID="FileUpload1" runat="server" />--%>


                                        <small class="form-text text-muted"  style="color: #fff !important;">Upload a shape file of Compartments in zip format</small>
                                        
                                    </div>
                                </div>
                            <div class="col-md-2 col-sm-3">
                                    <button id="Button12" class="btn btn-light" runat="server" disabled="disabled" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>

                                </div>

                        </asp:Panel>

                         <div class="row data-upload-wrapper active" style="filter: grayscale(100%); margin-bottom: 20px; margin: 0 2px;" id="Divsampleplot" runat="server">
                            <div class="col-lg-12 d-flex justify-content-center">                                <div class="col-md-9 col-sm-12 d-flex justify-content-center">                                    <asp:Button ID="btnplotsamplot" CssClass="btn btn-light-green" runat="server" Text="Generate Sample Plot" OnClick="Button1_Click" />
                                </div>                            </div>                        </div>                        <br />

                             <asp:Panel ID="pplot1" runat="server" CssClass="row data-upload-wrapper active filewrapdiv">
                            <div class="col-sm-1"><span class="badge-custom badge-light">5</span></div>
                             <div class="col-md-9 col-sm-8">
                                    <div class="form-group" ng-class="{'has-error': uploadFAB_1.file_47.$touched && uploadFAB_1.file_47.$error.required , 'has-success': uploadFAB_1.file_47.$valid }">
                                        <label for="exampleSelect1">Upload Plot</label>
                                        <asp:FileUpload ID="fldplot" runat="server" />


                                        <small class="form-text text-muted"  style="color: #fff !important;">Upload a shape file of Plot in zip format</small>
                                        
                                    </div>
                                </div>
                            <div class="col-md-2 col-sm-3">
                                    <button id="btnplot" class="btn btn-light" runat="server" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>

                                </div>

                        </asp:Panel>

                        <asp:Panel ID="pplot2" runat="server" CssClass="row data-upload-wrapper filewrapdiv">
                             <div class="col-sm-1"><span class="badge-custom badge-light">5</span></div>
                               <div class="col-md-9 col-sm-8">
                                   <div class="alert alert-success" role="alert">
                                       <b>Boundaries of following Plot(s) are already uploaded.</b><br>
                                       <div class="row">
                                           
                                           <div class="col-md-12">
                                                <asp:Label ID="lblplots" runat="server" Text=""></asp:Label>

                                           </div>
                                       </div>
                                   </div>
                                  
                               </div>
                            <div class="col-md-2 col-sm-3">
                                  <%-- <asp:FileUpload ID="fldplotextra" runat="server" />
                                   <button id="btnplotextra" class="btn btn-light" runat="server" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>--%>
                                </div>
                        </asp:Panel>

                          <asp:Panel ID="plotgrey" runat="server" CssClass="row data-upload-wrapper active filewrapdiv" style="filter: grayscale(100%);">
                            <div class="col-sm-1"><span class="badge-custom badge-light">5</span></div>
                             <div class="col-md-9 col-sm-8">
                                    <div class="form-group" ng-class="{'has-error': uploadFAB_1.file_47.$touched && uploadFAB_1.file_47.$error.required , 'has-success': uploadFAB_1.file_47.$valid }">
                                        <label for="exampleSelect1">Upload Plot</label>
                                        <asp:FileUpload ID="FileUpload1" runat="server" />


                                        <small class="form-text text-muted"  style="color: #fff !important;">Upload a shape file of Plot in zip format</small>
                                        
                                    </div>
                                </div>
                            <div class="col-md-2 col-sm-3">
                                    <button id="Button13" class="btn btn-light" runat="server" disabled="disabled" onserverclick="Uploadfile1_ServerClick"><i class="fa fa-fw fa-lg fa-check-circle"></i>Upload</button>

                                </div>

                        </asp:Panel>



                    </div>
                    <!--div class="tile-footer"><a class="btn btn-primary" href="#">Link</a></div-->
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="myModal3" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title">Static Backdrop</h4>
                </div>
                <div class="modal-body">
                    <p>You cannot click outside of this modal to close it.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>


</asp:Content>
