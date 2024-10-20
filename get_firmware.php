<?php 
include './include/config_sql.inc.php';
 // Connect to the database
	$RESOURCE_SQL = mysql_connect_AMSConfig();

   
if(isset($_POST["manufacturer_id"]) && !empty($_POST['manufacturer_id'])){
	
 // Has the form been submitted?
	   $manufacturer_id = $_POST['manufacturer_id'];
	if (isset($_POST["referencelist_id"]) && !empty($_POST['referencelist_id'])){
		$referencelist_id=$_POST['referencelist_id'];
	}else{
   		$referencelist_id="%";
	}	  
	   
 // The form has been submitted, query results
     	  $SQL ="SELECT DISTINCT (`firmware`)FROM `NetInventoryResults` WHERE `manufacturer` = '".$manufacturer_id."'
		  and  `hardware` like '".$referencelist_id."'
	            	 and `inventory_date` BETWEEN subdate(curdate(), 90)and curdate() AND curdate() 
					and `firmware` is not null and `firmware` NOT LIKE '--' group by `firmware`;";
 
 	$EXEC = $RESOURCE_SQL->prepare($SQL);
	$EXEC->execute();
	$count = $EXEC->rowCount();
 ?>
	<option><br></option>
<?php
	while($row=$EXEC->fetch(PDO::FETCH_ASSOC))
	{
?>
      <option value="<?php echo $row['firmware']; ?>"><?php echo $row['firmware']; ?></option>

<?php
    }  
  }	
?>