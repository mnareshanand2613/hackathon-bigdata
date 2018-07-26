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

$sql = "SELECT * FROM travel";
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
?>




<body>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<input class="btn btn-primary" type="button" name="rail" value="Rail" id="rail" />
<input class="btn btn-primary" type="button" name="flight" value="Flight" id="flight" />
<input class="btn btn-primary" type="button" name="bus" value="Bus" id="bus" />
<script type="text/javascript">
rail.onclick = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light1", 
	animationEnabled: true, 		
	title:{
		text: "Rail Statistics"
	},
	data: [
	{
		
		type: "column",
		dataPoints: [
			{ label: "Rail",  y: <?php echo $rail; ?>  },
			
		]
	}
	]
});
chart.render();
}
flight.onclick = function () {
var chart1 = new CanvasJS.Chart("chartContainer", {
	theme: "light1", 
	animationEnabled: true, 		
	title:{
		text: "Flight Statistics"
	},
	data: [
	{
		
		type: "column",
		dataPoints: [
			{ label: "Flight", y: <?php echo $flight; ?>  },
			
		]
	}
	]
});
chart1.render();
}
bus.onclick = function () {
var chart2 = new CanvasJS.Chart("chartContainer", {
	theme: "light1",
	animationEnabled: true,		
	title:{
		text: "Bus Statistics"
	},
	data: [
	{
		
		type: "column",
		dataPoints: [
			{ label: "Bus", y: <?php echo $bus; ?> },
			
		]
	}
	]
});
chart2.render();

}
</script>
<center>
<?php 


echo '<div id="chartContainer" style="height: 300px; width: 70%;"></div>';
?>
<a href="disp.php">Go Back..</a>
</center>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"> </script>
</body>
</html>