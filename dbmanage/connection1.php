<?php
	//Fields valid, connect to the database
	$shareddb1b.hosting.stackcp.net="shareddb1b.hosting.stackcp.net";
	$username="cl45-synertst69";
	$password="Ew.VcNW^T";
	$database="cl45-synertst69";

	$link=mysqli_connect($shareddb1b.hosting.stackcp.net, $username, $password, $database);

	// Check connection
	if ($link->connect_error) {
		die("Connection failed: " . $link->connect_error);
	} 
		
?>