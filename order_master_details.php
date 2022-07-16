<?php 
require('inc/header.inc.php');
if(isset($_GET['id'])){
   $invoice_no=mysqli_real_escape_string($conn,$_GET['id']);
}

function get_product($conn,$limit='',$cat_id='',$product_id='',$product_id_for_order_details=''){
   $sql="SELECT product.*,categories.categories,categories.id as categories_table_id FROM `product`,`categories` Where  product.categories_id=categories.id";
     if($cat_id!=''){
        $sql.=" && categories.id=$cat_id ";
    }
   if($product_id!=''){
        $sql.=" && product.status=1 && product.id=$product_id";
    }
    if($product_id_for_order_details!=''){
        $sql.=" && product.id=$product_id_for_order_details ";
    }
   $sql.=" ORDER BY product.id DESC";
    if($limit!=''){// সাধারণত LIMIT সবার শেষে লিখতে হয়। 
        $sql.=" LIMIT $limit";
    }
    //  echo $sql;
    $res=mysqli_query($conn,$sql);
    $get_product=array();// যদি array তে কোন value না থাকে, সেই ক্ষেত্রে Blank array হিসেবে এটি নেয়া হয়েছে। 
    while($row=mysqli_fetch_assoc($res)){
        $get_product[]=$row;
    };
//     echo "<pre>";
//    print_r($get_product);
   return $get_product;
}





?>

         <div class="content pb-0">
            <div class="orders">
               <div class="row">
                  <div class="col-xl-12">
                     <div class="card">
                        <div class="card-body">
                           <h4 class="box-title">Order Details </h4>
                        </div>
                        <div class="card-body--">
                           <div class="table-stats order-table ov-h">
                           <table width="100%">
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">products</th>
                                            <th class="product-name">name of products</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-quantity">Total Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $sql="SELECT order_details.*,order_no.* FROM `order_no`,`order_details` WHERE order_no.invoice_no=order_details.order_id  && order_no.invoice_no='$invoice_no'";
                                        $res=mysqli_query($conn,$sql);
                                        $gt=0;
                                        while($row=mysqli_fetch_assoc($res)){
                                        $pid=$row['product_id'];
                                        $get_product=get_product($conn,'','','',$pid);
                                        $gt=$gt+$row['price'];
                                        $order_status=$row['order_status'];
                                        ?>
                                        <tr>
                                            <td class="product-thumbnail"><a href="#"><img style="width:50px;height:50px;" src="<?php echo show_product_image.$get_product[0]['image'];?>" alt="product img" /></a></td>
                                            <td class="product-name"><a href="#"><?php echo $get_product[0]['name'];?></a></td>
                                            <td class="product-price"><span class="amount"><?php $price=$row['price']/$row['qty']; echo $price;?></span></td>
                                            <td class="product-quantity"><?php echo $row['qty'];?></td>
                                            <td class="product-quantity"><?php echo $row['price'];?></td>
                                        </tr>
                                        <?php }?>

                                        <tr>
                                            <td colspan="3">Grand Total</td>
                                            <td colspan="2">৳<?php echo $gt;?></td>
                                            
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="">
                                <strong>Address</strong>
                                <small>
                                    <?php
                                    $sql2="SELECT * FROM `order_no` WHERE invoice_no='$invoice_no'";
                                    $res2=mysqli_query($conn,$sql2);
                                    $row2=mysqli_fetch_assoc($res2);
                                    echo $row2['address'].'/'.$row2['city'].'/'.$row2['pincode'];
                                    
                                    ;?>
                                </small>
                                    
                                 </div>

                                <div class="">
                                <strong>Order Status :</strong>
                                <small>
                                    <?php
                                    $sql1="SELECT * FROM `order_no`,`order_status` WHERE order_no.order_status=order_status.id && invoice_no='$invoice_no'";
                                    $res1=mysqli_query($conn,$sql1);
                                    $row1=mysqli_fetch_assoc($res1);
                                    echo $row1['status_name'];
                                    
                                    ;?>
                                </small>


                                    <div>
                                    <?php 
                                    $sql3="SELECT * FROM `order_status`";
                                    $res3=mysqli_query($conn,$sql3);
                                    ?>
                                    
                                    <form  action="store.php" method="POST">
                                          <select  name="order_status_name" id="">

                                          <?php while($row5=mysqli_fetch_assoc($res3)){ ;?>
                                             <?php
                                             
                                                if($row1['status_name']==$row5['status_name']){
                                                   echo "<option value=".$row5['id']." selected>".$row5['status_name']."</option>";
                                                }else{
                                                   echo "<option value=".$row5['id'].">".$row5['status_name']."</option>";
                                                }
                                                
                                                
                                                ;?>
                                                
                                          <?php } ;?>

                                          </select>
                                          <input type="hidden" name='invoice_no' value="<?php  echo $invoice_no;?>">
                                       <button type='submit' name='order_status_submit'>Submit</button>
                                    </form>
                                    </div>
                           </div>
                           </div>
                           
                        </div>
                     </div>
                  </div>
               </div>
            </div>
		  </div>

         <?php require('inc/footer.inc.php')?>