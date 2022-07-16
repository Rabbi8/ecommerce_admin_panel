<?php
require('inc/header.inc.php');
$sql="SELECT * FROM categories";
$res=mysqli_query($conn,$sql);

?>






<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Sub Categories</strong><small> Add</small></div>
                        <div class="card-body card-block">
                            <form action="store.php" method="POST">

                           <div class="form-group">
                           <label for="categories_name" class=" form-control-label">Sub Categories name</label>
                           <select name="categories_id" id="categories_name"  class="form-control">
                              <option value="">Select</option>
                              <?php while($row=mysqli_fetch_assoc($res)){?>
                              <option value="<?php echo $row['id']?>"><?php echo $row['categories']?></option>
                              <?php }?>
                           </select>
                           </div>

                           <div class="form-group">
                           <label for="sub_categories_name" class=" form-control-label">Sub Categories name</label>
                           <input name="sub_categories_name" type="text" required id="sub_categories_name" placeholder="Enter your sub categories name" class="form-control" >
                           </div>
                              
                           <button name="add_sub_categories_submit" type="submit" id="payment-button" class="btn btn-lg btn-info btn-block">
                           <span id="payment-button-amount">Submit</span>
                           </button>
                           </form>
                           <div class="login_failed">
                              <?php
                              if(isset($_SESSION['categories_exist'])){
                                 echo $_SESSION['categories_exist'];
                              };
                              ?>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>









<?php require('script.php');?>
<?php require('inc/footer.inc.php');?>
<?php 
unset($_SESSION['sub_categories_exist']);
unset($_SESSION['button']);
?>