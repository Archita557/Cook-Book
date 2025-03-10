<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Fetch_author extends CI_Model {

	public function fetch_post($limit, $offset)
	{
		$this->db->limit($limit);
		$this->db->offset($offset);
		$this->db->order_by('id DESC');
		$author=   $this->session->userdata('username');
		//return $this->db->get('addpost')->result();
		return $this->db->get_where('addpost',array('username'=>$author))->result();
	
	
	}


	public function editaddpost($id)
	{
		return $this->db->get_where('addpost',array('id'=>$id))->row();
	
	}
	public function viewaddpost($id)
	{
		return $this->db->get_where('addpost',array('id'=>$id))->row();
	
	}
	function count_addpost()
	{
		return $this->db->get_where('addpost')->num_rows();
	
	}


	public function fetch_user_hdr()
	{
		
	
		//return $this->db->get('author')->result();
		$author =  $this->session->userdata('username');
		return $this->db->get_where('author',array('username'=>$author))->row();
	
	
	}

	public function fetch_user(){
	
		$this->db->order_by('id DESC');
	
		//return $this->db->get('author')->result();
		$author =  $this->session->userdata('username');
		return $this->db->get_where('author',array('username'=>$author))->row();
	
	
	}
	public function editauthor($id)
	{
		return $this->db->get_where('author',array('id'=>$id))->row();
	
	}
	public function viewauthor($id)
	{
		return $this->db->get_where('author',array('id'=>$id))->row();
	
	}
	function count_author()
	{
		return $this->db->get_where('author')->num_rows();
	
	}
}