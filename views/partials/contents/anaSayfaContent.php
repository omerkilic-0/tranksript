<?php
include  __DIR__ . "/../header.php";
include __DIR__ . "/../navbar.php";
?>

<br>
<div class="container">
    <table class="table">
        <thead>
            <tr>
                <th scope="col">No</th>
                <th scope="col">Ad</th>
                <th scope="col">Soyad</th>
                <th scope="col">Bölüm</th>
                <th scope="col">E-Mail</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($studentList as $student) :
                $id = $student["section"];
                $sectionName = $model->sectionName($id);
            ?>
                <tr>
                    <td><?= $student["id"] ?? "" ?></td>
                    <td><?= $student["name"] ?? "" ?></td>
                    <td><?= $student["surname"] ?? "" ?></td>
                    <td><?= $sectionName[0]["section"] ?? "" ?></td>
                    <td><?= $student["school_mail"] ?? "" ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>

<?php include __DIR__ . "/../footer.php"; ?>