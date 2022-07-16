<?php
require('inc/header.inc.php');

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
                           <input name="categories_name" type="text" required id="categories" placeholder="Enter your categories name" class="form-control" >
                           </div>
                              
                           <button name="add_categories_submit" type="submit" id="payment-button" class="btn btn-lg btn-info btn-block">
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