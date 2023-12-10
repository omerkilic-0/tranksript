<?php
include "../models/model.php";
$model = new MODEL(); 
$studentList = $model->studentList();

include "../views/partials/contents/anaSayfaContent.php";