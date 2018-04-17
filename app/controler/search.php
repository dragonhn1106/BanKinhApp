<?php
	require_once('app/model/search_model.php');
	$key=isset($_GET['s']) ? trim($_GET['s']) : "";
	$key=urldecode($key);
	$data=get_all_book_keyword_model($key);
	/*echo "<pre>";
	print_r($data);
	echo "</pre>";*/
	require_once('app/view/search/index_view.php');
?>