<?php
	require_once('app/config/config.php');
	function get_all_book_keyword_model($keyword)
	{
		$data=array();
		$conn=connection();
		$key="%".$keyword."%";
		$sql="SELECT a.id,a.TenSach,b.id_nxb,b.TenNXB,c.id_tg,c.TenTG,a.HinhAnh,a.GiaCu,a.GiaMoi,d.id_loai,d.TenLoai,a.status,a.SoLuong,a.SoTrang,a.SoLuotXem,a.create_time,a.date_time FROM sach AS a INNER JOIN nhaxuatban AS b ON a.id_nxb=b.id_nxb INNER JOIN tacgia AS c ON a.id_tg=c.id_tg INNER JOIN loaisach AS d ON a.id_loai=d.id_loai WHERE a.TenSach LIKE :keyword OR b.TenNXB LIKE :keyword OR c.TenTG LIKE :keyword OR d.TenLoai LIKE :keyword ORDER BY a.create_time DESC";
		$stmt=$conn->prepare($sql);
		if($stmt)
		{
			$stmt->bindParam(':keyword',$key,PDO::PARAM_STR);
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