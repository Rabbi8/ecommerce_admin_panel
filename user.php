<?php 
require('inc/header.inc.php');
$sql="SELECT * FROM `users` ORDER BY users.id DESC";
$res=mysqli_query($conn,$sql);



// for row  delete
// if(isset($_GET['type'])){
//     $type=get_safe_value($conn,$_GET['type']);
//     $id=get_safe_value($conn,$_GET['id']);
//     $sql2="DELETE FROM `contact_us` where id='$id'";
//     $res2=mysqli_query($conn,$sql2);


// }




?>

         <div class="content pb-0">
            <div class="orders">
               <div class="row">
                  <div class="col-xl-12">
                     <div class="card">
                        <div class="card-body">
                           <h4 class="box-title">Users </h4>
                        </div>
                        <div class="card-body--">
                           <div class="table-stats order-table ov-h">
                              <table class="table ">
                                 <thead>
                                    <tr>
                                       <th class="serial">#</th> 
                                       <th>ID</th>
                                       <th>Name</th>
                                       <th>Email</th>
                                       <th>Mobile</th>
                                       <th>Date</th>
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
                                            <td><?php echo $row['name']; ?></td>
                                            <td><?php echo $row['email']; ?></td>
                                            <td><?php echo $row['mobile']; ?></td>
                                            <td><?php echo $row['added_on']; ?></td>
                                            <td>
                                            <?php
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

         <?php require('inc/footer.inc.php')?>