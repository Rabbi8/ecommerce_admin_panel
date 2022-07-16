<?php
require('inc/header.inc.php');




//for input value
if(isset($_GET['id']) && $_GET['id']!=''){
   $id=get_safe_value($conn,$_GET['id']);
   $sql="SELECT * FROM `categories` WHERE id='$id'";
   $res=mysqli_query($conn,$sql);
   $count=mysqli_num_rows($res);
   if($count>0){ // যদি কেউ url বারে manually কিছু লিখে  তাহলে categories পেইজে নিয়ে যাবে। 
    $row=mysqli_fetch_assoc($res);
    $categories=$row['categories'];
   }else{
       header('location:categories.php');
       die();
   }
   
}



?>






<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Categories</strong><small> Add</small></div>
                        <div class="card-body card-block">
                            <form action="store.php" method="POST">
                           <div class="form-group">
                           <label for="categories" class=" form-control-label">Categories name</label>
                           <input name="categories_name" type="text" required id="categories" placeholder="Enter your categories name" value="<?php echo $categories;?>" class="form-control" >
                           <input type="hidden" name="id" value="<?php echo $id ;?>">
                           </div>
                              
                           <button name="update_categories_submit" type="submit" id="payment-button" class="btn btn-lg btn-info btn-block">
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









<?php require('inc/footer.inc.php');?>

<?php unset($_SESSION['categories_exist']);?>
