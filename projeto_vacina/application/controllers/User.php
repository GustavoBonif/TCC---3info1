<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class User extends CI_Controller {


function __construct(){
	parent::__construct();
	$this->load->helper('url');
	$this->load->model('users_model');
}

public function index(){
	//load session library
	$this->load->library('session');
	//restrict users to go back to login if session has been set
	if($this->session->userdata('user')){
		redirect('home');
	}
	else{
		$this->load->view('redirecionar');
	}
}

public function login(){
	//load session library
	$this->load->library('session');
	$email = $_POST['email'];
	$senha = $_POST['senha'];
	$data = $this->users_model->login($email, $senha);
	if($data){
		$this->session->set_userdata('user', $data);
		redirect('InicioController/index');
	}
	else{
		redirect('InicioController/erroLogin' , 'refresh');

		header('location:'.base_url().$this->index());
		$this->session->set_flashdata('error','Invalid login. User not found');
	}
}


public function home(){
	//load session library
	$this->load->library('session');
	//restrict users to go to home if not logged in
	if($this->session->userdata('user')){
		$this->load->view('contaView');
	}
	else{
	redirect('/');
	}
}

public function logout(){
	//load session library
	$this->load->library('session');
	$this->session->unset_userdata('user');
	redirect('/');
}
}