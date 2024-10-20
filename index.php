


<!DOCTYPE html>
<html lang="en">
<head>
	<title>.:: AMS NetInventory Browser ::. </title>
	<meta charset="utf-8">
		<!-- script references -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	 <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="plugins/select2/select2.css">
	<link rel="stylesheet" href="css/AMSstyle.css">
	<link rel="stylesheet" type="text/css" href="plugins/datatables/jquery.dataTables.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css">
	   <!-- jquery cdn -->
	<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="plugins/select2/select2.min.js"></script>
	 <!-- java files-->
	<script type="text/javascript" language="javascript" src="plugins/datatables/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript" src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
	<script type="text/javascript" language="javascript" src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript" src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript" src="//cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>

</head>
<?php

session_start();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $_SESSION['selected_value'] = $_POST['dropdown'];
}
$selected_value = isset($_SESSION['selected_value']) ? $_SESSION['selected_value'] : '';
?>
<?php
		require_once 'include/config_sql.inc.php';
		$RESOURCE_SQL = mysql_connect_AMSConfig();
 $manu ="SELECT DISTINCT `id`,`manufacturer` FROM `NetInventoryResults`WHERE `inventory_date` BETWEEN subdate(curdate(), 90)and curdate() AND curdate() group by `manufacturer`;";
 $vendor = $RESOURCE_SQL ->prepare($manu);
 $vendor->execute();	

 
?>

<body style="height:100%">


		<div class="col-md-7  col-md-offset-5">
			<center>
				<h1><span style="color: #005eb8; font-size: 48pt;">AMS </span><span style="color: #a20067;font-size: 32pt;">NetInventoryBrower</span><span style="font-size: 10pt;"> v1.0</span></h1>
			</center>
			
		</div>	
<div class="container-fluid">
		<div class="col-md-2"  style="text-align:center">
		  <div id="nodeselecta">
				<th >
   		        <h2>VENDOR  </h2></th>
				<select id="selectmanufacturer" placeholder="Select Vendor" style="width:100%;" >
								<option></option>
									<?php  
									while ($row = $vendor->fetch(PDO::FETCH_ASSOC))
										{
									?>
										<option value="<?php echo $row['manufacturer']; ?>"><?php echo $row['manufacturer']; ?></option>	
									<?php
	
										}
										
										?>
				</select>
			</div>	
		 </div>		

		<!--- ComboBox device reference    -->
		<div class="col-md-2" style="text-align:center"> 
		 <div id="nodeselecta">
		   <th ><h2>DEVICE REFERENCE</h2></th>
				<select id="referencelist" placeholder="Select Référence"   style="width:100%;" />
						<option></option>
				</select>
		 </div>
		</div>
		
		<!--- ComboBox device firmaware    -->		
		
		<div class="col-md-2" style="text-align:center"> 
		 <div id="nodeselecta">
		  <th >	<h2>DEVICE FIRMWARE</h2></th>
				<select id="selectfirmware" placeholder="Select Firmware" style="width:100%;"/>
								<option></option>
			</select>
		
		</div>	
	   </div>
	   	<div class="col-md-2" style="text-align:center"> 
		 <div id="nodeselecta">
		       <img id="loading_spinner" src="imgs/ajax-loader-4.gif">
		 
			</div>	
	   </div>	 

<div id="mycontentinventory"></div>



		
<script type='text/javascript'>
/* 
$(document).ready(function() {
    $('#selectmanufacturer').select2();
    $('#referencelist').select2();
    $('#selectfirmware').select2();
});*/

$('#selectmanufacturer').select2();
$('#referencelist').select2();
$('#selectfirmware').select2();

// Hide Datatable when the page is opened
document.getElementById('mycontentinventory').style.visibility = 'hidden';
var mon_input =$('#selectmanufacturer').val(); 
if(mon_input !== "") {    	//	variable isn't empty
	document.getElementById('mycontentinventory').style.visibility = 'hidden';
}	
	
//manufacturer change event call Device Reference Data and Firmware data
$('#selectmanufacturer').change(function(){

	
	var selectedmanufacturer = $('#selectmanufacturer').val();
	
	// Vider les select box au changement d'un nouveau constructeur
	$('#referencelist').empty();
	$('#referencelist').select2('destroy');
	$('#referencelist').select2();
	
	$('#selectfirmware').empty();
	$('#selectfirmware').select2('destroy');
	$('#selectfirmware').select2();
		
	document.getElementById("referencelist").innerHTML="";
	var postparameters = { "manufacturer_id" : selectedmanufacturer};
	console.log('SELECT MANUFACTURER - GET REFERENCE');
	$.ajax({
			type: "POST",
			url: "get_reference.php",
			data: postparameters,
			datatype: "html",		
			success: function(response)	{
				var mon_input=$('#selectmanufacturer').val(); 
				if(mon_input.length = 0) {            // variable isn't empty
					document.getElementById('mycontentinventory').style.visibility = 'hidden';
				}
				$("#referencelist").html(response);
				$('#mycontentinventory').empty();
			}
	});

	console.log('SELECT MANUFACTURER - GET FIRMWARE');
	// call Device firmware Data
	$.ajax({
			type: "POST",
			url: "get_firmware.php",
			data: postparameters,
			datatype: "html",		
			success: function(response)	{
				$("#selectfirmware").html(response);
			}
	});	
});


