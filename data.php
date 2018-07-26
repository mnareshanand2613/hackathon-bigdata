<!DOCTYPE html>
<html>
<head>
<title>Data</title>
<style>
.samp{
    display: none;
}
</style>
</head>
<?php
require "disp.php";
require "dbconnect.php";

$sql = "SELECT * FROM travel WHERE travel.Source = '$src' OR travel.Destination = '$dest'";
$res = $conn->query($sql);

if($res->num_rows > 0)
{
    $rail = 0;
    $flight = 0;
    $bus = 0;
    while($row = $res->fetch_assoc())
    {
        
        if($row["Mode"] == "Rail")
        $rail++;
        if($row["Mode"] == "Flight")
        $flight++;
        if($row["Mode"] == "Bus")
        $bus++;
        
    }
}
else{
    echo "No matching records !";
    }
$pref = max($rail, $flight, $bus);
if ($pref == $rail)
$prefs = "Rail";
if ($pref == $flight)
$prefs.= ", Flight";
if ($pref == $bus)
$prefs.= ", Bus";    
?>




<body>
<script type="text/javascript">
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light1", // "light2", "dark1", "dark2"
	animationEnabled: true, // change to true		
	title:{
		text: "Transport Statistics"
	},
	data: [
	{
		// Change type to "bar", "area", "spline", "pie",etc.
		type: "column",
		dataPoints: [
			{ label: "Rail",  y: <?php echo $rail; ?>  },
			{ label: "Flight", y: <?php echo $flight; ?>  },
			{ label: "Bus", y: <?php echo $bus; ?> },
			
		]
	}
	]
});
chart.render();

}
</script>
<center>
<h1> Transport Statistics from <?php echo $src; ?> to <?php echo $dest; ?> </h1>
<p>
<div id="chartContainer" style="height: 300px; width: 70%;"></div>
</p>
<b>Most preferred Transport : </b><?php echo $prefs ?>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"> </script><br><br>
<a href="disp.php">Go Back..</a>
</center>
</body>
</html>