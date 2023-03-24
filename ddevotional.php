<?php include"menus.php";

if(isset($_POST['submit']))
{
  $dev_title=$_POST['dev_title'];
  $dev_content=$_POST['dev_content'];
  $dev_writer=$_POST['dev_writer'];
  $dev_date=$_POST['dev_date'];
  $dev_image=$_FILES['dev_image']['name'];

 // $image_name = $dev. '.jpg';

     move_uploaded_file($dev_image, "assets/img".uniqid("IMG-", TRUE).'.'.strtolower(pathinfo($dev_image, PATHINFO_EXTENSION)));

  $sql="INSERT INTO devotionaltable(dev_title, dev_content, dev_writer, dev_date, dev_image) VALUES('$dev_title', '$dev_content', 
  '$dev_writer', '$dev_date', '$dev_image')";
  $result=mysqli_query($con, $sql);
  if($result)
  {
    echo "Insertion is successful";
  }
  else
  {
    die(mysqli_error($con));
  }
}

?>
<main class="content">
  <div class="container-fluid p-0">

    <h1 class="h3 mb-3">dev page</h1>

    <div class="row">
      <div class="col-12">
        <form role="form" action="" method="POST" enctype="multipart/form-data">
          <div class="form-group">
            <label for="dev-title">dev title:</label>
            <input type="text" class="form-control" id="dev-title" name="dev_title">
          </div>
          <div class="form-group">
            <label for="dev-content">dev content:</label>
            <textarea class="form-control" type="text" id="dev-content" cols="" rows="" name="dev_content"></textarea>
          </div>
          <div class="form-group">
            <label for="dev-image">dev image:</label>
            <input type="file" class="form-control" id="dev-image" name="dev_image">
          </div>
          <div class="form-group">
            <label for="dev-source">dev source:</label>
            <input type="text" class="form-control" id="dev-source" name="dev_writer">
          </div>
          <div class="form-group">
            <label for="dev-title">dev date:</label>
            <input type="date" class="form-control" id="dev-date" name="dev_date">
          </div>
          <button type="submit" class="btn btn-primary btn-sm my-2" name="submit">Submit</button>
        </form>
      </div>
    </div>

  </div>
</main>

<?php include"dfooter.php";?>
</div>
</div>

<script src="js/app.js"></script>

</body>

</html>