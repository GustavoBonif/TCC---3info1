<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuarios_model extends CI_Model {

    public function __construct(){
        $this->load->database();
    }

    public function logarUsuarios($email, $senha){
        $this->db->where("email", $email);
        $this->db->where("senha", $senha);
        $usuario = $this->db->get("user")-> row_array();
        return $usuario;
           
    }

}
