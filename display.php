<?php
require "dbconnect.php";
?>

<!DOCTYPE html>
<head>
<title>Display</title>
</head>
<body>
<div id="srcdest">
<form name="trav" method="post" action="data.php">
<input type="text" placeholder="Source" name="src" id="src" />
<input type="text" placeholder="Destination" name="dest" id="dest" /><br>
<input type="submit" name="submit" value="Submit" id="submit" />
</form>
</div>

<?php
session_start();
$src = isset($_POST['src']) ? $_POST['src'] : "";
$_SESSION['src'] = $src;
$dest = isset($_POST['dest']) ? $_POST['dest'] : "";
$_SESSION['dest'] = $dest;
?> 

</body>
</html>
