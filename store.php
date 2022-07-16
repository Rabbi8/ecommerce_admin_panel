<?php
session_start();
require('inc/connection.inc.php');
require('inc/functions.inc.php');



 //for login page

if(isset($_POST['submit'])){
   $username=get_safe_value($conn,$_POST['username']);
   $password=get_safe_value($conn,$_POST['password']);
   $sql="SELECT * FROM `admin_users` WHERE `username`='$username' AND `password`='$password'";
   $res=mysqli_query($conn,$sql);
   $row=mysqli_fetch_assoc($res);
   $user_id=$row['id'];
   $count=mysqli_num_rows($res);
   if($count==1){
      header("location:categories.php");
      $_SESSION['admin_user']='yes';
      $_SESSION['admin_username']=$username;
      $_SESSION['admin_user_id']=$user_id;
   }
   else{
       $_SESSION['msg']='please enter right information';
       header('location:login.php');
         
   };
}


//for add_categories  page

if(isset($_POST['add_categories_submit'])){
   
      $categories=get_safe_value($conn,$_POST['categories_name']);
      $sql1="SELECT * FROM `categories` WHERE categories='$categories'";
      $res1=mysqli_query($conn,$sql1);
      $count1=mysqli_num_rows($res1);
      if($count1>0){
         $_SESSION['categories_exist']='Categories already Exist. Please create a unique categories name.';
          header('location:add_categories.php');
      }
      else{
         $sql2="INSERT INTO `categories` VALUES(NULL,'$categories','1')";
         $res2=mysqli_query($conn,$sql2);
         if($res2){
            header('location:categories.php');
         }else{
            header('location:add_categories.php');
         }
      };
      
   };


   // for update_categories

   if(isset($_POST['update_categories_submit'])){
      
          $id=get_safe_value($conn,$_POST['id']);
          $categories=mysqli_real_escape_string($conn,$_POST['categories_name']);
          $sql2="SELECT * FROM `categories` WHERE categories='$categories'";
          $res2=mysqli_query($conn,$sql2);
          $count=mysqli_num_rows($res2);
  
          if($count>0){
           $_SESSION['categories_exist']='Categories already Exist. Please create a unique categories name.';
               header('location:update_categories.php?id='.$id.'');
          }else{
              $sql1="UPDATE `categories` SET categories='$categories' WHERE id='$id'";
              $res1=mysqli_query($conn,$sql1);
              if($res1){
               header('location:categories.php');
              }
          }
          
      }

//for add_sub_categories  page

if(isset($_POST['add_sub_categories_submit'])){
   
   $categories_id=get_safe_value($conn,$_POST['categories_id']);
   $sub_categories_name=get_safe_value($conn,$_POST['sub_categories_name']);
   $sql1="SELECT * FROM `sub_categories` WHERE p_sub_categories_name='$sub_categories_name'";
   $res1=mysqli_query($conn,$sql1);
   $count1=mysqli_num_rows($res1);
   if($count1>0){
      $_SESSION['sub_categories_exist']='Sub Categories already Exist. Please create a unique Sub categories name.';
      $_SESSION['status']="sub categories added";
      $_SESSION['button']="well done";
       header('location:add_sub_categories.php');
   }
   else{
      $sql2="INSERT INTO `sub_categories` VALUES('','$categories_id','$sub_categories_name','1')";
      $res2=mysqli_query($conn,$sql2);
      if($res2){
         header('location:sub_categories.php');
      }else{
         header('location:add_sub_categories.php');
      }
   };
   
};


//for add_product  page

