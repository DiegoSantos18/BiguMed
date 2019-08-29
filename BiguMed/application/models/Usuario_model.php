<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario_model extends CI_Model {


    public function getUsuarios(){
        $query = $this->db->get('usuarios');
        return $query->result();      
      }
   
}