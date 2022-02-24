<?php
include_once './include/header.php';
require_once '../env.php';
$select ="SELECT * FROM banner_post";
$query = mysqli_query($connect, $select);
$featch = mysqli_fetch_all($query,1);

?>
<div class="card-header">
    <h3>all banner</h3>

    <table class="table table-responsive m-auto">
        <tr>
            <th>#</th>
            <th>Title</th>
            <th>Details</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        <?php
        foreach($featch as $key=>$data){
        ?>
        <tr>
            <td><?= ++$key?></td>
            <td><?= $data['title']?></td>
            <td><?= $data['details']?></td>
            <td>
                <span class="badge text-light <?=$data['status']==0?'bg-success': 'bg-danger'?>">
                <?= $data['status']==0?'Active':'Deactive'?>
                </span>
            </td>
            <td>
                <a href="#" class="btn btn-sm btn-primary "> edit</a>
                <a href="./controller/banner_status.php ?id<?=$data['id']?>" class="btn btn-sm btn-primary ">
                    <?= $data['status']==0?'Deactive':'Active'?>
                </a>
            </td>
        </tr>
        <?php

        }
        ?>
    </table>
</div>


<?php

include_once './include/footer.php';
?>