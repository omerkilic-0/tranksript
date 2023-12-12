<?php
include  __DIR__ . "/../header.php";
include __DIR__ . "/../navbar.php";
?>

<br>
<div class="container">
    <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Öğrenci Numarası</label>
            <input type="number" class="form-control" id="exampleInputEmail1" name="stunedtNumber">
        </div>
        <?= $stunedtNumber_Err ?? "" ?>

        <button type="submit" class="btn btn-primary" name="submit">Submit</button>
    </form>

    <?php if (isset($studentDetails[0])) : ?>
        <br><br>
        <hr>

        <div style="text-align: center;">
            <h3>KÜTAHYA DUMLUPINAR ÜNİVERSİTESİ</h3>
            <h3>NOT DÖKÜM BELGESİ(transkript)</h3>
        </div>
        <div style="float: left; text-align: left;">
            <img src="images/Kütahya_Dumlupınar_Üniversitesi_logo.png" alt="DPÜ" width="250px" height="auto">
        </div>
        <div style="float: right; text-align: right;">
            <img src="images/türkBayrağı.png" alt="Türkiye" width="275px" height="auto">
        </div>
        <br><br><br><br><br>
        <table class="table">
            <thead>
                <h4 style="text-align: center;">Öğrenci Bilgisi</h4>
                <tr>
                    <th scope="col">Ad Soyad</th>
                    <th scope="col">Öğrenci No:</th>
                    <th scope="col">Kayıt Tarihi</th>
                    <th scope="col">Okul Mail</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><?= $studentDetails[0]["name"] ?? "" . " " . $studentDetails[0]["surname"] ?? "" ?></td>
                    <td><?= $studentDetails[0]["id"] ?? "" ?></td>
                    <td><?= $studentDetails[0]["save_time"] ?? "" ?></td>
                    <td><?= $studentDetails[0]["school_mail"] ?? "" ?></td>
                </tr>
            </tbody>
        </table>
        <br><br>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Ders Kodu</th>
                    <th scope="col">Ders</th>
                    <th scope="col">Not</th>
                    <th scope="col">Harf Notu</th>
                    <th scope="col">AKTS</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($noteList as $note) :
                    $id = $note["lesson"];
                    $lessonDetails = $model->lessonDetails($id);
                    $puan = $note["note"];
                    if ($puan >= 90 && $puan <= 100) {
                        $harfNotu = "A";
                    } elseif ($puan >= 80 && $puan < 90) {
                        $harfNotu = "B";
                    } elseif ($puan >= 70 && $puan < 80) {
                        $harfNotu = "C";
                    } elseif ($puan >= 60 && $puan < 70) {
                        $harfNotu = "D";
                    } else {
                        $harfNotu = "F";
                    }
                    $akts = rand(1, 5);
                ?>
                    <tr>
                        <td><?= $lessonDetails[0]["id"] ?? "" ?></td>
                        <td><?= $lessonDetails[0]["lesson"] ?? "" ?></td>
                        <td><?= $note["note"] ?? "" ?></td>
                        <td><?= $harfNotu ?? "" ?></td>
                        <td><?= $akts ?? "" ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

    <?php endif; ?>
</div>
<br>

<?php include __DIR__ . "/../footer.php"; ?>