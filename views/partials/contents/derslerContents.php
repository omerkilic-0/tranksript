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
                <th scope="col">Ders</th>
                <th scope="col">Öğretmen</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($lessonList as $lesson) : ?>
                <tr>
                    <td><?= $lesson["section"] ?? "" ?></td>
                    <td><?= $lesson["lesson"] ?? "" ?></td>
                    <td><?= $lesson["teacher"] ?? "" ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>

<?php include __DIR__ . "/../footer.php"; ?>