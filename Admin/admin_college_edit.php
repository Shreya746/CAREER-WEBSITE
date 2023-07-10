<?php
	session_start();
	require_once "../functions/admin.php";
	$title = "Edit College";
	require_once "../template/headernormal.php";
	require_once "../functions/database_functions.php";
	$conn = db_connect();

	if(isset($_GET['college_id'])){
		$college_id = $_GET['college_id'];
	} else {
		echo "Empty query!";
		exit;
	}

	if(!isset($college_id)){
		echo "Empty college_id! check again!";
		exit;
	}

	$query = "SELECT * FROM colleges WHERE college_id = '{$college_id}'";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo $err = "Can't retrieve data ";
		exit;
	}else{
		$row = mysqli_fetch_assoc($result);
	}
	if(isset($_POST['edit'])){
		$isbn = trim($_POST['isbn']);
		$data = "";
		foreach($_POST as $k => $v){
			if(!in_array($k, ['edit', 'isbn'])){
				if(!empty($data)) $data .=", ";
				$data .= "`{$k}` = '".(mysqli_real_escape_string($conn, $v))."'";
			}
		}


		$query = "UPDATE colleges set $data where college_id = '{$college_id}'";
		$result = mysqli_query($conn, $query);
		if($result){
			$_SESSION['college_success'] = "College Details has been updated successfully";
			header("Location: admin_college.php");
		} else {
			$err =  "Can't update data " . mysqli_error($conn);
		}
	}
?>
	<h4 class="fw-bolder text-center"><?=$title ?></h4>
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
						<form method="post" action="admin_edit.php?college_id=<?php echo $row['college_id'];?>" enctype="multipart/form-data">
								<div class="mb-3">
									<label class="control-label">ISBN</label>
									<input class="form-control rounded-0" type="text" name="isbn" value="<?php echo $row['college_id'];?>" readOnly="true">
								</div>
								<div class="mb-3">
									<label class="control-label">Title</label>
									<input class="form-control rounded-0" type="text" name="college_name" value="<?php echo $row['college_name'];?>" required>
								</div>
								<div class="mb-3">
									<label class="control-label">Description</label>
									<textarea class="form-control rounded-0" name="college_descr" cols="40" rows="5"><?php echo $row['college_descr'];?></textarea>
								</div>
								<div class="mb-3">
									<label class="control-label">Placements</label>
									<input class="form-control rounded-0" type="text" name="placements" value="<?php echo $row['placements'];?>" required>
								</div>
								<div class="text-center">
									<button type="submit" name="edit"  class="btn btn-primary btn-sm rounded-0">Update</button>
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
	require "../template/footer.php"
?>