<script src="assets/js/sweet_alert.js"></script>
<?php if(isset($_SESSION['product_updated'])){ ?>
    <script>
        swal({
  title: "<?php echo $_SESSION['status'];?>",
  text: "<?php echo $_SESSION['product_updated'];?>",
  icon: "success",
  button: "<?php echo $_SESSION['button'];?>",
});
    </script>

<?php }?>

<?php if(isset($_SESSION['file_not_uploaded'])){ ?>
    <script>
        swal({
  title: "<?php echo $_SESSION['status'];?>",
  text: "<?php echo $_SESSION['file_not_uploaded'];?>",
  icon: "error",
  button: "<?php echo $_SESSION['button'];?>",
});
    </script>

<?php }?>

<?php if(isset($_SESSION['product_added'])){ ?>
    <script>
        swal({
  title: "<?php echo $_SESSION['status'];?>",
  text: "<?php echo $_SESSION['product_added'];?>",
  icon: "success",
  button: "<?php echo $_SESSION['button'];?>",
});
    </script>

<?php }?>

<?php if(isset($_SESSION['sub_categories_exist'])){ ?>
    <script>
        swal({
  title: "<?php echo $_SESSION['status'];?>",
  text: "<?php echo $_SESSION['sub_categories_exist'];?>",
  icon: "success",
  button: "<?php echo $_SESSION['button'];?>",
});
    </script>

<?php }?>
