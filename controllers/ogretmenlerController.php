<?php
include "../models/model.php";
$model = new MODEL();
$teachersList = $model->teachersList();

include "../views/partials/contents/ogretmenlerContents.php";