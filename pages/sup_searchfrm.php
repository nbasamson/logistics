<?php
include '../includes/connection.php';
include '../includes/sidebars.php';
?>
<div style=" font-weight:bold; font-size: 50px; color:white;">
we
</div>
          <center><div class="card shadow mb-4 col-xs-12 col-md-8 border-bottom-primary">
            <div class="card-header py-3">
              <h4 class="m-2" style=" font-weight:bold; font-size: 50px; color:black;">Supplier's Detail</h4>
            </div>
          <?php 
            $query = 'SELECT SUPPLIER_ID, COMPANY_NAME, l.PROVINCE, l.CITY, PHONE_NUMBER FROM supplier e join location l on e.LOCATION_ID = l.LOCATION_ID WHERE e.SUPPLIER_ID ='.$_GET['id'];
            $result = mysqli_query($db, $query) or die(mysqli_error($db));
              while($row = mysqli_fetch_array($result))
              {   
                $zz= $row['SUPPLIER_ID'];
                $a= $row['COMPANY_NAME'];
                $b=$row['PROVINCE'];
                $c=$row['CITY'];
                $d=$row['PHONE_NUMBER'];
              }
              $id = $_GET['id'];
          ?>
                
                    <div class="form-group row text-left">
                      <div class="col-sm-3 text-primary">
                        <h5>
                          Company Name<br>
                        </h5>
                      </div>
                      <div class="col-sm-9">
                        <h5>
                          : <?php echo $a; ?><br>
                        </h5>
                      </div>
                    </div>
                    <div class="form-group row text-left">
                      <div class="col-sm-3 text-primary">
                        <h5>
                          Province<br>
                        </h5>
                      </div>
                      <div class="col-sm-9">
                        <h5>
                          : <?php echo $b; ?> <br>
                        </h5>
                      </div>
                    </div>
                    <div class="form-group row text-left">
                      <div class="col-sm-3 text-primary">
                        <h5>
                          City<br>
                        </h5>
                      </div>
                      <div class="col-sm-9">
                        <h5>
                          : <?php echo $c; ?> <br>
                        </h5>
                      </div>
                    </div>
                    <div class="form-group row text-left">
                      <div class="col-sm-3 text-primary">
                        <h5>
                          Phone Number<br>
                        </h5>
                      </div>
                      <div class="col-sm-9">
                        <h5>
                          : <?php echo $d; ?> <br>
                        </h5>
                      </div>
                    </div>
          </div>
          <div>
          <div style="text-align: center; margin:30px;">
                  <a href="index.php?page=supplier" class="btn btn-sm btn-info"><i class="fa fa-"></i> Back </a>
           </div>
          </div>
          </div>

<?php
include '../includes/footer.php';
?>