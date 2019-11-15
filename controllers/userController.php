<?php
session_start();
include('models/user.php');

class C_user{

    function dangkiTk($name, $email, $password){
        $m_user = new M_user();
        $id_user = $m_user->dangki($name, $email, $password);
        if($id_user > 0){
            $_SESSION['success'] = "Đăng kí thành công!";
            header("location:index.php");
            if(isset($_SESSION['erorr'])){
                unset($_SESSION['erorr']);
            }
        }
        else{
            $_SESSION['erorr'] = "Đăng kí không thành công!";
            header("location:dangki.php");
        }
    }

    public function dangnhapTK($email, $password){
        $m_user = new M_user();
        $user = $m_user->dangnhap($email, $password);
        if($user == true){
            $_SESSION['user_name'] = $user->name;
            $_SESSION['id_user'] = $user->id;
            header("location:index.php");
            //xóa session erorr
            if(isset($_SESSION['erorr'])){
                unset($_SESSION['erorr']);
            }
            if(isset($_SESSION['chua_dang_nhap'])){
                unset($_SESSION['chua_dang_nhap']);
            }
        }
        else{
            $_SESSION['erorr'] = "Đăng nhập không thành công!";
            header("location:dangnhap.php");
        }
    }

}


?>