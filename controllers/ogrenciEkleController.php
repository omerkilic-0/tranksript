<?php
//model bağlantısı yapıldı
include "../models/model.php";
$model = new MODEL();

//butona tıklandı ise
if (isset($_POST["submit"])) {
    //veriler değişkenler içerisine yazıldı
    $nameInput = $_POST["name"];
    $surnameInput = $_POST["surname"];
    $phoneNumberInput = $_POST["phoneNumber"];
    $mailInput = $_POST["mail"];
    $adressInput = $_POST["adress"];
    $sectionInput = $_POST["section"];
    $lesson1Input = $_POST["lesson1"];
    $lesson2Input = $_POST["lesson2"];
    $lesson3Input = $_POST["lesson3"];
    $lesson4Input = $_POST["lesson4"];
    $lesson5Input = $_POST["lesson5"];

    //öğrenci ismi kontrolü
    if (empty($nameInput)) {
        $name_Err = '<div class="alert alert-danger" role="alert">Lütfen ad bölümünü boş bırakmayınız!</div>';
    } else if (strlen($nameInput) < 3) {
        $name_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir ad giriniz!</div>';
    } else {
        $name = $nameInput;
    }

    //öğrenci soy adı kontrolü
    if (empty($surnameInput)) {
        $surname_Err = '<div class="alert alert-danger" role="alert">Lütfen soyad bölümünü boş bırakmayınız!</div>';
    } else if (strlen($surnameInput) < 3) {
        $surname_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir soyad yazınız!</div>';
    } else {
        $surname = $surnameInput;
    }

    //öğrenci telefon numarası kontrolü
    if (empty($phoneNumberInput)) {
        $phone_Err = '<div class="alert alert-danger" role="alert">Lütfen telefon numarası bölümünü boş geçmeyiniz!</div>';
    } else if (strlen($phoneNumberInput) < 9) {
        $phone_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir telefon numarası giriniz</div>';
    } else {
        $phoneNumber = $phoneNumberInput;
    }

    //öğrenci kişisel mail kontrolü
    if (empty($mailInput)) {
        $mail_Err = '<div class="alert alert-danger" role="alert">Lütfen e-posta bölümünü boş bırakmayınız!</div>';
    } else if (strlen($mailInput) < 3) {
        $mail_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir e-posta giriniz!</div>';
    } else {
        $mail = $mailInput;
    }

    //öğrenci adresi kontrolü
    if (empty($adressInput)) {
        $adress_Err = '<div class="alert alert-danger" role="alert">Lütfen adress bölümünü boş bırakmayınız!</div>';
    } else if (strlen($adressInput) < 3) {
        $adress_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir adress giriniz!</div>';
    } else {
        $adress = $adressInput;
    }

    //bölüm seçme kontrolü
    if ($sectionInput == null) {
        $section_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir bölüm giriniz!</div>';
    } else {
        $section = $sectionInput;
    }

    //1. ders seçme kontrolü
    if ($lesson1Input == null) {
        $lesson1_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir ders giriniz!</div>';
    } else {
        $lesson1 = $lesson1Input;
    }

    //2. ders seçme kontrolü
    if ($lesson2Input == null) {
        $lesson2_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir ders giriniz!</div>';
    } else {
        $lesson2 = $lesson2Input;
    }

    //3. ders seçme kontrolü
    if ($lesson3Input == null) {
        $lesson3_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir ders giriniz!</div>';
    } else {
        $lesson3 = $lesson3Input;
    }

    //4. ders seçme kontrolü
    if ($lesson4Input == null) {
        $lesson4_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir ders giriniz!</div>';
    } else {
        $lesson4 = $lesson4Input;
    }

    //5. ders seçme kontrolü
    if ($lesson5Input == null) {
        $lesson5_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir ders giriniz!</div>';
    } else {
        $lesson5 = $lesson5Input;
    }

    //girdilerde hata mesajı yok ise
    if (empty($name_Err) & empty($surname_Err) & empty($phone_Err) & empty($mail_Err) & empty($adress_Err) & empty($section_Err) & empty($lesson1_Err) & empty($lesson2_Err) & empty($lesson3_Err) & empty($lesson4_Err) & empty($lesson5_Err)) {
        //öğrenci adı ve soy adına göre öğrencini kurumsal maili oluşturulur.
        $mailName = strtolower(str_replace(" ", ".", $name));
        $mailSurname = strtolower(str_replace(" ", ".", $surname));
        $schoolMail = $mailName . "." . $mailSurname . "@ogr.dpu.edu.tr";

        //öğrencinin öğrenci numarası önceki kayıtlara bakılarak kayıt edilir
        $studentIdInfo = $model->studentIdInfo();
        $studentId = $studentIdInfo[0]["id"] + 1;
        //öğrenci bilgileri modele eklenir
        $studentInfo = [
            "value1" => $studentId,
            "value2" => $name,
            "value3" => $surname,
            "value4" => $phoneNumber,
            "value5" => $mail,
            "value6" => $adress,
            "value7" => $section,
            "value8" => $schoolMail,
            "value9" => $lesson1,
            "value10" => $lesson2,
            "value11" => $lesson3,
            "value12" => $lesson4,
            "value13" => $lesson5,
        ];
        //model çalışır ve kayıt tamamlanmış olur
        $model->addStudent($studentInfo);
    }
}

include "../views/partials/contents/ogrenciEkleContents.php";
