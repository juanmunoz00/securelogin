<?php
	//Fields valid, connect to the database
	//$shareddb1b.hosting.stackcp.net="shareddb1b.hosting.stackcp.net";
	$server="localhost";//"shareddb1b.hosting.stackcp.net";
	/*
	$username="cl45-synertst69";
	$password="Ew.VcNW^T";
	$database="cl45-synertst69";
	
	$username="bmdhostc_jamunoz";
	$password="x$wfT)P}~Q(*";
	$database="bmdhostc_cl45-synertst69";	DB:bmdhostc_synerUser:bmdhostc_synerpw:]IPs=8_?TT1,		
	*/	$username="bmdhostc_syner";	$password="]IPs=8_?TT1,";	$database="bmdhostc_syner";	
	//$link=mysqli_connect($shareddb1b.hosting.stackcp.net, $username, $password, $database);
	$link=mysqli_connect($server, $username, $password, $database);

	// Check connection
	if ($link->connect_error) {
		die("Connection failed: " . $link->connect_error);
	} 
		
?>