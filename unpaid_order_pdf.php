<?php 
$css= file_get_contents('pdf_style.css');
$file_name="213658972564897";
$file_name .= ".pdf";
$html=
'
<html>
<head>
<style>


</style>
</head>
<body>

<htmlpageheader name="myheader">
    <table>
        <tr>
            <td style="width:67%;"><img width="300px" src="sirajganjshop.png"></td>
            <td class="invoice_align_right" >
                <sapn>Invoice no:</sapn> <span>#23332365989658</span>
                <p>Order Date: 15-03-2021 08:14 PM</p>
            </td>
        </tr>
    </table>
</htmlpageheader>

<htmlpagefooter name="myfooter">

<div style="border-top: 0.1mm solid #000000; font-size: 9pt; text-align: center; padding-top: 3mm;">
    Page {PAGENO} of {nb}
</div>

</htmlpagefooter>

<sethtmlpageheader name="myheader" value="on" show-this-page="1" />
<sethtmlpagefooter name="myfooter" value="on" />


<table>

    <tr>
        <td class="sirajganj">
            <p style="font-size:18px; font-weight:bold;">Sirajganj Shop</p>
            <p style="">Bogra Bus Stand Road (Opposite Of Christrian Graveyard), Sirajganj - 6700</p>
            <p style="">Email: support@sirajganjshop.com</p>
            <p style="">Phone: 01705489900</p>
        </td>
    </tr>

</table>


<table style="margin-top:40px;">

    <tr>
        <td class="sirajganj">
            <p style="font-size:18px; font-weight:bold;">Bill to:</p>
            <p style="">Name: Rabbi Hossain</p>
            <p style="">Address: Mirpur-10,Dhaka, Sundarban courier service, Dhaka, Bangladesh</p>
            <p style="">Phone: 01785707825</p>
        </td>

        
        <td class="sirajganj invoice_align_right" style="width:50%;">
             <p style="font-size:18px; font-weight:bold;">Payment details:</p>
             <p style="">Delivery Method: Sundarban Courier Service</p>
             <p style="">Payment Method: THE CITY BANK LIMITED</p>
             <p style="">Tran ID: fe6a698e22</p>
             <p style="">Payment Date: 2021-03-16 11:34:17</p>
        </td>
    </tr>

</table>


<table width="100%" style="margin-top:70px" class="cart_header_table">

<thead>
        <tr style="" class="tr_heading">
            <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Product name</td>
            <td style="width:25%; text-align:center;">Quantity</td>
            <td style="width:25%; text-align:center;" >Unit Price</td>
            <td style="width:25%; text-align:right;padding-right:20px;">Total</td>
        </tr>
</thead>



<tbody class="cart_tbody">
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>

        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>

        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>

        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;">Computer</td>
        <td style="width:25%; text-align:center;">2</td>
        <td style="width:25%; text-align:center;" >20000  &nbsp;&nbsp;TK</td>
        <td style="width:25%; text-align:right;padding-right:20px;"> 40000 &nbsp;&nbsp;TK</td>
        </tr>
</tbody>


<tfoot>
        <tr style="">
        <td style="width:25%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;"></td>
        <td style="width:25%; text-align:center;"></td>
        <td style="width:25%; text-align:center;" >Grand total</td>
        <td style="width:25%; text-align:right;padding-right:20px; padding-top:20px; padding-bottom:20px;"> 160000 &nbsp;&nbsp;TK</td>
        </tr>
</tfoot>


</table>


<table style="margin-top:70px;">

<tbody>

<tr style="">
        <td style="width:20%; text-align:left;padding-top:10px;padding-bottom:10px;padding-left:20px;"></td>
        <td style="width:30%; text-align:center;">
        <p> ** Thanks for being with SirajganjShop **</p>
        <p> Powered by Rabbi Hossain</p>
        <p> https://www.facebook.com/rabbihossain00</p>
        </td>
        <td style="width:25%; text-align:center;" ></td>
        </tr>
</tbody>
</table>

</body>
</html>

';

require_once $path . 'vendor/autoload.php';
$mpdf = new \Mpdf\Mpdf([
	'margin_left' =>10,
	'margin_right' =>10,
	'margin_top' => 48,
	'margin_bottom' => 0,
	'margin_header' => 10,
	'margin_footer' => 10,
]);
$mpdf->SetProtection(array('print'));
$mpdf->SetTitle("Invoice || #23332365989658");
$mpdf->SetAuthor("Rabbi Hossain");
$mpdf->SetWatermarkImage('unpaid_seal.jpg', 0.25, array(40,30), array(95,5));
$mpdf->showWatermarkImage = true;
$mpdf->SetWatermarkText("Unpaid");
$mpdf->showWatermarkText = true;
$mpdf->watermark_font = 'DejaVuSansCondensed';
$mpdf->watermarkTextAlpha = 0.1;
$mpdf->WriteHTML($css,\Mpdf\HTMLParserMode::HEADER_CSS); 
$mpdf->WriteHTML($html);
// $mpdf->Output('23156987458','I'); // static file name
$mpdf->Output($file_name,'I'); // dynamic file name
?>