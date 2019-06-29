<?php
class Users_model extends CI_Model {

    function __construct(){
        parent::__construct();
        $this->load->database();
    }


    public function login($email, $senha){
        $query = $this->db->get_where('user', array('email'=>$email, 'senha'=>$senha));
        return $query->row_array();
    }
}
?>