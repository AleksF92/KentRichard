<!DOCTYPE html>
<html lang="no">
	<head>
		<?php include_once("include/settings.php"); ?>
		<?php include_once("include/functions.php"); ?>
		<title>Popup - Forum</title>
	</head>

	<body>
		<!-- Content -->
		<?php include_once("content/menu.php"); ?>

		<div class="container">
			<div class="row">
				<h1>Forum</h1>
			</div>
			
			<div class="row forum">
				<div class="container description">
					<div class="col-sm-6 title">
						<div class="row">
							<p>Topic</p>
						</div>
					</div>
					<div class="col-sm-2 activity">
						<div class="row">
							<p>Activity</p>
						</div>
					</div>
					<div class="col-sm-2 created">
						<div class="row">
							<p>Created by</p>
						</div>
					</div>
					<div class="col-sm-2 comment">
						<div class="row">
							<p>Last comment</p>
						</div>
					</div>
				</div>

				<?php
					//Grab some data
					$sql = "SELECT * FROM forum_topics";
					$result = DB_Query($sql);

					// output data of each row
					$altColor = false;
					while ($row = $result->fetch_assoc()) {
						//Create topic element
						echo '<div class="container topic' . (($altColor) ? ' alt' : '') . '">';
							echo '<div class="col-sm-6 title">';
								echo '<div class="row">';
									echo '<a href="#">' . $row["title"] . '</a>';
								echo '</div>';
							echo '</div>';
							echo '<div class="col-sm-2 activity">';
								echo '<div class="row">';
									echo '<p>' . $row["views"] . ' views</p>';
								echo '</div>';
								echo '<div class="row">';
									echo '<p>' . $row["replies"] . ' replies</p>';
								echo '</div>';
							echo '</div>';
							echo '<div class="col-sm-2 created">';
								echo '<div class="row">';
									echo '<a href="#">' . DB_GetUsername($row["createdBy"]) . '</a>';
								echo '</div>';
								echo '<div class="row">';
									echo '<p>' . $row["created"] . '</p>';
								echo '</div>';
							echo '</div>';
							echo '<div class="col-sm-2 comment">';
								echo '<div class="row">';
									echo '<a href="#">' . DB_GetUsername($row["commentBy"]) . '</a>';
								echo '</div>';
								echo '<div class="row">';
									echo '<p>' . $row["comment"] . '</p>';
								echo '</div>';
							echo '</div>';
						echo '</div>';

						$altColor = !$altColor;
					}
				?>
			</div>
		</div>

		<?php include_once("include/scripts.php"); ?>
	</body>
</html>