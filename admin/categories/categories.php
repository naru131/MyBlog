<?php 
        include "../layouts/navbar_side.php";
        include "../../dbconnect.php";
        $sql = "SELECT categories.*, categories.name as c_name FROM categories";

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $categories = $stmt->fetchAll();
       
?>

        <div class="container my-5">
                <div class="mb-5">
                        <h3 class="d-inline">Categoreies Lists</h3>
                        <a href="" class="btn btn-primary float-end">Create Posts</a>
                </div>
                <div class="card">
                        <div class="card-body">
                                <table class="table table-bordered">
                                        <thead>
                                                <tr>
                                                        <th>#</th>
                                                        <th>Name</th>
                                                        <th>Action</th>
                                                </tr>
                                        </thead>
                                        <tbody>
                                                <?php
                                                $j = 1;
                                                foreach($categories as $category){
                                                ?>
                                                 <tr>
                                                        <td><?= $j++ ?></td>
                                                        <td><?= $category['c_name'] ?></td>
                                                        <td>
                                                                <button class="btn btn-sm btn-warning">Edit</button>
                                                                <button class="btn btn-sm btn-danger">Delete</button>
                                                                <a href="/details.php?id=<?= $category['id'] ?>" class="btn btn-sm btn-primary" target="_blank">Detail</a>
                                                        </td>
                                                 </tr> 
                                                 <?php      
                                                }
                                                ?>
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                                        <th>#</th>
                                                        <th>Name</th>
                                                        <th>Action</th>
                                                </tr>
                                        </tfoot>
                                </table>
                        </div>
                </div>
        </div>


<?php 
        include "../layouts/footer.php";
       
?>