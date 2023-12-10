<?php
include "../models/model.php";
$model = new MODEL();
$lessonList = $model->lessonList();

include "../views/partials/contents/derslerContents.php";