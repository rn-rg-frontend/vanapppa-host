<%@ Page Title="" Language="C#" MasterPageFile="~/Block/Block.Master" AutoEventWireup="true" CodeBehind="Household.aspx.cs" Inherits="vansystem.Block.Household" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        table {
            width: 450px;
            border-collapse: collapse;
            margin: 50px auto;
            margin-left: 1px;
            margin-top: 8px;
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

        .label tr td label {
            display: block;
        }


        [data-toggle="toggle"] {
            display: none;
        }

        .box-content {
            max-height: 50%;
           /* overflow: scroll;*/
        }
        /* body{            overflow-x:hidden;            overflow-y:hidden;        }*/
          h3{            margin-left:80px;        }
    </style>
      <style>
        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top:7vh;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
        }

        th, td {
            padding: 0.75rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updatepanel1">
        <ContentTemplate>
            <div<%-- class="card" style="height: 826px; background-color: #EFEFEF"--%>>
                <div class="container-fluid mt-6">
                    <div style="margin-left: 0%; /*width: 113%;*/ margin-top: 88px;">
                        <h3><b>Household</b></h3>
                        <div class="card-body" style="background-color: rgb(252, 252, 252); margin-left:50px; /*width: 1480px;*/">
                            <div style="margin-left:59%;">
                                Search:
                                     <asp:TextBox ID="txtSearch" runat="server" Font-Size="20px" onkeyup="Search_Gridview(this)"></asp:TextBox>
                                <asp:Button ID="btnExport" runat="server" Text="Export to Excel" OnClick="btnExport_Click" />                              
                                PageSize:
                                <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                                    <asp:ListItem Text="10" Value="10" />
                                    <asp:ListItem Text="25" Value="25" />
                                    <asp:ListItem Text="50" Value="50" />
                                </asp:DropDownList>
                                <hr />

                            </div>

                            <%-- style="overflow-y: scroll; overflow-x: hidden; height: 200px; width: 600px;"--%>
                            <div class="box-content">

                                <asp:GridView ID="gvHousehold" runat="server" AutoGenerateColumns="false" DataKeyNames="id" OnPageIndexChanging="gvHousehold_PageIndexChanging" GridLines="Horizontal" AllowPaging="true" PageSize="10" >
                                  <PagerSettings  Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10"  LastPageText="Last" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                       
                                       <asp:TemplateField HeaderText="Survey ID" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="200%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Surveyor Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyorName" runat="server" Text='<%# Eval("surveyor") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Surveyor Phone No" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSurveyorPhoneNo" runat="server" Text='<%# Eval("phonenumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Surveyor Designation" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldesignation" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Survey Date" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDate_created" runat="server" Text='<%# Eval("Date_created") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Latitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLatitude" runat="server" Text='<%# Eval("latitude") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Longitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLongitude" runat="server" Text='<%# Eval("longitude") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Altitude" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAltitude" runat="server" Text='<%# Eval("altitude") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Accuracy" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAccuracy" runat="server" Text='<%# Eval("accuracy") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText="State" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblState" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                       
                                        <asp:TemplateField HeaderText="Division" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblDivision" runat="server" Text='<%# Eval("division") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Range" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRange" runat="server" Text='<%# Eval("range") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Block" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblBlock" runat="server" Text='<%# Eval("block") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Village" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVillage" runat="server" Text='<%# Eval("village") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name of Panchayat" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblpanchayat" runat="server" Text='<%# Eval("panchayat") %>'></asp:Label>
                                            </ItemTemplate>
                                               
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type of hamlet/village" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblhamlet" runat="server" Text='<%# Eval("typeofvillage") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Name of the respodent" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblrespodent" runat="server" Text='<%# Eval("respodent") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Relation with the head of family" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRelation" runat="server" Text='<%# Eval("relationtohead") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Name of Head of family" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblnameofhead" runat="server" Text='<%# Eval("nameofhead") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Total Family Members" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfamilymembers" runat="server" Text='<%# Eval("familymembers") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type Of Housing" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltypeofhousing" runat="server" Text='<%# Eval("typeofhousing") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>

                                          <asp:TemplateField HeaderText="Ration Card" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblrationcard" runat="server" Text='<%# Eval("rationcard") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Type Of Card" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltypeof_card" runat="server" Text='<%# Eval("typeof_card") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="NREGS Card" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblnregs" runat="server" Text='<%# Eval("nregs") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Livestock Owned by Family" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllivestock" runat="server" Text='<%# Eval("livestock") %>'></asp:Label>
                                            </ItemTemplate>
                                               
                                        </asp:TemplateField>

                                          <asp:TemplateField HeaderText="Type of Livestock" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltypeoflivestock" runat="server" Text='<%# Eval("typeoflivestock") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Breed" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllive_stock_breed" runat="server" Text='<%# Eval("live_stock_breed") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Number of selected livestock" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblnumberoflivestock" runat="server" Text='<%# Eval("numberoflivestock") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Number of surviving offspring" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblnumberofsurviving" runat="server" Text='<%# Eval("numberofsurviving") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Mortality per year" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmortality" runat="server" Text='<%# Eval("mortality") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Livestock Uses" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbluses" runat="server" Text='<%# Eval("uses") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Primary Occupation" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblprimary_occupation" runat="server" Text='<%# Eval("primary_occupation") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Selected Months" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblselected_month" runat="server" Text='<%# TrimTo(Eval("selected_month"),10)%>'></asp:Label>
                                            </ItemTemplate>
                                                
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Average number of days engaged in primary occupation activity in a month" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblnumber_of_days" runat="server" Text='<%# Eval("number_of_days") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Income from that activity ( Yearly)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblincome" runat="server" Text='<%# Eval("income") %>'></asp:Label>
                                            </ItemTemplate>
                                           
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Secondary Occupation" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsecondary_occupation" runat="server" Text='<%# Eval("secondary_occupation") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Select months" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblso_selected_month" runat="server" Text='<%# TrimTo(Eval("so_selected_month"),10)%>'></asp:Label>
                                            </ItemTemplate>
                                             
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Number of days engaged in secondary occupation activity in a month" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblso_number_of_days" runat="server" Text='<%# Eval("so_number_of_days") %>'></asp:Label>
                                            </ItemTemplate>
                                            
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Income from that activity ( Yearly) (SO)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblso_income" runat="server" Text='<%# Eval("so_income") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Any seasonal migration from the household?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblso_seasonal_migration" runat="server" Text='<%# Eval("so_seasonal_migration") %>'></asp:Label>
                                            </ItemTemplate>
                                                
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Number of people migrating" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblnumberofpeoplemigration" runat="server" Text='<%# Eval("numberofpeoplemigration") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="What is the purpose of migration" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblpurposeofmigration" runat="server" Text='<%# Eval("purposeofmigration") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Select months" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblselectedmonthsmigration" runat="server" Text='<%# TrimTo(Eval("selectedmonthsmigration"),10)%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Where do you collect?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblWhere_collect" runat="server" Text='<%# Eval("Where_collect") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="What do you collect?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblWhat_do_you_collect" runat="server" Text='<%# Eval("collect_name") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                      
                                        <asp:TemplateField HeaderText="Quantity (kg) per week" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblquantity" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="No. of weeks in a month" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblweeks" runat="server" Text='<%# Eval("weeks") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="No. of months in a year" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmonths" runat="server" Text='<%# Eval("months") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                        </asp:TemplateField>

                                          <asp:TemplateField HeaderText="Time consumed (Hrs) for collection per day" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltime" runat="server" Text='<%# Eval("time") %>'></asp:Label>
                                            </ItemTemplate>
                                               
                                        </asp:TemplateField>

                                          <asp:TemplateField HeaderText="Distance travelled for collection per trip (Km)" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldistance" runat="server" Text='<%# Eval("distance") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Income earned from selling" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfodder_sold_income" runat="server" Text='<%# Eval("fodder_sold_income") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                        </asp:TemplateField>

                                              <asp:TemplateField HeaderText="Quantity (kg) of fodder sold in a year" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfodder_sold_quantity" runat="server" Text='<%# Eval("fodder_sold_quantity") %>'></asp:Label>
                                            </ItemTemplate>
                                                 
                                        </asp:TemplateField>


                                          <asp:TemplateField HeaderText="Cost of the fodder purchased" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfodder_purchased_cost" runat="server" Text='<%# Eval("fodder_purchased_cost") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Quantity (kg) of fodder purchased in a year" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblfodder_purchased_quantity" runat="server" Text='<%# Eval("fodder_purchased_quantity") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Type of Damage" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblType_of_Damage" runat="server" Text='<%# Eval("Type_of_Damage") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Type of crop" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltypeofcrop" runat="server" Text='<%# Eval("typeofcrop") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Area in acres" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblarea" runat="server" Text='<%# Eval("area") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Damaged amount in kg" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblamountofdamaged" runat="server" Text='<%# Eval("amountofdamaged") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                       <asp:TemplateField HeaderText="Type of Livestocks" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblType_of_Livestocks1" runat="server" Text='<%# Eval("Type_of_Livestocks1") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Number of selected livestock" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblNumber_of_selected_livestock" runat="server" Text='<%# Eval("Number_of_selected_livestock") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Type of property" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltypeofproperty" runat="server" Text='<%# Eval("typeofproperty") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Damaged amount in rupees" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblamountofdamage" runat="server" Text='<%# Eval("amountofdamage") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                         <asp:TemplateField HeaderText="Activity during which incident took place" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblactivityduringincident" runat="server" Text='<%# Eval("activityduringincident") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                          <asp:TemplateField HeaderText="Site of the incident" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsiteoftheincident" runat="server" Text='<%# Eval("siteoftheincident") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Injury or Death ?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblinjuryordeath" runat="server" Text='<%# Eval("injuryordeath") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Type of wild animal" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lbltypeofwildanimals" runat="server" Text='<%# Eval("typeofwildanimals") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Number of wild animals involved" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblhuman_wildlife_number" runat="server" Text='<%# Eval("human_wildlife_number") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Time of Conflict" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblhuman_damage_time" runat="server" Text='<%# Eval("human_damage_time") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Month of conflict" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblmonth" runat="server" Text='<%# Eval("month") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Select months" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSelect_months" runat="server" Text='<%# Eval("month") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Year of Conflict" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblyear" runat="server" Text='<%# Eval("year") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>




                                        <asp:TemplateField HeaderText="Women spend time in the collection of" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwomen_spend_time_in_collection_of" runat="server" Text='<%# Eval("women_spend_time_in_collection_of") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                        </asp:TemplateField>

                                        
                                          <asp:TemplateField HeaderText="Distance Travelled to collect resources" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwomen_distance_travel_for_collection" runat="server" Text='<%# Eval("women_distance_travel_for_collection") %>'></asp:Label>
                                            </ItemTemplate>
                                               
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Time spend in hours" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblwomen_spend_time_in_collection" runat="server" Text='<%# Eval("women_spend_time_in_collection") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                        </asp:TemplateField>

                                       

                                         <asp:TemplateField HeaderText="Laborious work or Hard work be reduced" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblhardwork_be_reduced_in_collection" runat="server" Text='<%# Eval("hardwork_be_reduced_in_collection") %>'></asp:Label>
                                            </ItemTemplate>
                                              
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Is the Forest department consulting communities well before on the Enclosure/Fencing of areas for plantation(s)?" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>
                                                <asp:Label ID="lblforest_department_consulting_community" runat="server" Text='<%# Eval("forest_department_consulting_community") %>'></asp:Label>
                                            </ItemTemplate>
                                             
                                        </asp:TemplateField>
                                    </Columns>

                                </asp:GridView>


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


        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnExport" />
        </Triggers>
       
    </asp:UpdatePanel>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <%-- <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css"
        rel="stylesheet" type="text/css" />--%>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>




    <script type="text/javascript">
        function Search_Gridview(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");

            var tblData = document.getElementById("<%=gvHousehold.ClientID %>");
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

</asp:Content>
