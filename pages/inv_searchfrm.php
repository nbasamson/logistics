<?php include '../includes/auth.php';
      include '../includes/sidebars.php';
      include '../includes/connection.php';

      $query2 = 'SELECT NAME FROM product p join category c on p.CATEGORY_ID=c.CATEGORY_ID where PRODUCT_CODE ='.$_GET['id'].' limit 1';
      $result2 = mysqli_query($db, $query2) or die (mysqli_error($db));
?>
            
            <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h4 class="m-2 font-weight-bold text-primary"> Inventory for : <?php while ($row = mysqli_fetch_assoc($result2)) { echo $row['NAME']; } ?></h4>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
               <thead>
                   <tr>
                     <th>Product Code</th>
                     <th>Name</th>
                     <th>Quantity</th>
                     <th>On Hand</th>
                     <th>Category</th>
                     <th>Supplier</th>
                     <th>Date Stock In</th>
                     <th>Action</th>
                   </tr>
               </thead>
          <tbody>

<?php   
$query = 'SELECT PRODUCT_ID, PRODUCT_CODE, NAME, QTY_STOCK, ON_HAND, CNAME, COMPANY_NAME, DATE_STOCK_IN FROM product p join category c on p.CATEGORY_ID=c.CATEGORY_ID JOIN supplier s ON p.SUPPLIER_ID=s.SUPPLIER_ID where PRODUCT_CODE ='.$_GET['id'];
        $result = mysqli_query($db, $query) or die (mysqli_error($db));
            while ($row = mysqli_fetch_assoc($result)) {
                echo '<tr>';
                echo '<td>'. $row['PRODUCT_CODE'].'</td>';
                echo '<td>'. $row['NAME'].'</td>';
                echo '<td>'. $row['QTY_STOCK'].'</td>';
                echo '<td>'. $row['ON_HAND'].'</td>';
                echo '<td>'. $row['CNAME'].'</td>';
                echo '<td>'. $row['COMPANY_NAME'].'</td>';
                echo '<td>'. $row['DATE_STOCK_IN'].'</td>';
                echo '<td align="right">
                      <a type="button" class="btn btn-warning bg-gradient-warning" href="inv_edit.php?action=edit & id='.$row['PRODUCT_ID']. '"><i class="fas fa-fw fa-edit"></i> Edit</a>
                          </div></td>';
                echo '</tr> ';
                        }
?> 
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                  </div>
                  <div style="text-align: center">
                  <a href="index.php?page=inventory" class="btn btn-sm btn-info"><i class="fa fa-"></i> Back </a>
                  </div>

            
       