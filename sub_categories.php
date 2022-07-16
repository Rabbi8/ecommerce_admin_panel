<?php 
require('inc/header.inc.php');
$sql="SELECT * FROM `sub_categories` ORDER BY p_sub_categories_id ASC";
$res=mysqli_query($conn,$sql);
//categories active, deactive
if(isset($_GET['operation']) && $_GET['operation']!=''){
    $operation=get_safe_value($conn,$_GET['operation']);
    $id=get_safe_value($conn,$_GET['id']);
    if($operation=='active'){
        $status=1;
    }else{
        $status=0;
    }
    $sql1="UPDATE `sub_categories` SET `sub_categories_status`='$status' WHERE `p_sub_categories_id`='$id'";
    $res1=mysqli_query($conn,$sql1);
    
}

// categories delete
if(isset($_GET['type'])){
    $type=get_safe_value($conn,$_GET['type']);
    $id=get_safe_value($conn,$_GET['id']);
    $sql2="DELETE FROM `sub_categories` where p_sub_categories_id='$id'";
    $res2=mysqli_query($conn,$sql2);


}




?>

         <div class="content pb-0">
            <div class="orders">
               <div class="row">
                  <div class="col-xl-12">
                     <div class="card">
                        <div class="card-body">
                           <h4 class="box-title">Sub Categories </h4>
                           <a href="add_sub_categories.php"><h4>Add sub categories</h4></a>
                           
                        </div>
                        <div class="card-body--">
                           <div class="table-stats order-table ov-h">
                              <table class="table ">
                                 <thead>
                                    <tr>
                                       <th class="serial">#</th> 
                                       <th>ID</th>
                                       <th>Categories</th>
                                       <th></th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                 <?php 
                                 $i=1; 
                                 while($row=mysqli_fetch_assoc($res)){ ?>

                                            
                                            <tr>
                                            <td class="serial"><?php echo $i++;?></td>
                                            <td><?php echo $row['p_sub_categories_id'];?></td>
                                            <td><?php echo $row['p_sub_categories_name']; ?></td>
                                            <td>
                                            <?php
                                            if($row['sub_categories_status']==1){
                                                echo '<span class="badge badge-complete" > <a  href="?operation=deactive&id='.$row['p_sub_categories_id'].'">Active</a></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
                                            }else{
                                                echo '<span class="badge badge-pending" > <a  href="?operation=active&id='.$row['p_sub_categories_id'].'">Deactive</a></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
                                            };
                                            echo "<span class='badge badge-edit' ><a  href='update_categories.php?id=".$row['p_sub_categories_id']."' target='_blank'>edit</a></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";

                                            echo "<span class='badge badge-delete' ><a  href='?type=delete&id=".$row['p_sub_categories_id']."'>Delete</a></span></span> &nbsp;&nbsp;&nbsp;&nbsp;";
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

         
         <?php 
         require('script.php');
         require('inc/footer.inc.php')
         
         ?>