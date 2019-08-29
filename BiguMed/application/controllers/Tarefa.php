<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tarefa extends CI_Controller
{
    public function index()
    {
        //carrega model
        $this->load->model('tarefa_model', 'tarefa');

        //pega dados do model
        $data['tarefa'] = $this->tarefa->getTarefas();

        //chama view
        $this->load->view('ListaTarefa', $data);
    }

    public function create()
    {
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('nome', 'Nome', 'required');
        $this->form_validation->set_rules('descricao', 'Descrição', 'required');

        if ($this->form_validation->run() === TRUE) {
            $this->news_model->setTarefa();
        }
    }
}
