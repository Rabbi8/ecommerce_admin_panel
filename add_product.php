<?php
require('inc/header.inc.php');
$sql="SELECT * FROM `categories` order by id ASC";
$res=mysqli_query($conn,$sql);
?>






<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Product</strong><small> Add</small></div>
                        <div class="card-body card-block">
                            <form action="store.php" method="POST" enctype="multipart/form-data">

                           <div class="form-group">
                           <label for="categories" class=" form-control-label">Categories name</label>
                           <select name="categories_id"  id="categories" class=" form-control">
                           <option value="">Select Categories</option>
                           <?php
                            while($row=mysqli_fetch_assoc($res)){
                                echo "<option value=".$row['id'].">".$row['categories']."</option>";
                            };
                           ?>
                           </select>
                           </div>

                           <div class="form-group">
                           <label for="best_seller" class=" form-control-label">Best Seller</label>
                           <select name="best_seller"  id="best_seller" class=" form-control">
                           <option value="">Select</option>
                           <option value="1">yes</option>
                           <option value="0">no</option>
                              
                           </select>
                           </div>

                           <div class="form-group">
                           <label for="product_name" class=" form-control-label">Product name</label>
                           <input name="product_name" type="text" required id="product_name" placeholder="Enter your product name" class="form-control" >
                           </div>

                           <div class="form-group">
                           <label for="mrp" class=" form-control-label">MRP</label>
                           <input name="mrp" type="number" required id="mrp" placeholder="Enter your product MRP" min="0" class="form-control" >
                           </div>

                           <div class="form-group">
                           <label for="price" class=" form-control-label">Price</label>
                           <input name="price" type="number" required id="price" placeholder="Enter your product price" min="0" class="form-control" >
                           </div>

                           <div class="form-group">
                           <label for="qty" class=" form-control-label">Qty</label>
                           <input name="qty" type="number" required id="qty" placeholder="Enter your product Qty" min="0" class="form-control" >
                           </div>

                           <div class="form-group">
                           <label for="image" class=" form-control-label">Image</label>
                           <input name="file" type="file"  required id="image" placeholder="Enter your product Image"  class="form-control" >
                           </div>

                           <div class="form-group">
                           <label for="short_description" class=" form-control-label">Short description</label>
                           <textarea name="short_description"  required id="short_description" placeholder="Enter your product short-description"  class="form-control" ></textarea>
                           </div>

                           <div class="form-group">
                           <label for="description" class=" form-control-label">Description</label>
                           <textarea name="description"   required  id="description" placeholder="Enter your product description"  class="form-control" ></textarea>
                           </div>

                           <div class="form-group">
                           <label for="meta_title" class=" form-control-label">Meta Title</label>
                           <textarea name="meta_title"  id="meta_title" placeholder="Enter your product meta_title"  class="form-control" ></textarea>
                           </div>

                           <div class="form-group">
                           <label for="meta_description" class=" form-control-label">Meta description</label>
                           <textarea name="meta_description"  id="meta_description" placeholder="Enter your product meta_description"  class="form-control" ></textarea>
                           </div>

                           <div class="form-group">
                           <label for="meta_keyword" class=" form-control-label">Meta keyword</label>
                           <textarea name="meta_keyword"  id="meta_keyword" placeholder="Enter your product meta_keyword"  class="form-control" ></textarea>
                           </div>


                              
                           <button name="add_product_submit" type="submit" id="payment-button" class="btn btn-lg btn-info btn-block">
                           <span id="payment-button-amount">Submit</span>
                           </button>
                           </form>
                           <div class="login_failed">
                              <?php
                              if(isset($_SESSION['not_support_image'])){
                                 echo $_SESSION['not_support_image'];
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
<?php unset($_SESSION['not_support_image']);?>