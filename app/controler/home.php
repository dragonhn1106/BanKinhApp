<?php
	require_once('app/model/home_model.php');
	$method=isset($_GET['method']) ? trim($_GET['method']) : "index";
	switch ($method) {
		case 'index':
			list_info_book();
			break;
		case 'typebook':
			list_info_typebook();
			break;
		case 'author':
			list_info_author();
			break;
		case 'nxb':
			list_info_nxb();
			break;
		case 'sach_theo_gia':
			list_info_money();
			break;
	}

	//xem danh sách sách
	function list_info_book()
	{
        $dataCount = get_info_all_book_model();
        $page = (isset($_GET['page'])) ? trim($_GET['page']) : 1;
        $page=is_numeric($page) ? $page : 1; 
        $limit = 9;
        $total_page = count($dataCount);
        $link = create_link(BASE_URL, array('cn'=>'home','method'=>'index','page'=>'{page}'));
        $paginghome = paging($link,$total_page,$page,$limit);
        $data_book = get_info_all_book_by_page_model($paginghome['start'],$paginghome['limit']);
		require_once('app/view/home/index_view.php');
	}

	//xem sách theo thể loại
	function list_info_typebook()
	{
		$idTypeBook=isset($_GET['idTypeBook']) ? trim($_GET['idTypeBook']) : "";
		$idTypeBook=is_numeric($idTypeBook) ? $idTypeBook : "";

		$dataCount = get_info_all_typebook_model($idTypeBook);
        $page = (isset($_GET['page'])) ? trim($_GET['page']) : 1;
        $page=is_numeric($page) ? $page : 1; 
        $limit = 3;
        $total_page = count($dataCount);
        $link = create_link(BASE_URL, array('cn'=>'home','method'=>'typebook','idTypeBook'=>$idTypeBook,'page'=>'{page}'));
        $paginghome = paging($link,$total_page,$page,$limit);
        $dataTypeBook = get_info_all_typebook_by_page_model($idTypeBook,$paginghome['start'],$paginghome['limit']);

		if(!empty($dataTypeBook))
		{
			require_once('app/view/home/list_typebook_view.php');
		}
		else
		{
			require_once('app/view/home/errors_view.php');
		}
	}

	//xem sách theo tác giả
	function list_info_author()
	{
		$idAuthorBook=isset($_GET['idAuthor']) ? trim($_GET['idAuthor']) : "";
		$idAuthorBook=is_numeric($idAuthorBook) ? $idAuthorBook : "";

		$dataCount = get_info_all_author_model($idAuthorBook);
        $page = (isset($_GET['page'])) ? trim($_GET['page']) : 1;
        $page=is_numeric($page) ? $page : 1; 
        $limit = 3;
        $total_page = count($dataCount);
        $link = create_link(BASE_URL, array('cn'=>'home','method'=>'author','idAuthor'=>$idAuthorBook,'page'=>'{page}'));
        $paginghome = paging($link,$total_page,$page,$limit);
        $dataAuthorBook = get_info_all_authorbook_by_page_model($idAuthorBook,$paginghome['start'],$paginghome['limit']);

		if(!empty($dataAuthorBook))
		{
			require_once('app/view/home/list_author_view.php');
		}
		else
		{
			require_once('app/view/home/errors_view.php');
		}
	}

	//xem sách theo giá tiền
	function list_info_money()
	{
		$fmoney=isset($_GET['fm']) ? trim($_GET['fm']) : "";
		$fmoney=is_numeric($fmoney) ? $fmoney : "";
		$tmoney=isset($_GET['tm']) ? trim($_GET['tm']) : "";
		$tmoney=is_numeric($tmoney) ? $tmoney : "";

		$dataCount = get_info_all_money_model($fmoney,$tmoney);
        $page = (isset($_GET['page'])) ? trim($_GET['page']) : 1;
        $page=is_numeric($page) ? $page : 1; 
        $limit = 3;
        $total_page = count($dataCount);
        $link = create_link(BASE_URL, array('cn'=>'home','method'=>'sach_theo_gia','fm'=>$fmoney,'tm'=>$tmoney,'page'=>'{page}'));
        $paginghome = paging($link,$total_page,$page,$limit);
        $dataMoneyBook = get_info_all_money_by_page_model($fmoney,$tmoney,$paginghome['start'],$paginghome['limit']);

		if(!empty($dataMoneyBook))
		{
			require_once('app/view/home/list_money_view.php');
		}
		else
		{
			require_once('app/view/home/errors_view.php');
		}
	}

	//xem sách theo nhà xuất bản
	function list_info_nxb()
	{
		$idNXB=isset($_GET['idNXB']) ? trim($_GET['idNXB']) : "";
		$idNXB=is_numeric($idNXB) ? $idNXB : 0;

		$dataCount = get_info_all_nxb_model($idNXB);
        $page = (isset($_GET['page'])) ? trim($_GET['page']) : 1;
        $page=is_numeric($page) ? $page : 1; 
        $limit = 3;
        $total_page = count($dataCount);
        $link = create_link(BASE_URL, array('cn'=>'home','method'=>'nxb','idNXB'=>$idNXB,'page'=>'{page}'));
        $paginghome = paging($link,$total_page,$page,$limit);
        $dataNXBBook = get_info_all_nxb_by_page_model($idNXB,$paginghome['start'],$paginghome['limit']);

        if(!empty($dataNXBBook))
		{
			require_once('app/view/home/list_nxb_view.php');
		}
		else
		{
			require_once('app/view/home/errors_view.php');
		}
	}
	
?>