<?php
include "../models/model.php";
$model = new MODEL();

if (isset($_POST["submit"])) {
    $stunedtNumberInput = $_POST["stunedtNumber"];
    if (empty($stunedtNumberInput)) {
        $stunedtNumber_Err = '<div class="alert alert-danger" role="alert">Lütfen öğrenci numarası bölümünü boş bırakmayınız!</div>';
    } else if (strlen($stunedtNumberInput) < 12) {
        $stunedtNumber_Err = '<div class="alert alert-danger" role="alert">Lütfen öğrenci numarası bölümünü en az 12 karakterden oluşmalıdır!</div>';
    } else {
        $id = $stunedtNumberInput;
        $studentDetails = $model->studentDetails($id);
        $noteList = $model->noteList($id);
    }
}

include "../views/partials/contents/ogrenciBilgisiContents.php";
