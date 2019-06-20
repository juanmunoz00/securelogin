<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
<title>RSA</title>
</head>

<body>

<center>
<div style="width: 80%; position:absolute; left:10%; top:0%; z-index:1">
<br />
<div class="tabArea" align="center">
  <a class="tab" href="example.php">Example</a>
      <a class="tab" href="about.html">About RSA</a> 
      <a class="tab" href="DigitalSignature.html">About Digital Signature</a> 
</div>

<div class="Paragraph">
<?php
include('rsa.class.php');
$RSA = new RSA();

/* Example */
echo"<i>Keys:</i><br />";
$keys = $RSA->generate_keys ('9990454949', '9990450271', 1);

//$message="هذا نص عربي بتنسيق مجموعة المحارف العالمية";
$message="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
Excepteur sint occaecat 
cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
$encoded = $RSA->encrypt ($message, $keys[1], $keys[0], 5);
$decoded = $RSA->decrypt ($encoded, $keys[2], $keys[0]);

//echo "<b>Message:</b> $message<br />\n";
//echo "<b>Encoded:</b> $encoded<br />\n";
echo "<b>Decoded:</b> $decoded<br />\n";
echo "Success: ".(($decoded == $message) ? "True" : "False")."<hr />\n";

?>
</div>
</center>
          <script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
          </script>
          <script type="text/javascript">
          _uacct = "UA-1268287-1";
          urchinTracker();
          </script>
</body>
</html>
