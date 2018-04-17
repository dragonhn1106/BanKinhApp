<?php
	require_once('app/config/config.php');
	function get_all_list_typebook_model()
	{
		$data=array();
		$conn=connection();
		$sql="SELECT * FROM loaisach";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			if($stmt->execute())
			{
				if($stmt->rowCount())
				{
					$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
				}
			}
			$stmt->closeCursor();
		}
		disconnection($conn);
		return $data;
	}
	
	function get_all_list_author_model()
	{
		$data=array();
		$conn=connection();
		$sql="SELECT * FROM tacgia";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			if($stmt->execute())
			{
				if($stmt->rowCount())
				{
					$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
				}
			}
			$stmt->closeCursor();
		}
		disconnection($conn);
		return $data;
	}

	function get_all_list_nxb_model()
	{
		$data=array();
		$conn=connection();
		$sql="SELECT * FROM nhaxuatban";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			if($stmt->execute())
			{
				if($stmt->rowCount())
				{
					$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
				}
			}
			$stmt->closeCursor();
		}
		disconnection($conn);
		return $data;
	}

	function get_info_list_all_book_have_view_max_model()
	{
		$data=array();
		$conn=connection();
		$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.status,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai ORDER BY a.SoLuotXem DESC LIMIT 0,3";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			if($stmt->execute())
			{
				if($stmt->rowCount()>0)
				{
					$data=$stmt->fetchAll(PDO::FETCH_ASSOC);
				}
			}
			$stmt->closeCursor();
		}
		disconnection($conn);
		return $data;
	}
?>