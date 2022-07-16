<?php 
require('inc/header.inc.php');








?>

         <div class="content pb-0">
            <div class="orders">
               <div class="row">
                  <div class="col-xl-12">
                     <div class="card">
                        <div class="card-body">
                           <h4 class="box-title">Order Master </h4>
                        </div>
                        <div class="card-body--">
                           <div class="table-stats order-table ov-h">
                           <table>
                                        <thead>
                                            <tr>
                                                <th class="product-name"><span class="nobr">#sl</span></th>
                                                <th class="product-name"><span class="nobr">Invoice no</span></th>
                                                <th class="product-price"><span class="nobr"> Order date </span></th>
                                                <th class="product-stock-stauts"><span class="nobr"> Address </span></th>
                                                <th class="product-add-to-cart"><span class="nobr">Payment type</span></th>
                                                <th class="product-add-to-cart"><span class="nobr">Payment status</span></th>
                                                <th class="product-add-to-cart"><span class="nobr">Order status</span></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $sql="SELECT order_no.*,order_status.status_name FROM `order_no`,`order_status` WHERE order_no.order_status=order_status.id  order by id DESC";
                                            $res=mysqli_query($conn,$sql);
                                            $row_counts=mysqli_num_rows($res);
                                            $sl=$row_counts+1;
                                            while($row=mysqli_fetch_assoc($res)){
                                            $sl=$sl-1;
                                            
                                            ?>
                                            <tr>
                                                <td class="product-name"><a href="order_master_details.php?id=<?php echo $row['invoice_no']?>"><?php echo $sl;?></a></td>
                                                <td class="product-name"><a href="order_master_details.php?id=<?php echo $row['invoice_no']?>"><?php echo $row['invoice_no']?></a></td>
                                                <td class="product-name"><a href="order_master_details.php?id=<?php echo $row['invoice_no']?>"><?php echo $row['added_on']?></a></td>
                                                <td class="product-name" style="width:800px"><a href="order_master_details.php?id=<?php echo $row['invoice_no']?>"><?php echo $row['address']?></a></td>
                                                <td class="product-name"><a href="order_master_details.php?id=<?php echo $row['invoice_no']?>"><?php echo $row['payment_type']?></a></td>
                                                <td class="product-name"><a href="order_master_details.php?id=<?php echo $row['invoice_no']?>"><?php echo $row['payment_status']?></a></td>
                                                <td class="product-name"><a href="order_master_details.php?id=<?php echo $row['invoice_no']?>"><?php echo $row['status_name']?></a></td>
                                                
                                            </tr>
                                            <?php }?>
                                        </tbody>
                                    </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
		  </div>

         <?php require('inc/footer.inc.php')?>