<?php
include("inc/functions.php");

if(isset($_GET["cat"])){
    if ($_GET["cat"] == "arrow") {
        $pageTitle = "Arrow";
        $section = "arrow";
    } else if ($_GET["cat"] == "flash") {
        $pageTitle = "The Flash";
        $section = "flash";
    } else if ($_GET["cat"] == "legends") {
        $pageTitle = "Legends of Tomorrow";
        $section = "legends";
    }else if ($_GET["cat"] == "supergirl") {
        $pageTitle = "Supergirl";
        $section = "supergirl";
    }else if ($_GET["cat"] == "blacklight") {
        $pageTitle = "Black Lightening";
        $section = "blacklight";
    }
}

if (empty($section)) {
    $catalog = full_catalog_array();
} else {
    $catalog = category_catalog_array($section);
};

include("inc/header.php"); ?>

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