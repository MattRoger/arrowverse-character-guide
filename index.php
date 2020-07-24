<?php
include("inc/functions.php");
$catalog=get_random_array();
include("inc/header.php");

?>
<div class = "wrapper">
  <?php
 foreach ($catalog as $item) {
   echo get_item_html($item);
  }
  
  ?>
</div>
<?php
include("inc/footer.php");

?>
</body>
</html>