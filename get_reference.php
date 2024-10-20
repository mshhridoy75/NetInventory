<?php 

include './include/config_sql.inc.php';
 // Connect to the database
	$RESOURCE_SQL = mysql_connect_AMSConfig();

   
if(isset($_POST["manufacturer_id"]) && !empty($_POST['manufacturer_id'])){
 // Has the form been submitted?
	   $manufacturer_id = $_POST['manufacturer_id'];
 // The form has been submitted, query results
     	  $SQL ="SELECT DISTINCT (`hardware`)FROM `NetInventoryResults` WHERE `manufacturer` = '".$manufacturer_id."'
	            	 and `inventory_date` BETWEEN subdate(curdate(), 90)and curdate() AND curdate() 
					and `firmware` is not null and `firmware` NOT LIKE '--' group by `firmware`;";
 
 	$EXEC = $RESOURCE_SQL->prepare($SQL);
	$EXEC->execute();
	$count = $EXEC->rowCount();
 ?>
	<option><br></option>
<?php
echo '<option value=""></option>';
	while($row=$EXEC->fetch(PDO::FETCH_ASSOC))
	{
?>
      <option value="<?php echo $row['hardware']; ?>"><?php echo $row['hardware']; ?></option>
<?php

   }	
  } 
?>