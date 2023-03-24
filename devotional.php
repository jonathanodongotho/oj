<?php include"main-menu.php";?>
<?php include"connection.php";

$stmt = $con->prepare('SELECT * FROM devotionaltable');
$stmt->execute();
$devotionaltb = $stmt->get_result();
?>
    <!----------------------------MAIN SECTION--------------------------->



    <div class="container card-container">
        
        

    <?php 
    foreach($devotionaltb as $devotionaltable){?> 
        <section class="card">
            <div class="card-image">
                <img src="assets/img/<?php echo $devotionaltable['dev_image'];?>" alt="pic">
            </div>
           
            <div class="card-contents">
                <h6 class="card-title px-2">
                    <?php echo $devotionaltable['dev_title'];?>
                </h6>
                <i class="d-block mx-5"><i class="fa-solid fa-pen"></i> <?php echo $devotionaltable['dev_writer'];?></i>
                <i class="d-block mx-5"><i class="fa-solid fa-clock"></i> <?php echo $devotionaltable['dev_date'];?></i>
                <label class="thoughts"><i class="d-block mx-5"><i class="fa-solid fa-comment"></i> thought about this</i></label>
                
                <div class="thought-form">
                    
                    <form class="row text-center mx-0">
                        <div class="col-12 text-center">
                            <label for="" class="form-label">Name</label>
                            <input type="text" placeholder="Enter your name" class="form-control w-50 mx-auto" id="" value=""
                                required>
                        </div>
                        <div class="col-12 text-center">
                            <label for="" class="form-label">Email</label>
                            <input type="text" placeholder="Enter your email" class="form-control w-50 mx-auto" id="" value=""
                                required>
                        </div>
                        <div class="col-12 my-1">
                            <label for="" class="form-label">Thought</label>
                            <textarea name="" id="" cols="30" rows="5" placeholder="What you say about this" required class="form-control w-50 mx-auto"></textarea>
                        </div>
                        <div class="col-12 py-4">
                            <button class="btn btn-primary btn-sm" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
                <p class="text mx-3">
                <?php echo $devotionaltable['dev_content'];?>
                </p>
                <button class="see-more-btn btn btn-sm text-bold btn-primary">Read more</button>
            </div>
        </section>

        <?php } ?>

    </div>
    <?php include"footer.php"?>