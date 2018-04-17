<?php
	require_once('app/model/detail_model.php');
	require_once('app/lips/captcha.php');
	$method=isset($_GET['method']) ? trim($_GET['method']) : "index";
	switch ($method) {
		case 'index':
			list_detail();
			break;
	}
	function list_detail()
	{
		$stringTitle=isset($_GET['book']) ? trim($_GET['book']) : "";
		$stringIdbook=explode("-", $stringTitle);
		$idbook=end($stringIdbook);
		$idbook=is_numeric($idbook) ? $idbook : 0;
		$detail_data=get_info_book_by_id_model($idbook);
		if(!empty($detail_data))
		{
			$captcha=simple_php_captcha();
			$_SESSION['captcha'] = $captcha['code'];
			$checkSession = isset($_SESSION['username']) ? '1' : '0';
			update_viewer_model($idbook,$detail_data['SoLuotXem']);
			$data_type_book_same=get_info_type_book_same($idbook,$detail_data['id_loai']);
			//nhung cau hoi pho bien
			$data_question_popular=get_all_question_popular_model();

			$comment=get_all_question_by_idbook_model($idbook);
			$answer=get_all_answer_by_model();
			
			require_once('app/view/detail/index_view.php');
		}
		else
		{
			require_once('app/view/home/errors_view.php');
		}
		
		/*$idBook=isset($_GET['idBook']) ? trim($_GET['idBook']) : 0;
		$idBook=is_numeric($idBook) ? $idBook : 0;
		//$detail_data=get_info_book_by_id_model($idBook);
		update_viewer_model($idBook,$detail_data['SoLuotXem']);
		$data_type_book_same=get_info_type_book_same($idBook,$detail_data['id_loai']);*/
	}
?>