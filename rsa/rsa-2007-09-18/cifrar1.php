
<?php
include('rsa.class.php');
include('keys.php');
$RSA = new RSA();

if ($_POST['cifrar']){
	
	$message = $_POST['mensaje'];
	
	/* Example */
	//echo"<i>Keys:</i><br />";
	$keys = $RSA->generate_keys ('9990454949', '9990450271', 0);
	//$p=select_a_key();
	//$q=select_a_key();
	//$keys= $RSA->generate_keys ($p, $q, 1);
	/*
	$message="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
	incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
	exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
	dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
	Excepteur sint occaecat 
	cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
	*/    /*    * Function for generating keys. Return array where    * $array[0] -> modulo N    * $array[1] -> public key E    * $array[2] -> private key D    * Public key pair is N and E    * Private key pair is N and D    */		
	$encoded = $RSA->encrypt ($message, $keys[1], $keys[0], 5);
	$decoded = $RSA->decrypt ($encoded, $keys[2], $keys[0]);

	//echo "<b>Message:</b> $message<br />\n";
	//echo "<b>Encoded:</b> $encoded<br />\n";
	//echo $keys[0]."</br>";
	//echo $keys[1]."</br>";
	//echo $keys[2]."</br>";
	echo "<b>Decoded:</b> $decoded<br />\n";
	//echo "Success: ".(($decoded == $message) ? "True" : "False")."<hr />\n";
	echo "</br><a href='http://medikapp.syner.info/rsa/rsa-2007-09-18/example2.php'>Regresar</a>";

}
?>