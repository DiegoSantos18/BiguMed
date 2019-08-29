<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario extends CI_Controller {


	public function index(){
        //carrega model
        //$this->load->model('usuario_model','usuario');
        
        //pega dados do model
        //$dadosUsuario['usuario'] = $this->usuario->getUsuarios();
       
        //chama view
		$this->load->view('Login');
	}
}
