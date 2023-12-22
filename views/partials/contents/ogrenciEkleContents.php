<?php
//sayfa bağlantıları yapılır
include  __DIR__ . "/../header.php";
include __DIR__ . "/../navbar.php";
?>

<br>
<div class="container">
    <!--Form başlangıcı-->
    <form method="POST">
        <!--öğrenci adı bilgisi alınır-->
        <div class="mb-3">
            <b><label for="exampleInputEmail1" class="form-label">Öğrenci Adı:</label></b>
            <input type="text" class="form-control" id="exampleInputEmail1" name="name">
        </div>
        <?= $name_Err ?? "" ?>

        <!--öğrenci soyadı bilgisi alınır-->
        <div class="mb-3">
            <b><label for="exampleInputPassword1" class="form-label">Öğrenci Soyadı:</label></b>
            <input type="text" class="form-control" id="exampleInputPassword1" name="surname">
        </div>
        <?= $surname_Err ?? "" ?>

        <!--öğrenci telefon numarası bilgisi alınır-->
        <div class="mb-3">
            <b><label for="exampleInputEmail1" class="form-label">Öğrenci Telefon Numarası:</label></b>
            <input type="tel" class="form-control" id="exampleInputEmail1" name="phoneNumber">
        </div>
        <?= $phone_Err ?? "" ?>

        <!--öğrenci kişisel mail bilgisi alınır-->
        <div class="mb-3">
            <b><label for="exampleInputPassword1" class="form-label">Öğrenci E-Posta:</label></b>
            <input type="email" class="form-control" id="exampleInputPassword1" name="mail" placeholder="Kişisel mail giriniz.">
        </div>
        <?= $mail_Err ?? "" ?>

        <!--öğrenci adersi bilgisi alınır-->
        <div class="mb-3">
            <b><label for="exampleInputEmail1" class="form-label">Öğrenci Adresi:</label></b>
            <input type="text" class="form-control" id="exampleInputEmail1" name="adress" placeholder="Balıkesir Kütahya Yolu 3. km, 43300 Kayaarası/Tavşanlı/Kütahya">
        </div>
        <?= $adress_Err ?? "" ?>

        <!--Bölüm seçimi yapılır-->
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

        <!--1. ders seçimi yapılır-->
        <select name="lesson1" class="form-select" style="margin-bottom:15px;">
            <option value="">Ders Seçiniz</option>
            <option value="1">Ofis Yönetimi</option>
            <option value="2">Sekreterlik ve Asistanlık</option>
            <option value="3">İşletme İletişimi</option>
            <option value="4">Ofis Yazılımları Kullanımı</option>
            <option value="5">Toplantı ve Organizasyon Yönetimi</option>
            <option value="6">Yönetim ve Organizasyon</option>
            <option value="7">İşletme Yönetimi</option>
            <option value="8">İnsan Kaynakları Yönetimi</option>
            <option value="9">Stratejik Yönetim</option>
            <option value="10">Kurumsal İletişim</option>
        </select>
        <?= $lesson1_Err ?? "" ?>

        <!--2. ders seçimi yapılır-->
        <select name="lesson2" class="form-select" style="margin-bottom:15px;">
            <option value="">Ders Seçiniz</option>
            <option value="1">Ofis Yönetimi</option>
            <option value="2">Sekreterlik ve Asistanlık</option>
            <option value="3">İşletme İletişimi</option>
            <option value="4">Ofis Yazılımları Kullanımı</option>
            <option value="5">Toplantı ve Organizasyon Yönetimi</option>
            <option value="6">Yönetim ve Organizasyon</option>
            <option value="7">İşletme Yönetimi</option>
            <option value="8">İnsan Kaynakları Yönetimi</option>
            <option value="9">Stratejik Yönetim</option>
            <option value="10">Kurumsal İletişim</option>
        </select>
        <?= $lesson2_Err ?? "" ?>

        <!--3. ders seçimi yapılır-->
        <select name="lesson3" class="form-select" style="margin-bottom:15px;">
            <option value="">Ders Seçiniz</option>
            <option value="1">Ofis Yönetimi</option>
            <option value="2">Sekreterlik ve Asistanlık</option>
            <option value="3">İşletme İletişimi</option>
            <option value="4">Ofis Yazılımları Kullanımı</option>
            <option value="5">Toplantı ve Organizasyon Yönetimi</option>
            <option value="6">Yönetim ve Organizasyon</option>
            <option value="7">İşletme Yönetimi</option>
            <option value="8">İnsan Kaynakları Yönetimi</option>
            <option value="9">Stratejik Yönetim</option>
            <option value="10">Kurumsal İletişim</option>
        </select>
        <?= $lesson3_Err ?? "" ?>

        <!--4. ders seçimi yapılır-->
        <select name="lesson4" class="form-select" style="margin-bottom:15px;">
            <option value="">Ders Seçiniz</option>
            <option value="1">Ofis Yönetimi</option>
            <option value="2">Sekreterlik ve Asistanlık</option>
            <option value="3">İşletme İletişimi</option>
            <option value="4">Ofis Yazılımları Kullanımı</option>
            <option value="5">Toplantı ve Organizasyon Yönetimi</option>
            <option value="6">Yönetim ve Organizasyon</option>
            <option value="7">İşletme Yönetimi</option>
            <option value="8">İnsan Kaynakları Yönetimi</option>
            <option value="9">Stratejik Yönetim</option>
            <option value="10">Kurumsal İletişim</option>
        </select>
        <?= $lesson4_Err ?? "" ?>

        <!--5. ders seçimi yapılır-->
        <select name="lesson5" class="form-select" style="margin-bottom:15px;">
            <option value="">Ders Seçiniz</option>
            <option value="1">Ofis Yönetimi</option>
            <option value="2">Sekreterlik ve Asistanlık</option>
            <option value="3">İşletme İletişimi</option>
            <option value="4">Ofis Yazılımları Kullanımı</option>
            <option value="5">Toplantı ve Organizasyon Yönetimi</option>
            <option value="6">Yönetim ve Organizasyon</option>
            <option value="7">İşletme Yönetimi</option>
            <option value="8">İnsan Kaynakları Yönetimi</option>
            <option value="9">Stratejik Yönetim</option>
            <option value="10">Kurumsal İletişim</option>
        </select>
        <?= $lesson5_Err ?? "" ?>

        <!--bilgi girişi sonrasında butona tıklanarak kayıt yapılır-->
        <button type="submit" class="btn btn-success" name="submit">Kayıt Et</button>
    </form>
    <!--Form bitişi-->
</div>
<br>

<?php
//sayfa bağlantıları yapılır
include __DIR__ . "/../footer.php"; ?>