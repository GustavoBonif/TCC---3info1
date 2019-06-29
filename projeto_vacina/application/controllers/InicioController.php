<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class InicioController extends CI_Controller {

    public function __construct(){
        parent:: __construct();
        $this->load->library('session');

    }

	public function index(){
		$this->load->view('paginaInicial');
    }

    //cabeçalho
    public function header_cadastro(){
        $this->load->view('cadastro');
    }

    public function erroLogin(){
        $this->load->view('erroLogin');
    }

    public function contaView(){
        $this->load->model('Crud_model');
        //load session library
        $this->load->library('session');

        if($this->session->userdata('user')){
            $data['result'] = $this->Crud_model->getAllData();
            $this->load->view('contaView', $data);
          }else{
            $this->load->view('redirecionar');
          }
    }

    public function header_login(){
        $this->load->view('login');
    }

    public function redirecionar(){
        $this->load->view('redirecionar');
    }

    public function logar(){
        $this->load->model('Usuarios_model');

        $this->load->model('usuarios_model');
        $email = $this->input->post('email');
        $senha = $this->input->post('senha');

        $usuario = $this->Usuarios_model->logarUsuarios($email, $senha);
        if ($usuario) {
            $_SESSION['usuario'] = $usuario;
            //$this->session->session_start()("usuario_logado", $usuario);
            //$this->session->set_flashdata("success", "logado com sucesso");
        }else{
            echo "não deu";
            //$this->session->set_flashdata("danger", "Usuário ou senha inválidos!");

        }
        redirect(base_url());
    }

}
 