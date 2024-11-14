<?php 

        session_start();
        if($_SESSION['user_id'] && $_SESSION['user_role'] == 'admin'){


        include "../layouts/navbar_side.php";
        include "../../dbconnect.php";
        $sql = "SELECT users.*, users.name as u_name, users.email as u_email, users.role as u_role FROM users";

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $users = $stmt->fetchAll();
       
?>

        <div class="container my-5">
                <div class="mb-5">
                        <h3 class="d-inline">Users Info</h3>
                        <a href="" class="btn btn-primary float-end">Create Posts</a>
                </div>
                <div class="card">
                        <div class="card-body">
                                <table class="table table-bordered">
                                        <thead>
                                                <tr>
                                                        <th>#</th>
                                                        <th>Name</th>
                                                        <th>Email</th>
                                                        <th>Role</th>
                                                        <th>Action</th>
                                                </tr>
                                        </thead>
                                        <tbody>
                                                <?php
                                                $j = 1;
                                                foreach($users as $user){
                                                ?>
                                                 <tr>
                                                        <td><?= $j++ ?></td>
                                                        <td><?= $user['u_name'] ?></td>
                                                        <td><?= $user['u_email'] ?></td>
                                                        <td><?= $user['u_role'] ?></td>
                                                        <td>
                                                                <button class="btn btn-sm btn-warning">Edit</button>
                                                                <button class="btn btn-sm btn-danger">Delete</button>
                                                                <a href="/details.php?id=<?= $user['id'] ?>" class="btn btn-sm btn-primary" target="_blank">Detail</a>
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
                                                        <th>Email</th>
                                                        <th>Role</th>
                                                        <th>Action</th>
                                                </tr>
                                        </tfoot>
                                </table>
                        </div>
                </div>
        </div> 


<?php 
        include "../layouts/footer.php";
        }else{
                header("location:../login.php");
        }
       
?>