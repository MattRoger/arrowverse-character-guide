<?php
include("inc/functions.php");
$catalog=full_catalog_array();
var_dump($catalog);
include("inc/header.php");

?>

<?php
 foreach ($catalog as $item) {
  echo get_item_html($item);
}

?>
    <!-- <div class="card" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title">Oliver Queen</h5>
          <h6 class="card-subtitle mb-2 text-muted">The Green Arrow</h6>
          <img src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.looper.com%2F148987%2Fthe-truth-about-why-arrow-is-ending%2F&psig=AOvVaw2CvUqWywL6DGGKHeFyT0J9&ust=1595573231566000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOiZ-djj4uoCFQAAAAAdAAAAABAD" class="card-img-top" alt="...">
         
          <div class="progress-bar" role="progressbar" style="width:70%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">Strength </div>
          <div class="progress-bar" role="progressbar" style="width:30%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">Attack </div>
          <div class="progress-bar" role="progressbar" style="width:70%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">Strength </div>

          <p class="card-text">Attack: 7</p>
          <div class="progress-bar w-75" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
          <p class="card-text">Defense: 7</p>
          <p class="card-text">Dexterity: 7</p>
          <p class="card-text">Intelligence: 7</p>
          <a href="#" class="card-link">Card link</a>
          <a href="#" class="card-link">Another link</a>
        </div>
      </div> -->
</body>
</html>