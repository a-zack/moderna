<?php
include_once './include/header.php';

?>


    <div class="container">
        <div class="card col-6 mx-auto mt-5 px-0 h-100">
        <?php
        if(isset($_SESSION['success'])){
            ?>
            <span class="alert alert-success">
               <?=
               $_SESSION['success'] 
               ?>
            </span>
            <?php
        }
        
        ?>


        </div>

        <div class="card-header">
            <h3>Add Banner Items</h3>
        </div>
        <div class="card-body mt-5">
            <form action="./controller/store_banner.php" method="POST">
                <input type="text" name="title" class="form-control mb-2" placeholder="Banner Title">
                <?php
                if(isset( $_SESSION['error title']) ){
                    echo $_SESSION['error_title'];
                }
                
                ?>
                <textarea name="details" class="form-control mb-2" placeholder="Banner Details"></textarea>
                <input type="text" name="button_txt" class="form-control mb-2" placeholder="Banner Text">
                <input type="text" name="button_link" class="form-control mb-2" placeholder="Banner Link">
                <button type="submit" name="submit" class="btn btn-primary">Insert Banner Item</button>
            </form>
        </div>
    </div>
</div>


<?php

include_once './include/footer.php';
