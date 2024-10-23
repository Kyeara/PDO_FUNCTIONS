<?php require_once 'core/dbConfig.php'; ?>

<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device=width, initial-scale=1.0">
    <title>Customer List</title>     

    <body>
    <?php
     $stmt = $pdo->prepare('SELECT * FROM Players');
     $stmt->execute();
    

     $players = $stmt->fetchAll(PDO::FETCH_ASSOC);
     ?>

     <table>
         <tr>
             <th>Player Name</th>
         </tr>

         <?php foreach ($players as $row) { ?>
         <tr>
             <td><?php echo htmlspecialchars($row['member_first_name']); ?></td> 
         </tr>
         <?php } 
         ?>
     </table>
     </body>
    
</head>
</html>



//$stmt = $pdo->prepare("SELECT * FROM Customer WHERE id = 53");				
//	
//    if ($stmt->execute()) {
//		print_r($stmt->fetch());
//	}


//$query = "INSERT INTO Customer (CustomerID, Customer_Name, Age, Account_Number) 
//    	VALUES (?,?,?,?)";
//
//    $stmt = $pdo->prepare($query);
//
//    $executeQuery = $stmt->execute(
//    	[17, 'Carena Kleynermans', '18', 4],
//    );
//
//    if ($executeQuery) {
//    	echo "Query successful!";
//    }
//   
//    else {
//    	echo "Query failed";
//    }



//$query = "DELETE FROM Customer WHERE id = 10";
//	 $stmt = $pdo->prepare($query);
//
//	 $executeQuery = $stmt->execute();
//
//	 if ($executeQuery) {
//	 	echo "Deletion successful!";
//	 }
//	 else {
//	 	echo "Query failed";
//	 }




// $query = "UPDATE Players
// 		  SET first_name = ?, last_name = ?
// 		  WHERE id = 10
// 		  ";

// $stmt = $pdo->prepare($query);

// $executeQuery = $stmt->execute(
// 	["Ivan", "Duane"]
// );

// if ($executeQuery) {
// 	echo "Update successful!";
// }
// else {
// 	echo "Query failed";
// }


