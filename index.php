
      <?php 
        include "layouts/navbar.php";
        include "dbconnect.php";

        if(isset($_GET['category_id'])){
            $category_id = $_GET['category_id'];
            $sql = "SELECT * FROM posts WHERE posts.category_id = :categoryID ORDER BY id DESC";
            $stmt = $conn->prepare($sql);
            $stmt
            ->bindParam(':categoryID',$category_id);
            $stmt->execute();
            $posts = $stmt->fetchAll();
        }else{

        $sql = "SELECT * FROM posts ORDER BY id DESC LIMIT 18446744073709551615 OFFSET 1";



        // 18446744073709551615 mysql can be used maximun limit 
       // $stmt = $conn->query($sql);
       $stmt = $conn->prepare($sql);
        $stmt->execute();
        $posts = $stmt->fetchAll();

       // echo $posts[1]["image"];
        // echo "<br>";
        //var_dump($posts); 
        $sql = "SELECT * FROM posts ORDER BY id DESC LIMIT 1";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $latest_post = $stmt->fetch();
        
    }

      ?>
      
      
      <!-- Page header with logo and tagline-->
        <header class="py-5 bg-light border-bottom mb-4">
            <div class="container">
                <div class="text-center my-5">
                    <h1 class="fw-bolder">Welcome to Blog Home!</h1>
                    <p class="lead mb-0">A Bootstrap 5 starter layout for your next blog homepage</p>
                </div>
            </div>
        </header>
        <!-- Page content-->
        <div class="container">
            <div class="row">
                <!-- Blog entries-->
                <div class="col-lg-8">

                <?php 
                if(isset($_GET['category_id'])){

                }else{
                ?>

                    <!-- Featured blog post-->
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="<?= $latest_post['image'] ?>" alt="..." /></a>
                        <div class="card-body">
                            <div class="small text-muted"><?= date('F d, Y', strtotime( $latest_post['created_at']))?></div>
                            <h2 class="card-title"><?= $latest_post['title'] ?></h2>
                            <p class="card-text"><?= substr($latest_post['description'],8,210) ?>.....</p>
                            <a class="btn btn-primary" href="details.php?id=<?= $latest_post['id']?>">Read more →</a>
                        </div>
                    </div>
                    <?php } ?>
                    
                    <!-- Nested row for non-featured blog posts-->
                    <div class="row">
                        <?php
                         foreach($posts as $post){
                        ?>
                   
                        <div class="col-lg-6">
                            <!-- Blog post-->
                             <!-- substing(stirng, 8, number) -->
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="<?= $post['image'] ?>" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted"><?= date('M d, Y', strtotime( $post['created_at']))?> </div>
                                    <h2 class="card-title h4"><?= $post['title'] ?> </h2>
                                    <p class="card-text"><?= substr($post['description'],8,110) ?>..... </p>
                                    <a class="btn btn-primary" href="details.php?id=<?= $post['id'] ?>">Read more →</a>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                    </div> 
                </div>
               

    <?php 
        include "layouts/footer.php";
    ?>
                 