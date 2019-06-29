<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Crud_model extends CI_Model {

    public function __construct(){
        $this->load->database();
    }

    function createData(){
        $data = array (
            'email' => $this->input->post('email'),
            'senha' => $this->input->post('senha'),
            'nome' => $this->input->post('nome'),
            'codtipuser' => $this->input->post('codtipuser')
        );
        $this->db->insert('user', $data);
    }

    function getAllData(){
        $query = $this->db->query('select * from user');
        return $query->result();
    }

    function getData($coduser){
        $query = $this->db->query('select * from user where coduser =' .$coduser);
        return $query->row();
    }

    function updateData($coduser){
        $data = array (
            'email' => $this->input->post('email'),
            'senha' => $this->input->post('senha'),
            'nome' => $this->input->post('nome'),
            //'codtipuser' => $this->input->post('codtipuser')
            'codtipuser' => $_SESSION['user']['codtipuser']
        );
        $this->db->where('coduser', $coduser);
        $this->db->update('user', $data);
    }

    function deleteData($coduser){
        $this->db->where('coduser', $coduser);
        $this->db->delete('user');
    }
}
