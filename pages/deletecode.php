<?php

include '../includes/connection.php';

if(isset($_POST['delete_product']))
{
    $PRODUCT_CODE = $_POST['delete_product'];

    try {
            $query="DELETE FROM product WHERE id=:pdid";
            $statement = $conn->prepare($query);

            $data =[
                ':pdid' => $statement
            ];
            $query_execute = $statement->execute($data);

            if($query_execute)
            {
                $_SESSION['message'] ="delete successfully";
                header('location: product.php');
                exit(0);
            }
            else
            {
                $_SESSION['message'] ="Naaaah!";
                header('location: product.php');
                exit(0);

            }

    }   catch(PDOexception $e){
        echo $e->getMessage();
    }

}

?>