if(isset($_POST['add_product_submit'])){
   if($_FILES['file']['type']!='image/jpeg' && $_FILES['file']['type']!='image/png' && $_FILES['file']['type']!='image/jpg'){
      $_SESSION['not_support_image']="Please submit a jpg,png or jpeg file";
      header('location:add_product.php');
     
   }else{
    //file or image receive
   $file=$_FILES['file'];
   $file_name=rand(111111111,99999999).'_'.$file['name'];
   $file_tmp_name=$file['tmp_name'];
   $folder=PRODUCT_IMAGE_SERVER_PATH;
   $destination=$folder.$file_name;
   move_uploaded_file($file_tmp_name,$destination);
   //file or image receive

   $categories_id=mysqli_real_escape_string($conn,$_POST['categories_id']);
   $product_name=mysqli_real_escape_string($conn,$_POST['product_name']);
   $mrp=mysqli_real_escape_string($conn,$_POST['mrp']);
   $price=mysqli_real_escape_string($conn,$_POST['price']);
   $qty=mysqli_real_escape_string($conn,$_POST['qty']);
   $short_description=mysqli_real_escape_string($conn,$_POST['short_description']);
   $description=mysqli_real_escape_string($conn,$_POST['description']);
   $best_seller=mysqli_real_escape_string($conn,$_POST['best_seller']);
   $meta_title=mysqli_real_escape_string($conn,$_POST['meta_title']);
   $meta_description=mysqli_real_escape_string($conn,$_POST['meta_description']);
   $meta_keyword=mysqli_real_escape_string($conn,$_POST['meta_keyword']);



   $sql="INSERT INTO `product` values(NULL,'$categories_id','$product_name','$mrp','$price','$qty','$file_name','$short_description','$description','$best_seller','$meta_title','$meta_description','$meta_keyword','1')";
   $res=mysqli_query($conn,$sql);
   if($res){
      $_SESSION['status']="Product added";
      $_SESSION['product_added']="Your product has been added";
      $_SESSION['button']="well done";
      header('location:product.php');
   }else{
      header('add_product.php');
   }
   }
   
}

//for update_product  page

if(isset($_POST['update_product_submit'])){
   $id=mysqli_real_escape_string($conn,$_POST['id']);

    //file or image receive
$file=$_FILES['file'];
$file_name=rand(11111111111,9999999999).'_'.$file['name'];
$file_tmp_name=$file['tmp_name'];
$folder=PRODUCT_IMAGE_SERVER_PATH;
$destination=$folder.$file_name;
move_uploaded_file($file_tmp_name,$destination);
//file or image receive

   $id=mysqli_real_escape_string($conn,$_POST['id']);
   $categories_id=mysqli_real_escape_string($conn,$_POST['categories_id']);
   $product_name=mysqli_real_escape_string($conn,$_POST['product_name']);
   $mrp=mysqli_real_escape_string($conn,$_POST['mrp']);
   $price=mysqli_real_escape_string($conn,$_POST['price']);
   $qty=mysqli_real_escape_string($conn,$_POST['qty']);
   $short_description=mysqli_real_escape_string($conn,$_POST['short_description']);
   $description=mysqli_real_escape_string($conn,$_POST['description']);
   $best_seller=mysqli_real_escape_string($conn,$_POST['best_seller']);
   $meta_title=mysqli_real_escape_string($conn,$_POST['meta_title']);
   $meta_description=mysqli_real_escape_string($conn,$_POST['meta_description']);
   $meta_keyword=mysqli_real_escape_string($conn,$_POST['meta_keyword']);

   if($_FILES['file']['name']){
      if($_FILES['file']['type']!='image/jpeg' && $_FILES['file']['type']!='image/png' && $_FILES['file']['type']!='image/jpg'){
      $_SESSION['not_support_image']="Please submit a jpg,png or jpeg file";
      header('location:update_product.php?id='.$id.'');
      $_SESSION['file_not_uploaded']='Plase submit jpeg,png or jpg';
      $_SESSION['status']='file_not_received';
      $_SESSION['button']='bad boy';
      }else{
      $sql="UPDATE `product` SET categories_id='$categories_id', name='$product_name',mrp='$mrp',price='$price',qty='$qty',image='$file_name',short_description='$short_description',description='$description',best_seller='$best_seller',meta_title='$meta_title',meta_description='$meta_description',meta_keyword='$meta_keyword' WHERE id=$id";
      }
   }else{
      $sql="UPDATE `product` SET categories_id='$categories_id', name='$product_name',mrp='$mrp',price='$price',qty='$qty',short_description='$short_description',description='$description',best_seller='$best_seller',meta_title='$meta_title',meta_description='$meta_description',meta_keyword='$meta_keyword' WHERE id=$id";
   }
   $res=mysqli_query($conn,$sql);
   if($res){
      header('location:product.php');
      $_SESSION['status']='updated';
      $_SESSION['product_updated']='Your product is updated';
      $_SESSION['button']='good boy';
   }else{
      header('update_product.php?id='.$id.'');
   }
   }
  
// for change order status

if(isset($_POST['order_status_submit'])){
   $invoice_no=$_POST['invoice_no'];
   $order_status_id=$_POST['order_status_name'];
   $sql="UPDATE `order_no` SET order_status='$order_status_id' WHERE invoice_no='$invoice_no'";
   $res=mysqli_query($conn,$sql);
   if($res){
      header('location:order_master_details.php?id='.$invoice_no.'');
   }else{
      header('location:order_master_details.php?id='.$invoice_no.'');
   }
}

?>