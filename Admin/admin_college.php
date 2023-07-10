<?php
	session_start();
	require_once "../functions/admin.php";
	$title = "List book";
	require_once "../template/headernormal.php";
	require_once "../functions/database_functions.php";
	$conn = db_connect();
	$result = getAllCollege($conn);
?>
	<h4 class="fw-bolder text-center">Book List</h4>
	<center>
	<hr class="bg-warning" style="width:5em;height:3px;opacity:1">
	</center>
	<?php if(isset($_SESSION['college_success'])): ?>
		<div class="alert alert-success rounded-0">
			<?= $_SESSION['college_success'] ?>
		</div>
	<?php 
		unset($_SESSION['college_success']);
		endif;
	?>
	<div class="card rounded-0">
		<div class="card-body">
			<div class="container-fluid">
				<table class="table table-striped table-bordered" >
				<colgroup>
					<col width="10%">
					<col width="15%">
					<col width="15%">
					<col width="10%">
					<col width="15%">
					<col width="10%">
					<col width="15%">
					<col width="10%">
				</colgroup>
					<thead>
					<tr>
						<th>College_id</th>
						<th>College Name</th>
						<th>Image</th>
						<th>Description</th>
						<th>Placements</th>
					</tr>
					</thead>
					<tbody>
					<?php while($row = mysqli_fetch_assoc($result)){ ?>
					<tr>
						<td class="px-2 py-1 align-middle"><a href="../User/enginner.php?bookisbn=<?php echo $row['college_id']; ?>" target="_blank"><?php echo $row['college_id']; ?></a></td>
						<td class="px-2 py-1 align-middle"><?php echo $row['college_name']; ?></td>
						<td class="px-2 py-1 align-middle"><?php echo $row['college_image']; ?></td>
						<td class="px-2 py-1 align-middle"><p class="text-truncate" style="width:15em"><?php echo $row['college_descr']; ?></p></td>
                        <td class="px-2 py-1 align-middle"><p class="text-truncate" style="width:15em"><?php echo $row['placements']; ?></p></td>
						<td class="px-2 py-1 align-middle text-center">
							<div class="btn-group btn-group-sm">
								<a href="admin_college_edit.php?college_id=<?php echo $row['college_id']; ?>" class="btn btn-sm rounded-0 btn-primary" title="Edit"><i class="fa fa-edit"></i></a>
								<a href="admin_college_delete.php?college_id=<?php echo $row['college_id']; ?>" class="btn btn-sm rounded-0 btn-danger" title="Delete" onclick="if(confirm('Are you sure to delete this book?') === false) event.preventDefault()"><i class="fa fa-trash"></i></a>
							</div>
						</td>
					</tr>
					<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	

<?php
	if(isset($conn)) {mysqli_close($conn);}
	require_once "../template/footer.php";
?>