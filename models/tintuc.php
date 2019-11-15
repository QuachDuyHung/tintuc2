<?php

include('database.php');

/**
 * 
 */
class M_tintuc extends database
{
	
	function getSlide()
	{
		$sql = "SELECT * FROM slide";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}

	function getMenu(){
		$sql = "SELECT tl.*, GROUP_CONCAT(distinct lt.id,':', lt.Ten,':', lt.TenKhongDau) as LoaiTin,/*, lt.TenKhongDau*/
				tt.id as idTin, tt.TieuDe as TieuDeTin,
				tt.Hinh as HinhTin, tt.TomTat as TomTatTin,
				tt.TieuDeKhongDau as TieuDeTinKhongDau
				FROM theloai tl INNER JOIN loaitin lt ON lt.idTheLoai = tl.id
				INNER JOIN tintuc tt ON tt.idLoaiTin = lt.id GROUP BY tl.id";

		$this->setQuery($sql);
		return $this->loadAllRows();
	}

	function getTintucByIdLoai($id_LoaiTin, $vitri=-1, $limit=-1){
		$sql = "SELECT tintuc.*, loaitin.id as idLT, loaitin.TenKhongDau FROM tintuc, loaitin WHERE tintuc.idLoaiTin = $id_LoaiTin AND tintuc.idLoaiTin = loaitin.id";

		if($vitri>-1 && $limit>1){
			$sql .= " limit $vitri, $limit";
		}

		$this->setQuery($sql);
		return $this->loadAllRows(array($id_LoaiTin));
	}

	function getTitleById($id_LoaiTin){
		$sql = "SELECT Ten FROM loaitin WHERE id = $id_LoaiTin";
		$this->setQuery($sql);
		return $this->loadRow(array($id_LoaiTin));
	}

	function getChiTietTin($id){
		$sql = "SELECT * FROM tintuc WHERE id = $id";
		$this->setQuery($sql);
		return $this->loadRow(array($id));
	}

	function getComment($id_tin){
		$sql = "SELECT * FROM comment, users WHERE idTinTuc = $id_tin AND comment.idUser = users.id";
		$this->setQuery($sql);
		return $this->loadAllRows(array($id_tin));
	}

	function getTinLienQuan($alias){
		$sql = "SELECT tt.*, lt.TenKhongDau as TenKhongDau, lt.id as idLoaiTin FROM tintuc tt INNER JOIN loaitin lt ON tt.idLoaiTin = lt.id WHERE lt.TenKhongDau = '$alias' ORDER BY RAND() LIMIT 5";
		$this->setQuery($sql);
		return $this->loadAllRows(array($alias));
	}

	function getTinNoiBat(){
		$sql = "SELECT tintuc.*, loaitin.TenKhongDau FROM tintuc, loaitin WHERE NoiBat = 1 AND tintuc.idLoaiTin = loaitin.id ORDER BY RAND() LIMIT 5";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}

	function addComment($id_user, $id_tin, $noidung){
		$sql = "INSERT INTO comment(idUser,idTinTuc,NoiDung) VALUES(?,?,?)";
		$this->setQuery($sql);
		return $this->execute(array($id_user,$id_tin,$noidung));
	}

	function search($key){
		$sql = "SELECT tt.*, lt.TenKhongDau as tenkhongdau FROM tintuc tt INNER JOIN loaitin lt ON tt.idLoaiTin = lt.id WHERE tt.TieuDe REGEXP '$key' OR tt.TomTat REGEXP '$key'";
		$this->setQuery($sql);
		return $this->loadAllRows(array($key));
	}
}

?>
