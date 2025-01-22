<%@ Page Title="" Language="C#" MasterPageFile="~/VanUser.Master" AutoEventWireup="true" CodeBehind="PlotEnumeration.aspx.cs"
    Inherits="vansystem.PlotEnumeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Include jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Bootstrap CSS and JS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>

    <!-- Bootstrap Multiselect CSS and JS -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>

    <!-- Select2 CSS and JS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>

    <!-- for SweetAlert Library ND js-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript">    </script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />


    






<style>
        table {
            width: auto;
            border-collapse: collapse;
            /* margin: 30px auto 0;*/
            margin-left: 1px;
        }

        th {
            background: #51c551 !important;
            color: white !important;
            position: sticky !important;
            top: -2rem;
            box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.4);
            z-index:10;
            font-weight: bold;
            text-align: center;
            white-space:nowrap;
        }

        td, th {
           
            border: 1px solid #ccc;
            text-align: center;
            font-size: 15px;
            padding: 0px 5px;
            padding-bottom: 5px;
            padding-top: 19px;
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
            max-height: 100%;
            display: flex;
            align-items: center;          
        }

        @media (min-width: 992px) {
            .col-md-8, .col-md-4 {
                margin-right: 1%;
            }

            .col-md-8 {
                width: 65%;
            }

            .col-md-4 {
                width: 33%;
            }
        }

        body {
            overflow-x: hidden;
            overflow-y: hidden;
        }

        /*h3 {
            margin-left: 3%;
        }*/


        th, td {
            /*padding: 0.75rem;*/
        }

        .listboxCSS {
            font-size: 8pt;
            font-family: Arial;
            border: 0;
            overflow: auto;
        }

        .divBorderCSS {
            border-left-width: thin;
            border-right-width: thin;
            border-top: thin;
            border-bottom: thin;
            border-color: #7F9DB9;
            border-style: solid;
            overflow: auto;
            width: 300px;
            height: 100px;
            POSITION: relative;
        }



        .card-body {
            background-color: rgb(252, 252, 252);
            overflow: auto;
            margin-left: 2%;
            margin-bottom: 60px;
            width: 99%;
            max-height: calc(81vh - 100px);
            min-height:25vw;
            
        }

        .custom-pager {
            all: initial;
            border: none !important;
            margin: 0px auto !important;
            padding: unset;
            text-align: center;
            position: fixed;
            bottom: 1vh;
            left: 90%;
            transform: translateX(-50%);
            z-index: 999;
        }

        .sweet-alert button.cancel {
            background-color: #dc3545 !important;
        }



        .custom-pager a:hover,
        .custom-pager a:active,
        .custom-pager a.active {
            background-color: #ddd;
        }

        .btn-approved {
            background-color: green;
            color: white;
        }

        .dropdown-menu {
            MAX-HEIGHT: 150PX;
            OVERFLOW-Y: AUTO;
            z-index:1;
        }

        @media screen and (max-width: 1917px) {

            .card-body {
                width: 100%;
                max-height: calc(78vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 90%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }

        @media screen and (max-width: 1537px) {

            .card-body {
                width: 100%;
                max-height: calc(76vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 90%;
                transform: translateX(-50%);
                z-index: 999;
            }
            @media screen and (min-width: 500px) and (max-width: 614.40px){
             .card-body {
                max-height: 230px; 
             }
            }
        }

        @media screen and (max-width: 1153px) {

            .card-body {
                width: 100%;
                max-height: calc(85vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 90%;
                transform: translateX(-50%);
                z-index: 999;
            }
        }

        @media screen and (max-width: 780px) {

            .card-body {
                width: 100%;
                max-height: calc(85vh - 100px);
                margin-right: -4% !important;
                margin-left: 2% !important;
            }

            .custom-pager {
                all: initial;
                border: none !important;
                margin: 0px auto !important;
                padding: unset;
                text-align: center;
                position: fixed;
                bottom: 1vh;
                left: 63%;
                transform: translateX(-75%);
                z-index: 999;
            }
        }
            body {
                font-family: "GillSans", sans-serif !important;
                font-size: 16px !important;
            }

            .active {
                background-color: #004990 !important;
            }
            tr.custom-pager td {
    padding: 5px;
}
    </style>



<style>
/*@media screen and (min-width: 500px) and (max-width: 614.40px){
    .card-body {
        max-height: 230px; 
    }
}*/
@media screen and (min-width: 781.60px) and (max-width: 869.60px){
    .card-body {
        max-height: 308px; 
    }
}
@media screen and (min-width: 868px) and (max-width:1152px){
    .card-body {
        max-height: 342px; 
    }
}
@media screen and (min-width: 1152px) and (max-width:1192px){
    .card-body {
        max-height: 366px; 
    }
}
@media screen and (min-width: 1192px) and (max-width:1197px){
    .card-body {
        max-height: 366px; 
    }
}

</style>
<style>
@media screen and (min-width: 500px) and (max-height: 688px){
    .card-body {
        max-height: 210px; 
    }
}
/*@media screen and (min-width: 500px) and (max-height: 941px){
    .card-body {
        max-height:18rem;
    }
}*/
@media screen and (min-width: 781.60px) and (max-height: 688px){
    .card-body {
        max-height: 275px; 
    }
}
@media screen and (min-width: 868px) and (max-height: 688px){
    .card-body {
        max-height: 278px; 
    }
}
@media screen and (min-width: 1152px) and (max-height: 688px){
    .card-body {
        max-height: 310px; 
    }
}
@media screen and (min-width: 1192px) and (max-height: 688px){
    .card-body {
        max-height: 335px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 684px){
    .card-body {
        max-height: 377px; 
    }
}
</style>
<style>
@media screen and (min-width: 500px) and (max-height: 670.40px){
    .card-body {
        max-height: 192px; 
    }
}
@media screen and (min-width: 613.60px) and (max-height: 670.40px){
    .card-body {
        max-height: 232px; 
    }
}
@media screen and (min-width: 781.60px) and (max-height: 688px){
    .card-body {
        max-height: 275px; 
    }
}
@media screen and (min-width: 868px) and (max-height: 688px){
    .card-body {
        max-height: 278px; 
    }
}
@media screen and (min-width: 1152px) and (max-height: 688px){
    .card-body {
        max-height: 310px; 
    }
}
@media screen and (min-width: 1192px) and (max-height: 688px){
    .card-body {
        max-height: 335px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 684px){
    .card-body {
        max-height: 377px; 
    }
}

</style>
<style>
@media screen and (min-width: 500px) and (max-height: 650.40px){
    .card-body {
        max-height: 167px; 
    }
}
@media screen and (min-width: 613.60px) and (max-height: 670.40px){
    .card-body {
        max-height: 206px; 
    }
}
@media screen and (min-width: 781.60px) and (max-height: 688px){
    .card-body {
        max-height: 234px; 
    }
}
@media screen and (min-width: 868px) and (max-height: 688px){
    .card-body {
        max-height: 235px; 
    }
}
@media screen and (min-width: 869.60px) and (max-height: 650.40px){
    .card-body {
        max-height: 276px; 
    }
}
@media screen and (min-width: 1152px) and (max-height: 688px){
    .card-body {
        max-height: 277px; 
    }
}
@media screen and (min-width: 1192px) and (max-height: 688px){
    .card-body {
        max-height: 303px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 684px){
    .card-body {
        max-height: 343px; 
    }
}

</style>
<style>
@media screen and (min-width: 500px) and (max-height: 625.60px){
    .card-body {
        max-height: 149px; 
    }
}
@media screen and (min-width: 613.60px) and (max-height: 670.40px){
    .card-body {
        max-height: 182px; 
    }
}
@media screen and (min-width: 781.60px) and (max-height: 688px){
    .card-body {
        max-height: 211px; 
    }
}
@media screen and (min-width: 868px) and (max-height: 688px){
    .card-body {
        max-height: 209px; 
    }
}
@media screen and (min-width: 869.60px) and (max-height: 650.40px){
    .card-body {
        max-height: 246px; 
    }
}
@media screen and (min-width: 1152px) and (max-height: 688px){
    .card-body {
        max-height: 250px; 
    }
}
@media screen and (min-width: 1192px) and (max-height: 688px){
    .card-body {
        max-height: 278px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 684px){
    .card-body {
        max-height: 315px; 
    }
}

</style>
<style>
@media screen and (min-width: 500px) and (max-height: 607.20px){
    .card-body {
        max-height: 127px; 
    }
}
@media screen and (min-width: 613.60px) and (max-height: 670.20px){
    .card-body {
        max-height: 167px; 
    }
}
@media screen and (min-width: 781.60px) and (max-height: 688px){
    .card-body {
        max-height: 193px; 
    }
}
@media screen and (min-width: 868px) and (max-height: 688px){
    .card-body {
        max-height: 196px; 
    }
}
@media screen and (min-width: 869.60px) and (max-height: 650.40px){
    .card-body {
        max-height: 232px; 
    }
}
@media screen and (min-width: 1152px) and (max-height: 688px){
    .card-body {
        max-height: 231px; 
    }
}
@media screen and (min-width: 1192px) and (max-height: 688px){
    .card-body {
        max-height: 260px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 684px){
    .card-body {
        max-height: 293px; 
    }
}

</style>
<style>
@media screen and (min-width: 500px) and (max-height: 585.60px){
    .card-body {
        max-height: 111px; 
    }
}
@media screen and (min-width: 613.60px) and (max-height: 670.20px){
    .card-body {
        max-height: 148px; 
    }
}
@media screen and (min-width: 781.60px) and (max-height: 688px){
    .card-body {
        max-height: 172px; 
    }
}
@media screen and (min-width: 868px) and (max-height: 688px){
    .card-body {
        max-height: 176px; 
    }
}
@media screen and (min-width: 869.60px) and (max-height: 650.40px){
    .card-body {
        max-height: 211px; 
    }
}
@media screen and (min-width: 1152px) and (max-height: 688px){
    .card-body {
        max-height: 212px; 
    }
}
@media screen and (min-width: 1192px) and (max-height: 688px){
    .card-body {
        max-height: 239px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 684px){
    .card-body {
        max-height: 273px; 
    }
}

</style>
<style>
@media screen and (min-width: 500px) and (max-height: 570.40px){
    .card-body {
        max-height: 95px; 
    }
}
@media screen and (min-width: 613.60px) and (max-height: 670.20px){
    .card-body {
        max-height: 129px; 
    }
}
@media screen and (min-width: 781.60px) and (max-height: 688px){
    .card-body {
        max-height: 158px; 
    }
}
@media screen and (min-width: 868px) and (max-height: 688px){
    .card-body {
        max-height: 160px; 
    }
}
@media screen and (min-width: 869.60px) and (max-height: 650.40px){
    .card-body {
        max-height: 195px; 
    }
}
@media screen and (min-width: 1152px) and (max-height: 688px){
    .card-body {
        max-height: 201px; 
    }
}
@media screen and (min-width: 1192px) and (max-height: 688px){
    .card-body {
        max-height: 222px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 684px){
    .card-body {
        max-height: 258px; 
    }
}

</style>
<style>
@media screen and (min-width: 500px) and (max-height: 552px){
    .card-body {
        max-height: 77px; 
    }
}
@media screen and (min-width: 613.60px) and (max-height: 670.20px){
    .card-body {
        max-height: 111px; 
    }
}
@media screen and (min-width: 781.60px) and (max-height: 688px){
    .card-body {
        max-height: 132px; 
    }
}
@media screen and (min-width: 868px) and (max-height: 688px){
    .card-body {
        max-height: 137px; 
    }
}
@media screen and (min-width: 869.60px) and (max-height: 650.40px){
    .card-body {
        max-height: 195px; 
    }
}
@media screen and (min-width: 1152px) and (max-height: 688px){
    .card-body {
        max-height: 177px; 
    }
}
@media screen and (min-width: 1192px) and (max-height: 688px){
    .card-body {
        max-height: 201px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 684px){
    .card-body {
        max-height: 239px; 
    }
}

</style>
<style>
@media screen and (min-width: 500px) and (max-height: 533.60px){
    .card-body {
        max-height: 61px; 
    }
}
@media screen and (min-width: 613.60px) and (max-height: 670.20px){
    .card-body {
        max-height: 95px; 
    }
}
@media screen and (min-width: 781.60px) and (max-height: 688px){
    .card-body {
        max-height: 121px; 
    }
}
@media screen and (min-width: 868px) and (max-height: 688px){
    .card-body {
        max-height: 159px; 
    }
}
@media screen and (min-width: 869.60px) and (max-height: 650.40px){
    .card-body {
        max-height: 195px; 
    }
}
@media screen and (min-width: 1152px) and (max-height: 688px){
    .card-body {
        max-height: 163px; 
    }
}
@media screen and (min-width: 1192px) and (max-height: 688px){
    .card-body {
        max-height: 187px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 684px){
    .card-body {
        max-height: 225px; 
    }
}

</style>
    <style>
@media screen and (min-width: 613.60px) and (max-height: 670.20px){
    .card-body {
        max-height: 82px; 
    }
}
@media screen and (min-width: 613.60px) and (max-height: 682.40px){
    .card-body {
        max-height: 241px; 
    }
}
@media screen and (min-width: 768px) and (max-height: 682.40px){
    .card-body {
        max-height: 275px; 
    }
}
@media screen and (min-width: 781.60px) and (max-height: 513.60px){
    .card-body {
        max-height: 105px; 
    }
}
@media screen and (min-width: 868px) and (max-height: 513.60px){
    .card-body {
        max-height: 112px; 
    }
}
@media screen and (min-width: 869.60px) and (max-height: 650.40px){
    .card-body {
        max-height: 140px; 
    }
}
@media screen and (min-width: 869.60px) and (max-height: 682.40px){
    .card-body {
        max-height: 311px; 
    }
}
@media screen and (min-width: 1152px) and (max-height: 688px){
    .card-body {
        max-height: 141px; 
    }
}
@media screen and (min-width: 1152px) and (max-height: 682.40px){
    .card-body {
        max-height: 309px; 
    }
}
@media screen and (min-width: 1192px) and (max-height: 688px){
    .card-body {
        max-height: 167px; 
    }
}@media screen and (min-width: 1192px) and (max-height: 682.40px){
    .card-body {
        max-height: 333px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 684px){
    .card-body {
        max-height: 206px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 682.40px){
    .card-body {
        max-height: 372px; 
    }
}
@media screen and (min-width: 1068px) and (max-height: 666.40px){
    .card-body {
        max-height: 298px; 
    }
}
@media screen and (min-width: 1200px) and (max-height: 666.40px){
    .card-body {
        max-height: 355px; 
    }
}@media screen and (min-width: 907.20px) and (max-height: 670.40px){
    .card-body {
        max-height: 299px; 
    }
}@media screen and (min-width: 1199.20px) and (max-height: 670.40px){
    .card-body {
        max-height: 357px; 
    }
}@media screen and (min-width: 1199.20px) and (max-height: 670.40px){
    .card-body {
        max-height: 357px; 
    }
}@media screen and (min-width: 774.40px) and (max-height: 669.60px){
    .card-body {
        max-height: 27rem; 
    }
}@media screen and (min-width: 774.40px) and (max-height: 664px){
    .card-body {
        max-height: 25rem; 
    }
}@media screen and (min-width: 774.40px) and (max-height: 643.40px){
    .card-body {
        max-height: 23rem; 
    }
}@media screen and (min-width: 774.40px) and (max-height: 624px){
    .card-body {
        max-height: 21rem; 
    }
}@media screen and (min-width: 774.40px) and (max-height: 601.60px){
    .card-body {
        max-height: 19rem; 
    }
}@media screen and (min-width: 774.40px) and (max-height: 684px){
    .card-body {
        max-height: 17rem; 
    }
}@media screen and (min-width: 774.40px) and (max-height: 560px){
    .card-body {
        max-height: 15rem; 
    }
}@media screen and (min-width: 774.40px) and (max-height: 541.60px){
    .card-body {
        max-height: 13rem; 
    }
}@media screen and (min-width: 1488px) and (max-height: 688px){
    .card-body {
        max-height: 38rem; 
    }
}@media screen and (min-width: 1488px) and (max-height: 678.60px){
    .card-body {
        max-height: 36rem; 
    }
}@media screen and (min-width: 1488px) and (max-height: 653.60px){
    .card-body {
        max-height: 33rem; 
    }
}@media screen and (min-width: 1488px) and (max-height: 624px){
    .card-body {
        max-height: 31rem; 
    }
}@media screen and (min-width: 1488px) and (max-height: 600px){
    .card-body {
        max-height: 29rem; 
    }
}@media screen and (min-width: 1488px) and (max-height: 579.20px){
    .card-body {
        max-height: 26rem; 
    }
}@media screen and (min-width: 1488px) and (max-height: 552px){
    .card-body {
        max-height: 24rem; 
    }
}@media screen and (min-width: 1488px) and (max-height: 528px){
    .card-body {
        max-height: 20rem; 
    }
}@media screen and (min-width: 1488px) and (max-height: 492px){
    .card-body {
        max-height: 17rem; 
    }
}@media screen and (min-width: 1396px) and (max-height: 688px){
    .card-body {
        max-height: 38rem; 
    }
}@media screen and (min-width: 1396px) and (max-height: 664px){
    .card-body {
        max-height: 35rem; 
    }
}@media screen and (min-width: 1396px) and (max-height: 644px){
    .card-body {
        max-height: 31rem; 
    }
}@media screen and (min-width: 1396px) and (max-height: 600px){
    .card-body {
        max-height: 28rem; 
    }
}@media screen and (min-width: 1396px) and (max-height: 572px){
    .card-body {
        max-height: 25rem; 
    }
}@media screen and (min-width: 1396px) and (max-height: 540px){
    .card-body {
        max-height: 22rem; 
    }
}@media screen and (min-width: 1396px) and (max-height: 512px){
    .card-body {
        max-height: 19rem; 
    }
}@media screen and (min-width: 1396px) and (max-height: 476px){
    .card-body {
        max-height: 15rem; 
    }
}@media screen and (min-width: 1372px) and (max-height: 688px){
    .card-body {
        max-height: 38rem; 
    }
}@media screen and (min-width: 1372px) and (max-height: 664px){
    .card-body {
        max-height: 35rem; 
    }
}@media screen and (min-width: 1372px) and (max-height: 640px){
    .card-body {
        max-height: 32rem; 
    }
}@media screen and (min-width: 1372px) and (max-height: 608px){
    .card-body {
        max-height: 29rem; 
    }
}@media screen and (min-width: 1372px) and (max-height: 580px){
    .card-body {
        max-height: 25rem; 
    }
}@media screen and (min-width: 1372px) and (max-height: 540px){
    .card-body {
        max-height: 22rem;
    }
}@media screen and (min-width: 1372px) and (max-height: 512px){
    .card-body {
        max-height: 19rem;
    }
}@media screen and (min-width: 1372px) and (max-height: 480px){
    .card-body {
        max-height: 15rem;
    }
}@media screen and (min-width: 1173.60px) and (max-height: 716px){
    .card-body {
        max-height: 34rem;
    }
}@media screen and (min-width: 1173.60px) and (max-height: 696px){
    .card-body {
        max-height: 30rem;
    }
}@media screen and (min-width: 1173.60px) and (max-height: 656px){
    .card-body {
        max-height:28rem;
    }
}@media screen and (min-width: 1173.60px) and (max-height: 636px){
    .card-body {
        max-height:24rem;
    }
}@media screen and (min-width: 1173.60px) and (max-height: 592px){
    .card-body {
        max-height:20rem;
    }
}@media screen and (min-width: 1173.60px) and (max-height: 556px){
    .card-body {
        max-height:18rem;
    }
}@media screen and (min-width: 1173.60px) and (max-height: 532px){
    .card-body {
        max-height:15rem;
    }
}@media screen and (min-width: 944px) and (max-height: 700px){
    .card-body {
        max-height:32rem;
    }
}@media screen and (min-width: 944px) and (max-height: 676px){
    .card-body {
        max-height:29rem;
    }
}@media screen and (min-width: 944px) and (max-height: 648px){
    .card-body {
        max-height:25rem;
    }
}@media screen and (min-width: 944px) and (max-height: 608px){
    .card-body {
        max-height:23rem;
    }
}@media screen and (min-width: 944px) and (max-height: 588px){
    .card-body {
        max-height:20rem;
    }
}@media screen and (min-width: 944px) and (max-height: 556px){
    .card-body {
        max-height:17rem;
    }
}@media screen and (min-width: 666.40px) and (max-height: 664px){
    .card-body {
        max-height:23rem;
    }
}@media screen and (min-width: 666.40px) and (max-height: 652px){
    .card-body {
        max-height:20rem;
    }
}@media screen and (min-width: 666.40px) and (max-height: 624px){
    .card-body {
        max-height:17rem;
    }
}@media screen and (min-width: 666.40px) and (max-height: 588px){
    .card-body {
        max-height:15rem;
    }
}
 @media screen and (min-width: 1197.60px) and (max-height: 712px){
    .card-body {
        max-height:39rem;
    }
}
 @media screen and (min-width: 1197.60px) and (max-height: 670.40px){
    .card-body {
        max-height:36rem;
    }
}@media screen and (min-width: 1197.60px) and (max-height: 652px){
    .card-body {
        max-height:33rem;
    }
}@media screen and (min-width: 1197.60px) and (max-height: 624px){
    .card-body {
        max-height:30rem;
    }
}@media screen and (min-width: 1197.60px) and (max-height: 592px){
    .card-body {
        max-height:27rem;
    }
}@media screen and (min-width: 1197.60px) and (max-height: 560px){
    .card-body {
        max-height:25rem;
    }
}@media screen and (min-width: 1197.60px) and (max-height: 532px){
    .card-body {
        max-height:22rem;
    }
}@media screen and (min-width: 1197.60px) and (max-height: 512px){
    .card-body {
        max-height:18rem;
    }
}
</style>

    <script>        var object = { status: false, ele: null };        function confirmDelete1(ev) {            if (object.status) {                object.status = false; // Reset status for next confirmation                return true;            }            swal({                title: "Are you sure you want to delete this entry?",                /* text: "This entry cannot be recovered and will be deleted permanently.",*/                text: "This entry cannot be recovered and will be deleted permanently.",                type: "warning",                showCancelButton: true,                confirmButtonClass: "btn-danger",                confirmButtonText: "Yes, delete it!",                cancelButtonText: "No, cancel!",                closeOnConfirm: true,            },                function () {                    object.status = true;                    object.ele = ev;                    object.ele.click();                    object.status = false; // Reset status after confirmation is complete                });            return false;        }    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updatepanel1">
        <ContentTemplate>
            <div>
                <%--class="card" style="height: 826px; background-color: #EFEFEF"--%>
                <div class="container-fluid mt-6">
                    <div style="margin-left: 0%; margin-top: 88px;">

                        <div class="plot-enumeration d-md-flex justify-content-between align-content-between text-center">
                            <div style="margin-left: 3% !important;">
                                <h3 style="margin-inline: auto; margin-left: 40px;"><b>Plot Enumeration</b></h3>
                            </div>
                            <div style="margin-top: 20px;">
                                <asp:LinkButton runat="server" ID="masterdata" class="btn btn-xs btn-success active" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="masterdata_Command" Text="Master Data"> </asp:LinkButton>

                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Tree" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Tree_Command" Text="Tree"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Bamboo" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Bamboo_Command" Text="Bamboo"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Shurb" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Shurb_Command" Text="Shrub"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Sapling" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Sapling_Command" Text="Sapling"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Herb" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Herb_Command" Text="Herb"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Seedling" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Seedling_Command" Text="Seedling"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Grass" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Grass_Command" Text="Grass"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Climber" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Climber_Command" Text="Climber"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="LeafLitter" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="LeafLitter_Command" Text="Leaf Litter"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="WoodyLitter" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="WoodyLitter_Command" Text="Woody Litter"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Soil" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Soil_Command" Text="Soil"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="DeadWood" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="DeadWood_Command" Text="Dead Wood"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="Stump" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Stump_Command" Text="Stump"> </asp:LinkButton>
                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" ID="NonClump" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="NonClump_Command" Text="Non Clump"> </asp:LinkButton>
                            </div>
                        </div>

                        <div>
                            <%--<div>
                                <marquee>
                                    <div id="recordNotFoundMessage" style="display: none; color: red;">No Records Found.</div>
                                </marquee>
                            </div>--%>
                            <div class="row d-sm-flex justify-content-center align-items-center text-center" style="margin-left: 60px !important;">

                                <div>
                                    <asp:Label ID="recordNotFoundMessage" runat="server" Style="display: none; margin-left: -140px;">No Records Found.</asp:Label>
                                </div>

                                <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top: 6px;">
                                    Search:                                           
                                    <asp:TextBox ID="txtSearch1" Style="background-color: #004990; color: white;" runat="server" Font-Size="20px" onkeydown="return Search_Gridview(event); adjustGridViewPosition();" onkeyup="Search_function(this); adjustGridViewPosition();"></asp:TextBox>
                                </div>
                                <div class="d-md-flex justify-content-center align-items-center pl-4" style="padding-top: 6px;">
                                    <div>
                                        <asp:Button ID="btnExport" runat="server" Text="Export to Excel(Plot Enumeration)" OnClick="btnExport_Click" Style="height: 34px;" />
                                    </div>
                                    <div>
                                        <asp:Button ID="btnExport1" class="ml-4" runat="server" Text="Export to Excel(Plot Enumeration-Dry Data)" OnClick="btnExport1_Click" Style="height: 34px;" />
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center align-items-center pl-4" style="padding-top: 6px;" >
                                    Show
                                    <div  class="pl-2 pr-2" >
                                        <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" Style="background-color: #004990; color: white; width: 70px; border-radius: 3px; height: 30px;">
                                            <asp:ListItem Text="10" Value="10" />
                                            <asp:ListItem Text="25" Value="25" />
                                            <asp:ListItem Text="50" Value="50" />
                                        </asp:DropDownList>
                                    </div>
                                    entries                                       
                                </div>
                            </div>
                            <hr />
                        </div>


                         <div class="card-body" id="cardBody" style="height: 100vh!important; overflow-y: auto; margin-left: 3.5rem !important; width: 98%; /*margin-left: 1.7%; */">
                            <div class="box-content" style="display: flex; align-items: center;" onkeydown="return Search_Gridview(event)">

                                <asp:GridView ID="GVPlotEnumeration" AutoGenerateColumns="False" Style="width: 100%; margin-top: -1%" runat="server" DataKeyNames="PlotEnumerationId" OnPageIndexChanging="GVPlotEnumeration_PageIndexChanging" AllowPaging="true" PageSize="10" OnRowCommand="GVPlotEnumeration_RowCommand" OnRowDataBound="GVPlotEnumeration_RowDataBound" ShowHeaderWhenEmpty="true">
                                    <PagerSettings Mode="NumericFirstLast" FirstPageText="First" PageButtonCount="10" LastPageText="Last" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="S.No" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                            </ItemTemplate>
                                            <ItemStyle Width="100px" />
                                        </asp:TemplateField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="PlotEnumerationId" HeaderText="Survey ID">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Surveyor" HeaderText="Surveyor Name">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>

                                        <asp:BoundField DataField="gender" HeaderText="Gender" ReadOnly="true">
                                            <%--<ItemStyle Width="150px" />--%>
                                        </asp:BoundField>

                                        <asp:BoundField ItemStyle-Width="150px" DataField="Mobile" HeaderText="Surveyor Phone No">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Designation" HeaderText="Surveyor Designation">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                           <asp:BoundField ItemStyle-Width="150px" DataField="other" HeaderText="Other">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Date_created" HeaderText="Survey Date">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Latitude" HeaderText="Latitude" DataFormatString="{0:F6}">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Longitude" HeaderText="Longitude" DataFormatString="{0:F6}">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Altitude" HeaderText="Altitude" DataFormatString="{0:F1}">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="Accuracy" HeaderText="Accuracy" DataFormatString="{0:F1}">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="StateName" HeaderText="State">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="DivisionName" HeaderText="Division">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="RangeName" HeaderText="Range">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="BlockName" HeaderText="Block">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="VillageId" HeaderText="Village">
                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="compartmentname" HeaderText="Compartment Number">


                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>
                                        <asp:BoundField ItemStyle-Width="150px" DataField="PlotId" HeaderText="Plot Number">


                                            <ItemStyle Width="150px"></ItemStyle>
                                        </asp:BoundField>

                                        <asp:TemplateField HeaderText="Tree" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Tree_link" Text="Tree"> </asp:LinkButton>

                                            </ItemTemplate>

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Bamboo" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Bamboo_link" Text="Bamboo"> </asp:LinkButton>

                                            </ItemTemplate>

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Shurb" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Shrub_link" Text="Shrub"> </asp:LinkButton>

                                            </ItemTemplate>


                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Sapling" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Sapling_link" Text="Sapling"> </asp:LinkButton>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Herb" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Herb_link" Text="Herb"> </asp:LinkButton>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Seedling" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Seedling_link" Text="Seedling"> </asp:LinkButton>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Grass" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Grass_link" Text="Grass"> </asp:LinkButton>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Climber" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Climber_link" Text="Climber"> </asp:LinkButton>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Leaf Litter" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">
                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Leaflitter_link" Text="Leaf Litter"> </asp:LinkButton>

                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Woody Litter" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Woodylitter_link" Text="Woody Litter"> </asp:LinkButton>

                                            </ItemTemplate>

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Soil" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Soil_link" Text="Soil"> </asp:LinkButton>

                                            </ItemTemplate>

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Dead Wood" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Deadwood_link" Text="Dead Wood"> </asp:LinkButton>

                                            </ItemTemplate>

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Stump" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="Stump_link" Text="Stump"> </asp:LinkButton>

                                            </ItemTemplate>

                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Non Clump" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="20%">

                                            <ItemTemplate>

                                                <asp:LinkButton runat="server" class="btn btn-xs btn-success" CommandArgument='<%# Eval("PlotEnumerationId") %>' OnCommand="NonClump_link" Text="Non Clump"> </asp:LinkButton>

                                            </ItemTemplate>

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:ImageButton ImageUrl='~/images/bin.png' ID="Button1" runat="server" CausesValidation="false" CommandName="cmdDelete" ToolTip="Delete" CommandArgument="<%#Container.DataItemIndex %>" OnClientClick="return confirmDelete1(this)" Width="20px" Height="20px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="RFO Approval" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="Button3" runat="server" CausesValidation="false" CommandName="" Text="RFO Not Approve" />
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="DFO Approval" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:Button ID="Button2" runat="server" CausesValidation="false" CssClass="btn btn-primary" CommandName="cmdApprove" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Approve" />
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                    </Columns>

                                    <PagerStyle CssClass="custom-pager" />

                                </asp:GridView>


                            </div>


                            <ul class="pagination" id="pagingnation" visible="false" runat="server">

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
        <Triggers>
            <asp:PostBackTrigger ControlID="btnExport1" />
        </Triggers>
    </asp:UpdatePanel>

    <%--   
     <script type="text/javascript">
            function Search_Gridview(strKey) {
                var strData = strKey.value.toLowerCase().split(" ");
               
                var tblData = document.getElementById("<%=GVPlotEnumeration.ClientID %>");
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
     </script>--%>
    <script type="text/javascript">        function Search_function(strKey) {            var strData = strKey.value.toLowerCase().split(" ");            var tblData = document.getElementById("<%=GVPlotEnumeration.ClientID %>");        var rowData;        var found = false;        for (var i = 1; i < tblData.rows.length; i++) {            rowData = tblData.rows[i].innerHTML.toLowerCase();            var rowFound = true; // Assume the row matches until proven otherwise            for (var j = 0; j < strData.length; j++) {                if (rowData.indexOf(strData[j]) === -1) {                    rowFound = false; // If any search term is not found in the row, mark it as not found                    break;                }            }            tblData.rows[i].style.display = rowFound ? '' : 'none'; // Show or hide the row based on whether it matches the search terms            if (rowFound) {                found = true; // If at least one row matches the search terms, set found to true            }        }        var messageElement = document.getElementById('recordNotFoundMessage');        if (!messageElement) {            messageElement = document.createElement('div');            messageElement.id = 'recordNotFoundMessage';            messageElement.innerHTML = 'Record not found.';            messageElement.style.textAlign = 'center';            messageElement.style.marginTop = '45px';            messageElement.style.marginLeft = '-40%';            messageElement.style.color = 'red';            messageElement.style.paddingBottom = '11%';            messageElement.style.overflowY = 'clip';            tblData.parentElement.appendChild(messageElement);        }        messageElement.style.display = found ? 'none' : 'block'; // Show or hide the error message based on whether any records were found        }    window.onload = function () {        document.getElementById("<%= txtSearch1.ClientID %>").value = "";        };    </script>



    <script type="text/javascript">        function Search_Gridview(event) {
            if (event.keyCode === 13) {
                // Prevent the default behavior of the Enter key (form submission)
                event.preventDefault();
                // Perform your search logic here
                adjustGridViewPosition();
                // Additional search logic...
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
