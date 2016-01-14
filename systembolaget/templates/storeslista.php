<?php include "templates/include/header.php" ?>

      <ul id="headlines">

	  <li>
          
            <a href="./?action=sortimentlista">S&ouml;k dryck</a> | <a href=".?action=archive&amp;categoryId=1">Fakta & nyheter</a> | <a href=".?action=archive&amp;categoryId=2">Om alkohol</a> | <a href=".?action=archive&amp;categoryId=3">Vad passar till?</a> |
			<a href=".?action=archive&amp;categoryId=4">V&aring;rt uppdrag</a> |
			<a href=".?action=storeslista">&Ouml;ppettider</a>
            
          
        </li>

      </ul>
      <table>
		  <thead>
		   <tr >
		     <th colspan="3" >Butiker</th>			 
		   </tr>
		  </thead>
		   
<?php foreach ( $results['stores'] as $Stores ) { ?>
        <tr>
            <td><?php echo $Stores->Namn?></td>
            <td><?php echo $Stores->Address1?></td>
            <td><?php echo $Stores->Address4?></td>
        </tr>
<?php } ?>
      </table>

<?php include "templates/include/footer.php" ?>