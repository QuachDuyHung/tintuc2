<?php

include('models/tintuc.php');
include('models/pager.php');

/**
 * 
 */
class C_tintuc
{
	
	public function index()
	{
		$m_tintuc = new M_tintuc();
		$slide = $m_tintuc->getSlide();

		$menu = $m_tintuc->getMenu();


		return array('slide'=>$slide, 'menu'=>$menu);
	}

	public function loaitin(){
		$id_loai = $_GET['id_loai'];
		$m_tintuc = new M_tintuc();
		$danhmuctin = $m_tintuc->getTintucByIdLoai($id_loai);
		//phan trang
		$tranghientai = (isset($_GET['page'])) ? $_GET['page'] : 1;
		$pagination = new pagination(count($danhmuctin),$tranghientai, 5, 5);
		$paginationHTML = $pagination->showPagination();
		$limit = $pagination->_nItemOnPage;
		$vitri = ($tranghientai-1)*$limit;
		$danhmuctin = $m_tintuc->getTintucByIdLoai($id_loai, $vitri, $limit);

		$menu = $m_tintuc->getMenu();
		$title = $m_tintuc->getTitleById($id_loai);
		return array('danhmuctin'=>$danhmuctin, 'menu'=>$menu, 'title'=>$title, 'thanh_phantrang'=>$paginationHTML);
	}


	function chiTietTin(){
		$id_tin = $_GET['id_tin'];
		$alias = $_GET['loai_tin'];
		$m_tintuc = new M_tintuc();
		$chiTietTin = $m_tintuc->getChiTietTin($id_tin);
		$comment = $m_tintuc->getComment($id_tin);
		$tinLienQuan = $m_tintuc->getTinLienQuan($alias);
		$tinNoibat = $m_tintuc->getTinNoiBat();
		return array('chiTietTin'=>$chiTietTin, 'comment'=>$comment, 'tinLienQuan'=>$tinLienQuan, 'tinNoiBat'=>$tinNoibat);
	}

	function themBinhLuan($id_user, $id_tin, $noidung){
		$m_tintuc = new M_tintuc();
		$binhluan = $m_tintuc->addComment($id_user, $id_tin, $noidung);
		header("location:".$_SERVER['HTTP_REFERER']);//QUAY VE DUNG TRANG VUA THUC THI

	}

	function timkiem($key){
		$m_tintuc = new M_tintuc();
		$tin = $m_tintuc->search($key);
		return $tin;
	}

}


?>