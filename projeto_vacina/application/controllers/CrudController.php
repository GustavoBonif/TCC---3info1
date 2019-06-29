<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CrudController extends CI_Controller {

    public function __construct(){
        parent:: __construct();
        $this->load->model('Crud_model');

    }

	public function index(){
        $data['result'] = $this->Crud_model->getAllData();
		$this->load->view('crudView', $data);
    }

    public function create() {
        $this->Crud_model->createData();
        redirect("InicioController/index");
    }

    public function edit($coduser){
        $data['row'] = $this->Crud_model->getData($coduser);
        $this->load->view('crudEdit', $data);
    }

    public function update($coduser){
        $this->Crud_model->updateData($coduser);
        redirect("CrudController");
    }

    public function delete($coduser){
        $this->Crud_model->deleteData($coduser);
        redirect("CrudController");
    }
}
 