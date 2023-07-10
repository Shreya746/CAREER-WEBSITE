<?php
  session_start();
  $college_id = $_GET['college_id'];
  // connecto database
  require_once "../functions/database_functions.php";
  $conn = db_connect();
  $query = "SELECT * FROM colleges WHERE college_id ='$college_id'";
  $result = mysqli_query($conn, $query);
  if(!$result){
    echo "Can't retrieve data " . mysqli_error($conn);
    exit;
  }

  $row = mysqli_fetch_assoc($result);
  if(!$row){
    echo "Empty college";
    exit;
  }

  $title = $row['college_name'];
  require "../template/headernormal.php";
?>
      <!-- Example row of columns -->
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="engineer.php" class="text-decoration-none text-muted fw-light">Colleges</a></li>
          <li class="breadcrumb-item active" aria-current="page"><?php echo $row['college_name']; ?></li>
        </ol>
      </nav>
      <div class="row">
        <div class="col-md-6 text-center book-item">
          <div class="img-holder overflow-hidden">
          <img class="img-top" src="./images/<?php echo $row['college_image']; ?>">
          </div>
        </div>
        <div class="col-md-5">
          <div class="card rounded-0 shadow">
            <div class="card-body">
              <div class="container-fluid">
                <h4><?= $row['college_name'] ?></h4>
                <hr>
                  <p><?php echo $row['college_descr']; ?></p>
                  <h4>Details</h4>
                  <table class="table">
                    <?php foreach($row as $key => $value){
                      if($key == "college_descr" || $key == "college_image" || $key == "college_id" || $key == "college_name"){
                        continue;
                      }
                      switch($key){
                        case "placements":
                          $key = "About Placements : ";
                          break;
                        case "college_name":
                          $key = "Title";
                          break;
                        case "book_author":
                          $key = "Author";
                          break;
                        case "book_price":
                          $key = "Price";
                          break;
                      }
                    ?>
                    <tr>
                      <td><?php echo "<strong>$key"; ?></td>
                      <td><?php echo $value; ?></td>
                    </tr>
                    <?php 
                      } 
                      if(isset($conn)) {mysqli_close($conn); }
                    ?>
                  </table>

              </div>
            </div>
          </div>
       	</div>
      </div>
<?php
  require "../template/footer.php";
?>