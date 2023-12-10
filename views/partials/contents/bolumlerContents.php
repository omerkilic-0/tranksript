<?php
include  __DIR__ . "/../header.php";
include __DIR__ . "/../navbar.php";
?>

<br>
<div class="container">
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Bölüm</th>
                <th scope="col">Öğretmen</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($sectionList as $section) : $teacherDetails = $model->teacherDetails($section["teacher"]) ?>
                <tr>
                    <td><?= $section["section"] ?? "" ?></td>
                    <td><?= $teacherDetails[0]["name_surname"] ?? "" ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>

<?php include __DIR__ . "/../footer.php"; ?>