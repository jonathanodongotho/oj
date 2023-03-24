<?php include"menus.php";

if(isset($_POST['submit']))
{
  $blog_title=$_POST['blog_title'];
  $blog_content=$_POST['blog_content'];
  $blog_writer=$_POST['blog_writer'];
  $blog_date=$_POST['blog_date'];
  $blog_image=$_FILES['blog_image']['name'];

 // $image_name = $blog. '.jpg';

     move_uploaded_file($blog_image, "assets/img".uniqid("IMG-", TRUE).'.'.strtolower(pathinfo($blog_image, PATHINFO_EXTENSION)));

  $sql="INSERT INTO blogtable(blog_title, blog_content, blog_writer, blog_date, blog_image) VALUES('$blog_title', '$blog_content', 
  '$blog_writer', '$blog_date', '$blog_image')";
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

    <h1 class="h3 mb-3">Blog page</h1>

    <div class="row">
      <div class="col-12">
        <form role="form" action="" method="POST" enctype="multipart/form-data">
          <div class="form-group">
            <label for="blog-title">Blog title:</label>
            <input type="text" class="form-control" id="blog-title" name="blog_title">
          </div>
          <div class="form-group">
            <label for="blog-content">Blog content:</label>
            <textarea class="form-control" type="text" id="blog-content" cols="" rows="" name="blog_content"></textarea>
          </div>
          <div class="form-group">
            <label for="blog-image">Blog image:</label>
            <input type="file" class="form-control" id="blog-image" name="blog_image">
          </div>
          <div class="form-group">
            <label for="blog-source">Blog source:</label>
            <input type="text" class="form-control" id="blog-source" name="blog_writer">
          </div>
          <div class="form-group">
            <label for="blog-title">Blog date:</label>
            <input type="date" class="form-control" id="blog-date" name="blog_date">
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