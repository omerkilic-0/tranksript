<?php
include  __DIR__ . "/../header.php";
include __DIR__ . "/../navbar.php";
?>

<br>
<div class="container">
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Ad Soyad</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($teachersList as $teacher) : ?>
                <tr>
                    <td><?= $teacher["name_surname"] ?? "" ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>

<?php include __DIR__ . "/../footer.php"; ?>