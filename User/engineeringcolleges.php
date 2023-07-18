<?php
  session_start();
  $count = 0;
  // connecto database
  require_once "../functions/database_functions.php";
  $conn = db_connect();

  $query = "SELECT college_id, college_image, college_name FROM colleges WHERE college_id LIKE 'en%'";
  $result = mysqli_query($conn, $query);
  if(!$result){
    echo "Can't retrieve data " . mysqli_error($conn);
    exit;
  }

  $title = "List of colleges";
  require_once "../template/headernormal.php";
?>
  <p class="lead text-center text-muted">List of All colleges</p>
    <?php for($i = 0; $i < mysqli_num_rows($result); $i++){ ?>
      <div class="row">
        <?php while($college = mysqli_fetch_assoc($result)){ ?>
          <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 py-3 mb-3">
      		<a href="engineer.php?college_id=<?php echo $college['college_id']; ?>" class="card rounded-0 shadow college-item text-reset text-decoration-none">
            <div class="img-holder overflow-hidden">
              <img class="img-top" src="./images/<?php echo $college['college_image']; ?>">
            </div>
            <div class="card-body">
              <div class="card-title fw-bolder h5 text-center"><?= $college['college_name'] ?></div>
            </div>
          </a>
      	</div>
        <?php
          $count++;
          if($count >= 4){
              $count = 0;
              break;
            }
          } ?> 
      </div>
<?php
      }
  if(isset($conn)) { mysqli_close($conn); }
  require_once "../template/footer.php";
?>