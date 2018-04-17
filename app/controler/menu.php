<?php
	require_once('app/model/menu_right_model.php');
	$data_typebook=get_all_list_typebook_model();
	$data_author=get_all_list_author_model();
	$data_nxb=get_all_list_nxb_model();
	$data_max_viewer=get_info_list_all_book_have_view_max_model();
	require_once('app/view/menu_right_vew.php'); 
?>