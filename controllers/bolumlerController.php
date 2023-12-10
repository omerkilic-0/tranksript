<?php
include "../models/model.php";
$model = new MODEL();
$sectionList = $model->sectionList();


include "../views/partials/contents/bolumlerContents.php";