$('#referencelist').change(function(){
	var selectedmanufacturer = $('#selectmanufacturer').val();
	var selectedreference = $('#referencelist').val();
	var postparameters = { "manufacturer_id" : selectedmanufacturer, "referencelist_id" : selectedreference};
	$("#selectfirmware").empty();
	$('#mycontentinventory').empty();
	
	$('#selectfirmware').select2('destroy');
	$('#selectfirmware').select2();
	
	
	console.log('REFERENCE LIST - GET FIRMWARE');
	$.ajax({
			type: "POST",
			url: "get_firmware.php",
			data: postparameters,
			datatype: "html",		
			success: function(response)	{
				$("#selectfirmware").html(response);
			}
	});
 
	console.log('REFERENCE LIST - VIEW NETINVENTORY');
	$.ajax({
			type: "POST",
			url: "view_netinventory.php",
			data: postparameters,
			datatype: "html",		
			success: function(response)	{
				$("#mycontentinventory").html(response);
				document.getElementById('mycontentinventory').style.visibility = 'visible';
			}
	});
});

$('#selectfirmware').change(function(){
	var selectedmanufacturer = $('#selectmanufacturer').val();
	var selectedreference = $('#referencelist').val();
	var selectfirmware= $('#selectfirmware').val();
	
	var postparameters = { "manufacturer_id" : selectedmanufacturer, "referencelist_id" : selectedreference, "selectfirmware_id" : selectfirmware};
	$('#mycontentinventory').empty();
	
	console.log('SELECT FIRMWARE - DEBUT');
	
	if(selectedreference === "") { 
		console.log('SELECT FIRMWARE - SI PAS DE REFERENCE - GET REFERENCE');
		var mypostparameters =  { "manufacturer_id" : selectedmanufacturer, "referencelist_id" : null, "selectfirmware_id" : selectfirmware};
		console.log('reference non selectionnee');
		$("#referencelist").empty();
		$.ajax({
			type: "POST",
			url: "get_reference.php",
			data: postparameters,
			datatype: "html",		
			success: function(response)	{
				$("#referencelist").html(response);
			}
		});
	}
	
	console.log('SELECT FIRMWARE - VIEW INVENTORY');
	$.ajax({
			type: "POST",
			url: "view_netinventory.php",
			data: postparameters,
			datatype: "html",		
			success: function(response)	{
				$("#mycontentinventory").html(response);
				document.getElementById('mycontentinventory').style.visibility = 'visible';
			}
	});
}); */

/*
$('#selectmanufacturer').change(function(){
    var selectedmanufacturer = $('#selectmanufacturer').val();

    // Clear and reset the reference and firmware dropdowns
    $('#referencelist').empty().select2('destroy').select2();
    $('#selectfirmware').empty().select2('destroy').select2();

    var postparameters = { "manufacturer_id": selectedmanufacturer };
    console.log('SELECT MANUFACTURER - GET REFERENCE');

    // Get reference list based on selected manufacturer
    $.ajax({
        type: "POST",
        url: "get_reference.php",
        data: postparameters,
        datatype: "html",
        success: function(response) {
            $("#referencelist").html(response);
            $('#mycontentinventory').empty();
        }
    });

    console.log('SELECT MANUFACTURER - GET FIRMWARE');
    // Get firmware list based on selected manufacturer
    $.ajax({
        type: "POST",
        url: "get_firmware.php",
        data: postparameters,
        datatype: "html",
        success: function(response) {
            $("#selectfirmware").html(response);
        }
    });
});

$('#referencelist').change(function(){
    var selectedmanufacturer = $('#selectmanufacturer').val();
    var selectedreference = $('#referencelist').val();

    var postparameters = { "manufacturer_id": selectedmanufacturer, "referencelist_id": selectedreference };

    console.log('REFERENCE LIST - KEEP EXISTING FIRMWARE');
    // Keep the firmware and only update if necessary
    var firmwareSelected = $('#selectfirmware').val();
    if(firmwareSelected) {
        console.log('Firmware already selected: ' + firmwareSelected);
    } else {
        $.ajax({
            type: "POST",
            url: "get_firmware.php",
            data: postparameters,
            datatype: "html",
            success: function(response) {
                $("#selectfirmware").html(response);
            }
        });
    }

    // Show inventory data
    console.log('REFERENCE LIST - VIEW NETINVENTORY');
    $.ajax({
        type: "POST",
        url: "view_netinventory.php",
        data: postparameters,
        datatype: "html",
        success: function(response) {
            $("#mycontentinventory").html(response);
            document.getElementById('mycontentinventory').style.visibility = 'visible';
        }
    });
});

$('#selectfirmware').change(function(){
    var selectedmanufacturer = $('#selectmanufacturer').val();
    var selectedreference = $('#referencelist').val();
    var selectfirmware = $('#selectfirmware').val();

    var postparameters = { "manufacturer_id": selectedmanufacturer, "referencelist_id": selectedreference, "selectfirmware_id": selectfirmware };

    console.log('SELECT FIRMWARE - VIEW INVENTORY');
    $.ajax({
        type: "POST",
        url: "view_netinventory.php",
        data: postparameters,
        datatype: "html",
        success: function(response) {
            $("#mycontentinventory").html(response);
            document.getElementById('mycontentinventory').style.visibility = 'visible';
        }
    });

    // If reference is not selected, update the reference list
    if (!selectedreference) {
        $.ajax({
            type: "POST",
            url: "get_reference.php",
            data: postparameters,
            datatype: "html",
            success: function(response) {
                $("#referencelist").html(response);
            }
        });
    }
});*/

</script>

