<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="Apo.aspx.cs" Inherits="vansystem.Apo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" style="display: flex; flex-direction: column;">
    <script>
        function validateNumber(textbox) {
            var allowedChars = /^\d*\.?\d{0,1}$/;
            if (!allowedChars.test(textbox.value)) {
                //textbox.value = textbox.value.substring(0, textbox.value.length - 1);
                textbox.value = "";
            }
        }
        

            $(document).ready(function() {
                $(".EnterDate").datepicker({
                    dateFormat: "dd-mm-yy",
               
                    maxDate: "+0M +0D"

                });  
  });
    
    </script>
    <style>
        .tab{
            /*width: 40%;*/
            background-color: white;
            cursor: pointer;
            font-weight:500;
            border: 0.5px solid grey;
            margin: 0.5%;
        }
        .new{
            background-color: rgb(111, 219, 92);
        }
        .fills{
            display: none;
        }
        .fil{
            display: block;
        }
        label{
            font-weight:500;
            margin-top:5%;
            margin-bottom:0;
        }
        .red{
            color: orangered;
        }
        .card-header{
            width: 80%;
            background-color: #c9c8c7;
            
        }

        .card{
            margin-top: 105px;
            margin-left: 65px;
            margin-right: 30px;
            margin-bottom: 40px;
            padding: 1%;
            border: 1px solid grey;
            overflow:scroll;
            height:80vh;
        }

        @media screen and (max-width: 768px) {

            .card {
                margin-left: 30px !important;
            }
        }

        body{
          overflow:hidden;
        }

    </style>

    <div class="card">
        <p style="font-size: 20px; font-weight: bolder">Annual Plan of Operation (APO) Form record</p>
        <hr />
        <div class="col-md-12 d-md-flex" >
            <div class="col-md-6">
                <div class="tab new" style="padding: 2%;" onclick="tabClick(this)" id="1">General Details</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="2">Fund Status with the State?UT along with proposed</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="3">Fund released by State Goverment during the FY</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="4">Financial outlays/Budgetary support under various Schemes</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="5">Status of Compensatory Afforestation</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="6">Balance afforestation status</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="7">Site-specific activities as per Rule 6(a) of CAF Rules, 2016</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="8">Activies as per Rule 5(2) of CAF Rules, 2018</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="9">Activies as per Rule 5(3) of CAF Rules, 2018</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="10">Activies as per Rule 6(a) of CAF Rules, 2018</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="11">Activies as per Rule 6(b) of CAF Rules, 2018</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="12">Mandatory activities - Compensatory Afforestation(CA)/Penal Compensatory Afforestation(PCA)</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="13">Mandatory activities - Catchment Area Treatment Plan</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="14">Mandatory activities - Integrated Wildlife Management Plan(IWMP)</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="15">Mandatory activities - Other Component</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="16">Net Present Value(NPV) & Interest</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="17">Net Present Value(NPV) & Interest: ANR</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="18">Net Present Value(NPV) & Interest: Soil and Moisture Conservation works</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="19">Net Present Value(NPV) & Interet: WildliapoLabelfe Habitat Improvement</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="20">Net Present Value (NPV) & Interest: Fire Management</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="21">Net Present Value(NPV) & Interest: Capacity Building/Awarness activities</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="22">Net Present Value(NPV) & Interest: Frontline Staff Quarters</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="23">Net Present Value(NPV) & Interest: Casual Labours</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="24">Net Present Value(NPV) & Interest: Hiring of Vechicles</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="25">Net Present Value(NPV) & Interest: Other activities</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="26">Net Present Value(NPV) & Interest: Overhead Expenditure</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="27">Details of Financial Outlay For Integrated APOs (2022-2023)</div>
                <div class="tab" style="padding: 2%;" onclick="tabClick(this)" id="28">Details of Financial Outlay For Integrated APOs (2022-2024* expected)</div>
            </div>
            <div class="col-md-6">
                <asp:HiddenField ID="Apoid" runat="server" />
                <div id="1a" class="fills fil" style="padding: 5%;">
                    <p style="font-size: 20px; font-weight: bold">General Details</p>
                    <div style="display: flex; flex-direction: column;">
                        <asp:Label ID="Label1" runat="server" Text="" CssClass="red"></asp:Label>
                        <label for="dor">Date of receipt</label>
                        <asp:TextBox ID="TextBox1" runat="server" onkeydown="return event.keyCode!=13" class="EnterDate"></asp:TextBox>
                        <label for="dor">Date of approval of EC of State/UT</label>
                        <asp:TextBox ID="TextBox2" runat="server" onkeydown="return event.keyCode!=13" class="EnterDate"></asp:TextBox>
                        <label for="dor">Date of approval of the Steering Committee</label>
                        <asp:TextBox ID="TextBox3" runat="server" onkeydown="return event.keyCode!=13" class="EnterDate"></asp:TextBox>
                        <label for="dor">Total Amount/Outlay (Rs. In crores )</label>
                        <asp:TextBox ID="TextBox4" runat="server" type="number" onkeydown="return event.keyCode!=13" onkeypress="validateNumber(this);"></asp:TextBox>
                        <div style="display: flex; flex-direction: row;">
                            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="btn1_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                            <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        </div>

                    </div>

                </div>
                <div id="2a" class="fills" style="padding: 5%;">
                    <p style="font-size: 20px; font-weight: bold">Mandatory Activity</p>
                    <div>
                        <div class="card-header" style="font-weight: 500">CA/PCA/Additional CA</div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">Fund Available with the State/UT</label>
                            <asp:TextBox ID="TextBox5" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Outlay proposed</label>
                            <asp:TextBox ID="TextBox6" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                        <br />
                        <div class="card-header">Catchment Area Treatment Plan</div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">Fund Available with the State/UT</label>
                            <asp:TextBox ID="TextBox7" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Outlay proposed</label>
                            <asp:TextBox ID="TextBox8" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                        <br />
                        <div class="card-header">Integrated Wildlife Management Plan</div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">Fund Available with the State/UT</label>
                            <asp:TextBox ID="TextBox9" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Outlay proposed</label>
                            <asp:TextBox ID="TextBox10" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                        <br />
                        <div class="card-header">Other</div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">Fund Available with the State/UT</label>
                            <asp:TextBox ID="TextBox11" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Outlay proposed</label>
                            <asp:TextBox ID="TextBox12" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Net Present Value</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">Fund Available with the State/UT</label>
                            <asp:TextBox ID="TextBox13" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Outlay proposed</label>
                            <asp:TextBox ID="TextBox14" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <p style="font-size: 20px; font-weight: bold">Interest</p>
                        <div>
                            <div class="card-header">CA/PCA/Additional CA</div>
                            <div style="display: flex; flex-direction: column; width: 80%;">
                                <label for="dor">Fund Available with the State/UT</label>
                                <asp:TextBox ID="TextBox15" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                                <label for="dor">Outlay proposed</label>
                                <asp:TextBox ID="TextBox16" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                            <p style="font-size: 20px; font-weight: bold">Other Component</p>
                            <div>
                                <div class="card-header">CA/PCA/Additional CA</div>
                                <div style="display: flex; flex-direction: column; width: 80%;">
                                    <label for="dor">Fund Available with the State/UT</label>
                                    <asp:TextBox ID="TextBox17" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                                    <label for="dor">Outlay proposed</label>
                                    <asp:TextBox ID="TextBox18" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button3" runat="server" Text="Save" OnClick="btn2_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button4" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="3a" class="fills" style="padding: 5%;">
                    <p style="font-size: 20px; font-weight: bold">2018-19</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">APO approved by National Authority during current financial year</label>
                            <asp:TextBox ID="TextBox19" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Fund Released by State Government</label>
                            <asp:TextBox ID="TextBox20" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Fund Utilised by State Authority</label>
                            <asp:TextBox ID="TextBox21" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Total Outlay for the current year</label>
                            <asp:TextBox ID="TextBox22" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">2019-20</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">APO approved by National Authority during current financial year</label>
                            <asp:TextBox ID="TextBox23" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Fund Released by State Government</label>
                            <asp:TextBox ID="TextBox24" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Fund Utilised by State Authority</label>
                            <asp:TextBox ID="TextBox25" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Total Outlay for the current year</label>
                            <asp:TextBox ID="TextBox26" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">2020-21</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">APO approved by National Authority during current financial year</label>
                            <asp:TextBox ID="TextBox27" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Fund Released by State Government</label>
                            <asp:TextBox ID="TextBox28" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Fund Utilised by State Authority</label>
                            <asp:TextBox ID="TextBox29" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Total Outlay for the current year</label>
                            <asp:TextBox ID="TextBox30" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">2021-22</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">APO approved by National Authority during current financial year</label>
                            <asp:TextBox ID="TextBox31" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Fund Released by State Government</label>
                            <asp:TextBox ID="TextBox32" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Fund Utilised by State Authority</label>
                            <asp:TextBox ID="TextBox33" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Total Outlay for the current year</label>
                            <asp:TextBox ID="TextBox34" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">2022-23</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">APO approved by National Authority during current financial year</label>
                            <asp:TextBox ID="TextBox35" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Fund Released by State Government</label>
                            <asp:TextBox ID="TextBox36" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Fund Utilised by State Authority</label>
                            <asp:TextBox ID="TextBox37" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Total Outlay for the current year</label>
                            <asp:TextBox ID="TextBox38" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button5" runat="server" Text="Save" OnClick="btn3_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button6" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="4a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">2020-21</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">CSS - Name of the scheme</label>
                            <asp:TextBox ID="TextBox39" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">CSS - Expenditure/Provisions</label>
                            <asp:TextBox ID="TextBox40" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">CAMPA</label>
                            <asp:TextBox ID="TextBox41" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">State Plan/ Scheme Fund</label>
                            <asp:TextBox ID="TextBox42" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Any other scheme</label>
                            <asp:TextBox ID="TextBox64" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">2021-22</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">CSS - Name of the scheme</label>
                            <asp:TextBox ID="TextBox43" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">CSS - Expenditure/Provisions</label>
                            <asp:TextBox ID="TextBox44" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">CAMPA</label>
                            <asp:TextBox ID="TextBox45" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">State Plan/ Scheme Fund</label>
                            <asp:TextBox ID="TextBox46" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Any other scheme</label>
                            <asp:TextBox ID="TextBox65" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">2022-23</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">CSS - Name of the scheme</label>
                            <asp:TextBox ID="TextBox47" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">CSS - Expenditure/Provisions</label>
                            <asp:TextBox ID="TextBox48" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">CAMPA</label>
                            <asp:TextBox ID="TextBox49" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">State Plan/ Scheme Fund</label>
                            <asp:TextBox ID="TextBox50" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Any other scheme</label>
                            <asp:TextBox ID="TextBox66" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">2023-24*</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">CSS - Name of the scheme</label>
                            <asp:TextBox ID="TextBox51" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">CSS - Expenditure/Provisions</label>
                            <asp:TextBox ID="TextBox52" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">CAMPA</label>
                            <asp:TextBox ID="TextBox53" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">State Plan/ Scheme Fund</label>
                            <asp:TextBox ID="TextBox54" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Any other scheme</label>
                            <asp:TextBox ID="TextBox67" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button7" runat="server" Text="Save" OnClick="btn4_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button8" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="5a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Afforestation required as per site specific scheme submitted along with approved proposal for diversion of forest land under FC Act, 1980 till 31.3.2022</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">CA</label>
                            <asp:TextBox ID="TextBox55" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">PCA</label>
                            <asp:TextBox ID="TextBox56" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">CA+PCA</label>
                            <asp:TextBox ID="TextBox57" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>

                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Afforestation carried out in the State as per site specific scheme till 2022-23</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">CA</label>
                            <asp:TextBox ID="TextBox58" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">PCA</label>
                            <asp:TextBox ID="TextBox59" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">CA+PCA</label>
                            <asp:TextBox ID="TextBox60" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>

                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Afforestation to be carried out 2023-24</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">CA+PCA</label>
                            <asp:TextBox ID="TextBox61" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Afforestation carried out percentage</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">CA+PCA</label>
                            <asp:TextBox ID="TextBox62" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Total Balance upto 2024</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">CA+PCA</label>
                            <asp:TextBox ID="TextBox63" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button9" runat="server" Text="Save" OnClick="btn5_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button10" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="6a" class="fills">
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Balance afforestation required as per FC Act(in ha.)</label>
                        <asp:TextBox ID="TextBox69" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Balance afforestation to be completed in Financial Year(in ha.)</p>
                    <div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">2023-24</label>
                            <asp:TextBox ID="TextBox68" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">2024-25</label>
                            <asp:TextBox ID="TextBox70" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">2025-26</label>
                            <asp:TextBox ID="TextBox71" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <div style="display: flex; flex-direction: row;">
                            <asp:Button ID="Button11" runat="server" Text="Save" OnClick="btn6_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                            <asp:Button ID="Button12" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        </div>
                    </div>
                </div>
                <div id="7a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Mandatory Activities</p>
                    <div>
                        <div class="card-header" style="font-weight: 500">Compensatory Afforestation</div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">Proposed outlay(Phy. Target)</label>
                            <asp:TextBox ID="TextBox72" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Proposed outlay(Fin. Target)</label>
                            <asp:TextBox ID="TextBox73" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Green Employment to be generated(in Mandays)</label>
                            <asp:TextBox ID="TextBox74" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">page No.</label>
                            <asp:TextBox ID="TextBox75" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Remarks</label>
                            <asp:TextBox ID="TextBox76" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                        <br />
                    </div>
                    <div>
                        <div class="card-header" style="font-weight: 500">Catchment Area Treatment Plan</div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">Proposed outlay(Phy. Target)</label>
                            <asp:TextBox ID="TextBox77" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Proposed outlay(Fin. Target)</label>
                            <asp:TextBox ID="TextBox78" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Green Employment to be generated(in Mandays)</label>
                            <asp:TextBox ID="TextBox79" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">page No.</label>
                            <asp:TextBox ID="TextBox80" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Remarks</label>
                            <asp:TextBox ID="TextBox81" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                        <br />
                    </div>
                    <div>
                        <div class="card-header" style="font-weight: 500">Integrated Wildlife Management Plan</div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">Proposed outlay(Phy. Target)</label>
                            <asp:TextBox ID="TextBox82" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Proposed outlay(Fin. Target)</label>
                            <asp:TextBox ID="TextBox83" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Green Employment to be generated(in Mandays)</label>
                            <asp:TextBox ID="TextBox84" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">page No.</label>
                            <asp:TextBox ID="TextBox85" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Remarks</label>
                            <asp:TextBox ID="TextBox86" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                        <br />
                    </div>
                    <div>
                        <div class="card-header" style="font-weight: 500">Other</div>
                        <div style="display: flex; flex-direction: column; width: 80%;">
                            <label for="dor">Proposed outlay(Phy. Target)</label>
                            <asp:TextBox ID="TextBox87" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Proposed outlay(Fin. Target)</label>
                            <asp:TextBox ID="TextBox88" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Green Employment to be generated(in Mandays)</label>
                            <asp:TextBox ID="TextBox89" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">page No.</label>
                            <asp:TextBox ID="TextBox90" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            <label for="dor">Remarks</label>
                            <asp:TextBox ID="TextBox91" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        </div>
                        <br />
                        <div>
                            <div class="card-header" style="font-weight: 500">Total site specific activities under CA</div>
                            <div style="display: flex; flex-direction: column; width: 80%;">
                                <label for="dor">Proposed outlay(Phy. Target)</label>
                                <asp:TextBox ID="TextBox92" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                                <label for="dor">Proposed outlay(Fin. Target)</label>
                                <asp:TextBox ID="TextBox93" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                                <label for="dor">Green Employment to be generated(in Mandays)</label>
                                <asp:TextBox ID="TextBox94" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                                <label for="dor">page No.</label>
                                <asp:TextBox ID="TextBox95" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                                <label for="dor">Remarks</label>
                                <asp:TextBox ID="TextBox96" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                            </div>
                            <br />
                        </div>
                        <br />
                        <br />
                        <div style="display: flex; flex-direction: row;">
                            <asp:Button ID="Button13" runat="server" Text="Save" OnClick="btn7_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                            <asp:Button ID="Button14" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        </div>
                    </div>
                </div>
                <div id="8a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">5(2)a - ANR</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox97" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox98" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox99" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox100" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox101" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)b - AR</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox102" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox103" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox104" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox105" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox106" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)c - Silviculture Operations</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox107" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox108" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox109" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox110" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox111" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)d - Protection of Plantions and forests</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox112" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox113" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox114" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox115" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox116" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)e - Pest and disease control in forests</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox117" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox118" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox119" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox120" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox121" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)f - Forest fire prevention and control operations</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox122" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox123" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox124" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox125" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox126" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)g - Soil and moisture conservation works</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox127" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox128" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox129" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox130" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox131" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)h - Voluntary relocation of villages from protected area</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox132" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox133" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox134" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox135" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox136" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)i - Improvement of wildlife habitat</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox137" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox138" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox139" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox140" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox141" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)j - Planting and rejuvenation of forest cover on non-forest land falling in wildlife corridors</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox142" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox143" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox144" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox145" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox146" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)k - Establishment, maintenance of animal rescue centre and veterinary treatment facilities for wild animals</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox147" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox148" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox149" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox150" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox151" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)l - Supply of wood saving, cooking appliances and other forest produce saving devices</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox152" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox153" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox154" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox155" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox156" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(2)m - Management of biological diversity and biological resource</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox157" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox158" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox159" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox160" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox161" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <br />
                        <br />
                        <div style="display: flex; flex-direction: row;">
                            <asp:Button ID="Button15" runat="server" Text="Save" OnClick="btn8_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                            <asp:Button ID="Button16" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        </div>
                    </div>
                </div>
                <div id="9a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">5(3)a - Establishment, maintenance of modern nurseries</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox162" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox163" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox164" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox165" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox166" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(3)b - Promoting conservation, sustainable use and documentation of biological diversity</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox167" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox168" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox169" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox170" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox171" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(3)c - Purchase and maintenance of equipment of devices for communication, information and technology</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox172" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox173" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox174" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox175" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox176" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(3)d - Construction, upgradation and maintenance of inspection paths, fores roads in forest areas, fire line, watch towers, check posts and timber posts</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox177" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox178" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox179" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox180" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox181" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(3)e - Construction of residentail and offial building</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox182" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox183" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox184" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox185" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox186" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(3)f - Casual engagement of local people or labours to assist regular staff of State Forest Department</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox187" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox188" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox189" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox190" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox191" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(3)g - Survey and mapping</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox192" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox193" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox194" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox195" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox196" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(3)h - Independent concurrent monitoring and evaluation and third party monitoring</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox197" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox198" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox199" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox200" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox201" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(3)i - Publicity cum awareness programme</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox202" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox203" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox204" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox205" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox206" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(3)j - Production and distribution of quality planting material</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox207" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox208" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox209" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox210" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox211" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">5(3)k - Forest certification and development of certification standard</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox212" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox213" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox214" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox215" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox216" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>

                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button17" runat="server" Text="Save" OnClick="btn9_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button18" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="10a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">6(a)i - To offset incremental cost of CA/PCA at increased wage rate</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox217" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox218" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox219" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox220" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox221" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">6(a)ii - To offset incremental cost of CAT at increased wage rate</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox222" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox223" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox224" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox225" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox226" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">6(a)iii - To offset incremental cost of IWMP at increased wage rate</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox227" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox228" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox229" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox230" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox231" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">6(a)iv - For disbursement of salary and allowances of members and staff</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox232" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox233" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox234" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox235" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox236" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">6(a)v - For disbursement of sitting fees and allowances to nominated members</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox237" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox238" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox239" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox240" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox241" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">6(a)vi - Activities referred to in sub rule-(2) and (3) of Rule 5</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox242" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox243" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox244" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox245" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox246" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button19" runat="server" Text="Save" OnClick="btn10_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button20" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="11a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">6(b)i - Management of office establishment</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox247" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox248" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox249" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox250" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox251" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">6(b)ii - Office equipment including computers and peripherals and its maintenance</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox252" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox253" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox254" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox255" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox256" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">6(b)iii - Hiring of staff cars for the use of officers and officials</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox257" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox258" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox259" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox260" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox261" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">6(b)iv - Hiring of buildings on lease for office establishment and residences of the officers</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox262" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox263" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox264" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox265" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox266" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">6(b)v - Other contingencies for management of State Authority</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox267" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox268" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox269" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox270" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox271" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">6(b)vi - Any other activity for management of forests and wildlife with the approval of Steering Committee and included in the APO</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Proposed outlay(Phy. Target)</label>
                        <asp:TextBox ID="TextBox272" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Proposed outlay(Fin. Target)</label>
                        <asp:TextBox ID="TextBox273" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Green Employment to be generated(in Mandays)</label>
                        <asp:TextBox ID="TextBox274" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">page No.</label>
                        <asp:TextBox ID="TextBox275" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Remarks</label>
                        <asp:TextBox ID="TextBox276" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button21" runat="server" Text="Save" OnClick="btn11_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button22" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="12a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">FC Proposal Details</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox277" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">CA area as per FC proposal</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Area</label>
                        <asp:TextBox ID="TextBox317" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Location</label>
                        <asp:TextBox ID="TextBox318" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox319" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">CA Executed</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox281" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox282" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">CA Proposed for current Financial Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox283" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox284" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remaining CA</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox285" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox286" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of CA/PCA</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <asp:TextBox ID="TextBox306" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <br />
                        <br />
                        <div style="display: flex; flex-direction: row;">
                            <asp:Button ID="Button23" runat="server" Text="Save" OnClick="btn12_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                            <asp:Button ID="Button24" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        </div>
                    </div>
                </div>
                <div id="13a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">FC Proposal Details</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox278" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">CAT area as per FC proposal</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">CAT Activities</label>
                        <asp:TextBox ID="TextBox314" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Location</label>
                        <asp:TextBox ID="TextBox315" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox316" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">CAT Executed</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox287" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox288" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">CAT Proposed for current Financial Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox289" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox290" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remaining CAT</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox291" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox292" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of CAT</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <asp:TextBox ID="TextBox320" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button27" runat="server" Text="Save" OnClick="btn13_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button28" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="14a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">FC Proposal Details</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox279" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">IWMP area as per FC proposal</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">IWMP Activities</label>
                        <asp:TextBox ID="TextBox311" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Location</label>
                        <asp:TextBox ID="TextBox312" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox313" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">IWMP Executed</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox293" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox294" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">IWMP Proposed for current Financial Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox295" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox296" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remaining IWMP</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox297" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox298" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of IWMP</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <asp:TextBox ID="TextBox307" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <br />
                        <br />
                        <div style="display: flex; flex-direction: row;">
                            <asp:Button ID="Button25" runat="server" Text="Save" OnClick="btn14_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                            <asp:Button ID="Button26" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        </div>
                    </div>
                </div>
                <div id="15a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">FC Proposal Details</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox280" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others area as per FC proposal</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Others Activities</label>
                        <asp:TextBox ID="TextBox308" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Location</label>
                        <asp:TextBox ID="TextBox309" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox310" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Executed</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox299" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox300" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Proposed for current Financial Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox301" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox302" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remaining Others</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox303" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox304" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of Other Component</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <asp:TextBox ID="TextBox305" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>

                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button29" runat="server" Text="Save" OnClick="btn15_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button30" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="16a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Plantation Target as per Working Plan for Current Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox321" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Planning under NPV</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox322" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Location</label>
                        <asp:TextBox ID="TextBox326" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox327" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Schemes</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox323" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox328" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of NPV</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox324" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remarks</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox325" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button31" runat="server" Text="Save" OnClick="btn16_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button32" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="17a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">ANR Target as per Working Plan for Current Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox329" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Planning under NPV</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox330" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Location</label>
                        <asp:TextBox ID="TextBox331" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox332" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Schemes</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox333" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox334" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of ANR</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox335" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remarks</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox336" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button33" runat="server" Text="Save" OnClick="btn17_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button34" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="18a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Soil Conservation Target as per ICFRE DPR for Current Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox337" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Soil Conservation Structures under NPV</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox338" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Location</label>
                        <asp:TextBox ID="TextBox339" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox340" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Schemes</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox341" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox342" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of NPV</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox343" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remarks</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox344" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button35" runat="server" Text="Save" OnClick="btn18_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button36" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="19a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Target Activities as per integrated wildlife management plan for Current Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox345" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Wildlife Activities under NPV</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox346" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Location</label>
                        <asp:TextBox ID="TextBox347" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox348" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Schemes</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox349" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox350" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of Wildlife Habitat Improvement</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox351" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remarks</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox352" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button37" runat="server" Text="Save" OnClick="btn19_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button38" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="20a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Target Activities as per integrated Fire Management plan for Current Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox353" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Fire Management Activities under NPV</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox354" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Location</label>
                        <asp:TextBox ID="TextBox355" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox356" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Schemes</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox357" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox358" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of Fire Management</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox359" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remarks</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox360" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button39" runat="server" Text="Save" OnClick="btn20_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button40" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="21a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Target Activities as per State plan for Current Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox361" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Activities</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox362" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>

                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox364" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Schemes</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox365" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox366" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of Capacity Building/ Awareness Activities</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox367" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remarks</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox368" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button41" runat="server" Text="Save" OnClick="btn21_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button42" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="22a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Target Activities as per State plan for Current Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox363" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Activities</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox369" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>

                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox370" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Schemes</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox371" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox372" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of Frontline Staff Quarters</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox373" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remarks</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox374" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button43" runat="server" Text="Save" OnClick="btn22_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button44" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="23a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Target Activities as per State plan for Current Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox375" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Activities</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox376" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>

                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox377" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Schemes</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox378" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox379" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of Casual Labours</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox380" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remarks</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox381" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button45" runat="server" Text="Save" OnClick="btn23_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button46" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="24a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Target Activities as per State plan for Current Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox382" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Activities</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox383" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>

                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox384" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Schemes</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox385" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox386" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of Hiring of Vehicles</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox387" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remarks</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox388" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button47" runat="server" Text="Save" OnClick="btn24_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button48" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="25a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Target Activities as per State plan for Current Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox389" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Activities</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox390" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>

                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox391" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Schemes</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox392" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox393" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of Other Activities</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox394" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remarks</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox395" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button49" runat="server" Text="Save" OnClick="btn25_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button50" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="26a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Target Activities as per State plan for Current Year</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Project Name/Details</label>
                        <asp:TextBox ID="TextBox396" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Activities</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox397" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>

                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox398" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Others Schemes</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical</label>
                        <asp:TextBox ID="TextBox399" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial</label>
                        <asp:TextBox ID="TextBox400" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Interest Amount to offset incremental cost of Overhead Expenditure</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox401" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <p style="font-size: 20px; font-weight: bold">Remarks</p>
                    <div style="display: flex; flex-direction: column; width: 80%;">

                        <asp:TextBox ID="TextBox402" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button51" runat="server" Text="Save" OnClick="btn26_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button52" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="27a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Fire Prevention and control operations</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox403" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox404" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox405" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox406" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox407" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox408" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox409" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox410" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox411" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox412" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Wildlife Management</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox413" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox414" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox415" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox416" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox417" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox418" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox419" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox420" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox421" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox422" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Forest Protection</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox423" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox424" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox425" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox426" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox427" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox428" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox429" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox430" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox431" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox432" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Project Tiger</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox433" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox434" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox435" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox436" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox437" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox438" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox439" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox440" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox441" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox442" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Project Elephant</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox443" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox444" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox445" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox446" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox447" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox448" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox449" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox450" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox451" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox452" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Green India Mission</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox453" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox454" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox455" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox456" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox457" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox458" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox459" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox460" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox461" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox462" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Forest Infrastructure</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox463" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox464" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox465" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox466" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox467" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox468" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox469" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox470" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox471" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox472" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Vehicles</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox473" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox474" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox475" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox476" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox477" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox478" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox479" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox480" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox481" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox482" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Office Establishment</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox483" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox484" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox485" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox486" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox487" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox488" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox489" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox490" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox491" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox492" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Hiring of building</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox493" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox494" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox495" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox496" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox497" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox498" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox499" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox500" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox501" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox502" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Any Other item Specify</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox503" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox504" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox505" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox506" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox507" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox508" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox509" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox510" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox511" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox512" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button53" runat="server" Text="Save" OnClick="btn27_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button54" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>
                <div id="28a" class="fills">
                    <p style="font-size: 20px; font-weight: bold">Fire Prevention and control operations</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox513" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox514" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox515" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox516" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox517" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox518" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox519" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox520" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox521" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox522" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Wildlife Management</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox523" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox524" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox525" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox526" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox527" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox528" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox529" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox530" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox531" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox532" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Forest Protection</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox533" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox534" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox535" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox536" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox537" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox538" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox539" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox540" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox541" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox542" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Project Tiger</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox543" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox544" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox545" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox546" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox547" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox548" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox549" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox550" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox551" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox552" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Project Elephant</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox553" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox554" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox555" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox556" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox557" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox558" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox559" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox560" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox561" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox562" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Green India Mission</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox563" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox564" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox565" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox566" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox567" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox568" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox569" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox570" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox571" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox572" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Forest Infrastructure</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox573" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox574" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox575" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox576" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox577" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox578" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox579" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox580" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox581" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox582" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Vehicles</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox583" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox584" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox585" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox586" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox587" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox588" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox589" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox590" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox591" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox592" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Office Establishment</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox593" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox594" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox595" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox596" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox597" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox598" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox599" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox600" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox601" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox602" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Hiring of building</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox603" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox604" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox605" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox606" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox607" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox608" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox609" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox610" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox611" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox612" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <p style="font-size: 20px; font-weight: bold">Any Other item Specify</p>
                    <div class="card-header" style="font-weight: 500">CAMPA</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox613" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox614" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">CSS</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox615" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox616" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">External Aided Management Project</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox617" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox618" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">State Plan</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox619" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox620" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <div class="card-header" style="font-weight: 500">Any other scheme</div>
                    <div style="display: flex; flex-direction: column; width: 80%;">
                        <label for="dor">Physical(Area in ha.)</label>
                        <asp:TextBox ID="TextBox621" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                        <label for="dor">Financial(Rs. in crores)</label>
                        <asp:TextBox ID="TextBox622" runat="server" onkeydown="return event.keyCode!=13"></asp:TextBox>
                    </div>
                    <br />
                    <div style="display: flex; flex-direction: row;">
                        <asp:Button ID="Button55" runat="server" Text="Save" OnClick="btn28_Click" Style="margin: 2%; background-color: #337ab7; border: 0; padding: 1%; font-weight: 400; color: white;" />
                        <asp:Button ID="Button56" runat="server" Text="Cancel" OnClick="revert_Click" Style="margin: 2%; background-color: #fc1c03; border: 0; padding: 1%; font-weight: 400; color: white;" />
                    </div>
                </div>


            </div>
            <script>
        function tabClick(e){
            elements = document.getElementsByClassName("tab")
            elements2 = document.getElementsByClassName("fills")
            for (var i = 0; i < elements.length; i++) {elements[i].style.backgroundColor="white";}
            for (var i = 0; i < elements2.length; i++) {elements2[i].style.display="none";}
            e.style.backgroundColor = "rgb(111, 219, 92)";
            document.getElementById(e.id+"a").style.display = "block";

        }
            </script>

            <%--    <asp:HiddenField ID="HiddenField1" runat="server" />--%>
        </div>
    </div>
    </div></div></div>
</asp:Content>

