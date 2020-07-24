<?php
include("inc/functions.php");
$catalog=full_catalog_array();
include("inc/header.php");

?>
<div class = "wrapper">
  <?php
 foreach ($catalog as $item) {
   echo get_item_html($item);
  }
  
  ?>
</div>

</body>
</html>