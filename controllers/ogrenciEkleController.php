<?php
include "../models/model.php";
$model = new MODEL();

if (isset($_POST["submit"])) {
    $nameInput = $_POST["name"];
    $surnameInput = $_POST["surname"];
    $phoneNumberInput = $_POST["phoneNumber"];
    $mailInput = $_POST["mail"];
    $adressInput = $_POST["adress"];
    $sectionInput = $_POST["section"];

    if (empty($nameInput)) {
        $name_Err = '<div class="alert alert-danger" role="alert">Lütfen ad bölümünü boş bırakmayınız!</div>';
    } else if (strlen($nameInput) < 3) {
        $name_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir ad giriniz!</div>';
    } else {
        $name = $nameInput;
    }

    if (empty($surnameInput)) {
        $surname_Err = '<div class="alert alert-danger" role="alert">Lütfen soyad bölümünü boş bırakmayınız!</div>';
    } else if (strlen($surnameInput) < 3) {
        $surname_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir soyad yazınız!</div>';
    } else {
        $surname = $surnameInput;
    }

    if (empty($phoneNumberInput)) {
        $phone_Err = '<div class="alert alert-danger" role="alert">Lütfen telefon numarası bölümünü boş geçmeyiniz!</div>';
    } else if (strlen($phoneNumberInput) < 9) {
        $phone_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir telefon numarası giriniz</div>';
    } else {
        $phoneNumber = $phoneNumberInput;
    }

    if (empty($mailInput)) {
        $mail_Err = '<div class="alert alert-danger" role="alert">Lütfen e-posta bölümünü boş bırakmayınız!</div>';
    } else if (strlen($mailInput) < 3) {
        $mail_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir e-posta giriniz!</div>';
    } else {
        $mail = $mailInput;
    }

    if (empty($adressInput)) {
        $adress_Err = '<div class="alert alert-danger" role="alert">Lütfen adress bölümünü boş bırakmayınız!</div>';
    } else if (strlen($adressInput) < 3) {
        $adress_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir adress giriniz!</div>';
    } else {
        $adress = $adressInput;
    }

    if ($sectionInput == null) {
        $section_Err = '<div class="alert alert-danger" role="alert">Lütfen geçerli bir bölüm giriniz!</div>';
    } else {
        $section = $sectionInput;
    }

    $mailName = strtolower(str_replace(" ", ".", $name));
    $mailSurname = strtolower(str_replace(" ", ".", $surname));
    $schoolMail = $mailName . "." . $mailSurname . "@ogr.dpu.edu.tr";

    if (empty($name_Err) & empty($surname_Err) & empty($phone_Err) & empty($mail_Err) & empty($adress_Err) & empty($section_Err)) {
        $studentIdInfo = $model->studentIdInfo();
        $studentId = $studentIdInfo[0]["id"] + 1;
        $studentInfo = [
            "value1" => $studentId,
            "value2" => $name,
            "value3" => $surname,
            "value4" => $phoneNumber,
            "value5" => $mail,
            "value6" => $adress,
            "value7" => $section,
            "value8" => $schoolMail,
        ];
        $model->addStudent($studentInfo);
    }
}

include "../views/partials/contents/ogrenciEkleContents.php";
