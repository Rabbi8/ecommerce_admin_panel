<?php 
require('inc/header.inc.php');
$sql="SELECT product.*,categories.categories FROM product,categories WHERE product.categories_id=categories.id order by product.id DESC";
$res=mysqli_query($conn,$sql);

//product active, deactive
if(isset($_GET['operation']) && $_GET['operation']!=''){
    $operation=get_safe_value($conn,$_GET['operation']);
    $id=get_safe_value($conn,$_GET['id']);
    if($operation=='active'){
        $status=1;
    }else{
        $status=0;
    }
    $sql1="UPDATE product SET `status`='$status' WHERE `id`='$id'";
    $res1=mysqli_query($conn,$sql1);
    
}

// product delete
if(isset($_GET['type'])){
    $type=get_safe_value($conn,$_GET['type']);
    $id=get_safe_value($conn,$_GET['id']);
    $sql2="DELETE FROM `product` where id='$id'";
    $res2=mysqli_query($conn,$sql2);


}




?>

         <div class="content pb-0">
            <div class="orders">
               <div class="row">
                  <div class="col-xl-12">
                     <div class="card">
                        <div class="card-body">
                           <h4 class="box-title">Product </h4>
                           <a href="add_product.php"><h4>Add product</h4></a>
                           
                        </div>
                        <div class="card-body--">
                           <div class="table-stats order-table ov-h">
                              <table class="table ">
                                 <thead>
                                    <tr>
                                       <th class="serial">#</th> 
                                       <th>ID</th>
                                       <th>Categories</th>
                                       <th>Name</th>
                                       <th>Image</th>
                                       <th>MRP</th>
                                       <th>Price</th>
                                       <th>Qty</th>
                                       <th></th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                 <?php 
                                 $i=1; 
                                 while($row=mysqli_fetch_assoc($res)){ ?>

                                            
                                            <tr>
                                            <td class="serial"><?php echo $i++;?></td>
                                            <td><?php echo $row['id'];?></td>
                                            <td><?php echo $row['categories']; ?></td>
                                            <td><?php echo $row['name']; ?></td>
                                            <td><img src="<?php echo IMAGE_SITE_PATH.$row['image']; ?>" alt=""></td>
                                            <td><?php echo $row['mrp']; ?></td>
                                            <td><?php echo $row['price']; ?></td>
                                            <td><?php echo $row['qty']; ?></td>
                                            <td>
                                            <?php
                                            if($row['status']==1){
                                                echo '<span class="badge badge-complete" > <a  href="?operation=deactive&id='.$row['id'].'">Active</a></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
                                            }else{
                                                echo '<span class="badge badge-pending" > <a  href="?operation=active&id='.$row['id'].'">Deactive</a></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
                                            };
                                            echo "<span class='badge badge-edit' ><a  href='update_product.php?id=".$row['id']."' target='_blank'>edit</a></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

                                            echo "<span class='badge badge-delete' ><a  href='?type=delete&id=".$row['id']."'>Delete</a></span></span> &nbsp;&nbsp;&nbsp;&nbsp;";
                                            ?>
                                            </td>
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
         <?php require('script.php');?>
         <?php require('inc/footer.inc.php')?>
         <?php
         
         unset($_SESSION['product_updated']);
         unset($_SESSION['product_added']);
         
         ?>