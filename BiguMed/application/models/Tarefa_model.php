<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tarefa_model extends CI_Model
{
  public function getTarefas()
  {
    $query = $this->db->get('tarefa');
    return $query->result_array();
  }

  public function setTarefa()
  {

    $data = array(
      'nome' => $this->input->post('nome'),
      'descricao' => $this->input->post('descricao'),
      'data_agenda' => $this->input->post('data')
    );

    return $this->db->insert('tarefa', $data);
  }
}
