<?php
	session_start();
	// require_once "../functions/admin.php";
	$college_name = "Add new College";
	require "../template/headernormal.php";
	require "../functions/database_functions.php";
	$conn = db_connect();

	if(isset($_POST['add'])){
		$college_id = trim($_POST['college_id']);
		$college_id = mysqli_real_escape_string($conn, $college_id);
		
		$college_name = trim($_POST['college_name']);
		$college_name = mysqli_real_escape_string($conn, $college_name);
		
		$college_descr = trim($_POST['college_descr']);
		$college_descr = mysqli_real_escape_string($conn, $college_descr);

		// add image
		if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){
			$image = $_FILES['image']['name'];
			$directory_self = str_replace(basename($_SERVER['PHP_SELF']), '', $_SERVER['PHP_SELF']);
			$uploadDirectory = $_SERVER['DOCUMENT_ROOT'] . $directory_self . "../images/";
			$uploadDirectory .= $image;
			move_uploaded_file($_FILES['image']['tmp_name'], $uploadDirectory);
		}

		$query = "INSERT INTO colleges (`college_id`, `college_name`,`college_image`, `college_descr`) VALUES ('" . $college_id . "', '" . $college_name . "', '" . $image . "', '" . $college_descr . "')";
		$result = mysqli_query($conn, $query);
		if($result){
			$_SESSION['college_success'] = "New College has been added successfully";
			header("Location: ./admin_college.php");
		} else {
			$err =  "Can't add new data " . mysqli_error($conn);

		}
	}
?>
	<h4 class="fw-bolder text-center">Add New College</h4>
	<center>
	<hr class="bg-warning" style="width:5em;height:3px;opacity:1">
	</center>
	<div class="row justify-content-center">
		<div class="col-lg-6 col-md-8 col-sm-10 col-xs-12">
			<div class="card rounded-0 shadow">
				<div class="card-body">
					<div class="container-fluid">
						<?php if(isset($err)): ?>
							<div class="alert alert-danger rounded-0">
								<?= $_SESSION['err_login'] ?>
							</div>
						<?php 
							endif;
						?>
						<form method="post" action="./admin_add_college.php" enctype="multipart/form-data">
								<div class="mb-3">
									<label class="control-label">College Id</label>
									<input class="form-control rounded-0" type="text" name="college_id">
								</div>
								<div class="mb-3">
									<label class="control-label">College Name</label>
									<input class="form-control rounded-0" type="text" name="college_name" required>
								</div>
							
								<div class="mb-3">
									<label class="control-label">Image</label>
									<input class="form-control rounded-0" type="file" name="image">
								</div>
								<div class="mb-3">
									<label class="control-label">college_description</label>
									<textarea class="form-control rounded-0" name="college_descr" cols="40" rows="5"></textarea>
								</div>
								<div class="mb-3">
									<label class="control-label">placements</label>
									<textarea class="form-control rounded-0" name="college_descr" cols="40" rows="5"></textarea>
								</div>
								<div class="text-center">
									<button type="submit" name="add"  class="btn btn-primary btn-sm rounded-0">Save</button>
									<button type="reset" class="btn btn-default btn-sm rounded-0 border">Cancel</button>
								</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php
	if(isset($conn)) {mysqli_close($conn);}
	require_once "../template/footer.php";
?>