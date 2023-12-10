<?php
include  __DIR__ . "/../header.php";
include __DIR__ . "/../navbar.php";
?>

<br>
<div class="container">
    <form method="POST">
        <div class="mb-3">
            <b><label for="exampleInputEmail1" class="form-label">Öğrenci Adı:</label></b>
            <input type="text" class="form-control" id="exampleInputEmail1" name="name">
        </div>
        <?= $name_Err ?? "" ?>

        <div class="mb-3">
            <b><label for="exampleInputPassword1" class="form-label">Öğrenci Soyadı:</label></b>
            <input type="text" class="form-control" id="exampleInputPassword1" name="surname">
        </div>
        <?= $surname_Err ?? "" ?>

        <div class="mb-3">
            <b><label for="exampleInputEmail1" class="form-label">Öğrenci Telefon Numarası:</label></b>
            <input type="tel" class="form-control" id="exampleInputEmail1" name="phoneNumber">
        </div>
        <?= $phone_Err ?? "" ?>

        <div class="mb-3">
            <b><label for="exampleInputPassword1" class="form-label">Öğrenci E-Posta:</label></b>
            <input type="email" class="form-control" id="exampleInputPassword1" name="mail" placeholder="Kişisel mail giriniz.">
        </div>
        <?= $mail_Err ?? "" ?>

        <div class="mb-3">
            <b><label for="exampleInputEmail1" class="form-label">Öğrenci Adresi:</label></b>
            <input type="text" class="form-control" id="exampleInputEmail1" name="adress" placeholder="Balıkesir Kütahya Yolu 3. km, 43300 Kayaarası/Tavşanlı/Kütahya">
        </div>
        <?= $adress_Err ?? "" ?>

        <br>

        <select name="section" class="form-select" style="margin-bottom:15px;">
            <option value="">Bölüm Seçiniz</option>
            <option value="1">Büro Hizmetleri ve Sekreterlik Bölümü</option>
            <option value="2">Yönetim ve Organizasyon Bölümü</option>
            <option value="3">Bilgisayar Programcılığı Bölümü</option>
            <option value="4">İnternet ve Ağ Teknolojileri</option>
            <option value="5">Dış Ticaret Bölümü</option>
            <option value="6">Elektrik ve Şehir Planlama Bölümü</option>
            <option value="7">Mimarlık ve Şehir Planlama Bölümü</option>
            <option value="8">Elektronik ve Otomasyon Bölümü</option>
            <option value="9">Makine ve Metal Teknolojileri Bölümü</option>
            <option value="10">Motorlu Araçlar ve Ulaçtırma Teknolojileri Bölümü</option>
            <option value="11">Muhsebe ve Vergi Bölümü</option>
            <option value="12">Mülkiyet Koruma ve Güvenlik Bölümü</option>
        </select>
        <?= $section_Err ?? "" ?>

        <br>

        <button type="submit" class="btn btn-success" name="submit">Kayıt Et</button>
    </form>
</div>
<br>

<?php include __DIR__ . "/../footer.php"; ?>