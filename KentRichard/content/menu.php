<div class="container menu">
	<!-- <img src="img/banner.png" alt="HTML Norge Banner" width="100%"> -->
	<nav class="navbar navbar-inverse">
		<ul class="nav navbar-nav">
			<?php
				$path = $_SERVER['REQUEST_URI'];
				$activePage = substr($path, strrpos($path, "/") + 1);

				//Create navigation buttons
				$href = "";
				$name = "";
				$class = "";
				$menuButton = "";
				for ($i = 0; $i < 3; $i++) {
					//Set navigation data
					switch ($i) {
						case 0: { $href = "index"; $name = "Hjem"; break; }
						case 1: { $href = "youtube"; $name = "Youtube"; break; }
						case 2: { $href = "forum"; $name = "Forum"; break; }
					}

					//Set navigation active state
					$class = ($activePage == $href) ? 'class="active"' : '';

					//Add navigation element
					$menuButton = '<li ' . $class . '><a href="' . $href . '">' . $name . '</a></li>';
					echo $menuButton;
				}
			?>
		</ul>
	</nav>
</div>