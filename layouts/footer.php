 
 <?php 
        
        $sql = "SELECT * FROM categories ORDER BY id DESC"; 
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $categories = $stmt->fetchAll();
?>
 
 <!-- Side widgets-->
 <div class="col-lg-4">
                    <!-- Search widget-->
                    <div class="card mb-4">
                        <div class="card-header">Search</div>
                        <div class="card-body">
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Enter search term..." aria-label="Enter search term..." aria-describedby="button-search" />
                                <button class="btn btn-primary" id="button-search" type="button">Go!</button>
                            </div>
                        </div>
                    </div>
                    <!-- Categories widget-->
                    <div class="card mb-4">
                        <div class="card-header">Categories</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                        <?php 
                                        foreach($categories as $category){   
                                            $category_id = $category ['id'];
                                            $sql = "SELECT COUNT(posts.category_id) 'c_count' FROM posts WHERE posts.category_id = :CID"; 
                                            $stmt = $conn->prepare($sql);
                                            $stmt->bindParam(':CID', $category_id);
                                            $stmt->execute();
                                            $post = $stmt->fetch();
                                            // var_dump($post['c_count']);
                                        ?>
                                        <li><a href="index.php?category_id=<?= $category['id'] ?>"><?= $category['name'] ?> (<?= $post['c_count'] ?>)</a></li>
                                        <?php } ?>
                                    </ul>
                                </div>
                
                            </div>
                        </div>
                    </div>
                    <!-- Side widget-->
                    <div class="card mb-4">
                        <div class="card-header">Side Widget</div>
                        <div class="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5 card component!</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script>
      $('#description').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 120,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
    </script>
    </body>
</html>
