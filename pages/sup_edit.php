<?php
include '../includes/connection.php';
include '../includes/sidebars.php';

  $query = 'SELECT SUPPLIER_ID, COMPANY_NAME,  l.PROVINCE, l.CITY, PHONE_NUMBER FROM supplier e join location l on l.LOCATION_ID=e.LOCATION_ID WHERE SUPPLIER_ID ='.$_GET['id'];
  $result = mysqli_query($db, $query) or die(mysqli_error($db));
    while($row = mysqli_fetch_array($result))
    {   
      $zz = $row['SUPPLIER_ID'];
      $a = $row['COMPANY_NAME'];
      $b = $row['PROVINCE'];
      $c = $row['CITY'];
      $d = $row['PHONE_NUMBER'];
    }
      $id = $_GET['id'];
      
?>

  <center><div class="card shadow mb-4 col-xs-12 col-md-8 border-bottom-primary">
            <div class="card-header py-3">
              <h4 class="m-2 font-weight-bold text-primary">Edit Supplier</h4>
            </div>
            <a href="index.php?page=supplier" class="btn btn-sm btn-info"><i class="fa fa-"></i> Back </a>
	
            <div class="card-body">
      
            <form role="form" method="post" action="sup_edit1.php">
              <input type="hidden" name="id" value="<?php echo $zz; ?>" />
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Company Name:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Company Name" name="name" value="<?php echo $a; ?>" required>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Province:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Province" name="province" value="<?php echo $b; ?>" required>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 City / Municipality:
                </div>
                <div class="col-sm-9">
                   <input class="form-control" placeholder="City/Municipality" name="city" value="<?php echo $c; ?>" required>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Phone Number:
                </div>
                <div class="col-sm-9">
                   <input class="form-control" placeholder="Phone Number" name="phone" value="<?php echo $d; ?>" required>
                </div>
              </div>
              <hr>

                <button type="submit" class="btn btn-warning btn-block"><i class="fa fa-edit fa-fw"></i>Update</button>    
              </form>  
            </div>
          </div></center>

<?php
include'../includes/footer.php';
?>