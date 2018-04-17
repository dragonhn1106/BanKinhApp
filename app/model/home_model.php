<?php
	require_once('app/config/config.php');
	function get_info_all_book_model()
	{
		$data=array();
		$conn=connection();
		$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.status,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai ORDER BY a.create_time DESC";
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

	function get_info_all_typebook_model($id_loai)
	{
		$data=array();
		$conn=connection();
		$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai WHERE a.id_loai=:idloai ORDER BY a.create_time DESC";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			$stmt->bindParam(':idloai',$id_loai,PDO::PARAM_INT);
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

	function get_info_all_author_model($idtg)
	{
		$data=array();
		$conn=connection();
		$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.status,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai WHERE a.id_tg=:idtg ORDER BY a.create_time DESC";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			$stmt->bindParam(':idtg',$idtg,PDO::PARAM_INT);
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

	function get_info_all_nxb_model($idnxb)
	{
		$data=array();
		$conn=connection();
		$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.status,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai WHERE a.id_nxb=:id_nxb ORDER BY a.create_time DESC";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			$stmt->bindParam(':id_nxb',$idnxb,PDO::PARAM_INT);
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

	function get_info_all_money_model($fmoney,$tmoney)
	{
		 
		$data=array();
		$conn=connection();
		if($tmoney>0)
		{
			$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.status,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai WHERE a.GiaCu BETWEEN :fmoney AND :tmoney ORDER BY a.create_time DESC";
		}
		else
		{
			$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.status,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai WHERE a.GiaCu > :fmoney ORDER BY a.create_time DESC";
		}
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			$stmt->bindParam(':fmoney',$fmoney,PDO::PARAM_INT);
			if($tmoney>0)
			{
				$stmt->bindParam(':tmoney',$tmoney,PDO::PARAM_INT);
			}
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

	function get_info_all_book_by_page_model($start,$limit)
	{
		$data=array();
		$conn=connection();
		$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.status,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai ORDER BY a.create_time DESC LIMIT :start,:limit_a";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			$stmt->bindParam(':start',$start,PDO::PARAM_INT);
            $stmt->bindParam(':limit_a',$limit,PDO::PARAM_INT);
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

	function get_info_all_typebook_by_page_model($id_loai,$start,$limit)
	{
		$data=array();
		$conn=connection();
		$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai WHERE d.id_loai=:idloai ORDER BY a.create_time DESC LIMIT :start,:limit_a";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			$stmt->bindParam(':idloai',$id_loai,PDO::PARAM_INT);
			$stmt->bindParam(':start',$start,PDO::PARAM_INT);
			$stmt->bindParam(':limit_a',$limit,PDO::PARAM_INT);
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

	function get_info_all_authorbook_by_page_model($id_tg,$start,$limit)
	{
		$data=array();
		$conn=connection();
		$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai WHERE c.id_tg=:idtg ORDER BY a.create_time DESC LIMIT :start,:limit_a";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			$stmt->bindParam(':idtg',$id_tg,PDO::PARAM_INT);
			$stmt->bindParam(':start',$start,PDO::PARAM_INT);
			$stmt->bindParam(':limit_a',$limit,PDO::PARAM_INT);
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

	function get_info_all_nxb_by_page_model($idnxb,$start,$limit)
	{
		$data=array();
		$conn=connection();
		$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai WHERE b.id_nxb=:id_nxb ORDER BY a.create_time DESC LIMIT :start,:limit_a";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			$stmt->bindParam(':id_nxb',$idnxb,PDO::PARAM_INT);
			$stmt->bindParam(':start',$start,PDO::PARAM_INT);
			$stmt->bindParam(':limit_a',$limit,PDO::PARAM_INT);
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

	function get_info_all_money_by_page_model($fmoney,$tmoney,$start,$limit)
	{
		$data=array();
		$conn=connection();
		if($tmoney>0)
		{
			$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.status,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai WHERE a.GiaCu BETWEEN :fmoney AND :tmoney ORDER BY a.create_time DESC LIMIT :start,:limit_a";
		}
		else
		{
			$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.status,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai WHERE a.GiaCu > :fmoney ORDER BY a.create_time DESC LIMIT :start,:limit_a";
		}
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			$stmt->bindParam(':fmoney',$fmoney,PDO::PARAM_INT);
			if($tmoney>0)
			{
				$stmt->bindParam(':tmoney',$tmoney,PDO::PARAM_INT);
			}
			$stmt->bindParam(':start',$start,PDO::PARAM_INT);
			$stmt->bindParam(':limit_a',$limit,PDO::PARAM_INT);
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