<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

 public function __construct(){

		parent::__construct();
		if(!$this->session->userdata('username')){
		redirect('loginauthor');
		}

		
	}
	public function index($offset=0)
	{
		$this->load->library('pagination');
		$config['full_tag_open'] = '<ul class="pagination justify-content-end">';
		$config['full_tag_close'] = '</ul>';
		$config['attributes'] = ['class' => 'page-link'];
		$config['first_link'] ='First';
		$config['last_link'] = 'last';
		$config['first_tag_open'] = '<li class="page-item">';
		$config['first_tag_close'] = '</li>';
		$config['prev_link'] = 'Previous';
		$config['prev_tag_open'] = '<li class="page-item">';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = 'Next';
		$config['next_tag_open'] = '<li class="page-item">';
		$config['next_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li class="page-item">';
		$config['last_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
		$config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
		$config['num_tag_open'] = '<li class="page-item">';
		$config['num_tag_close'] = '</li>';
		$config['base_url'] = site_url('user/index/');
		$this->load->model('fetch_author');
		$config['total_rows'] = $this->fetch_author->count_addpost();
		$config['per_page'] = 5;

		$this->pagination->initialize($config);

		$data['fetchpost']=$this->fetch_author->fetch_post($config['per_page'],$offset);
		$data['fetchauthor']=$this->fetch_author->fetch_user($config['per_page'],$offset);
		$data['authorhdr']=$this->fetch_author->fetch_user_hdr();
		$this->load->view('theme/author/addpost', $data);
	}

	public function post()
	
	{
		$this->load->model('fetch_author');
		$data['authorhdr']=$this->fetch_author->fetch_user_hdr();
		$this->load->view('theme/author/post', $data);
	}

	public function editadd($id)
	{
		$this->load->model('fetch_author');
		$data['editaddpost']=$this->fetch_author->editaddpost($id);
		$data['authorhdr']=$this->fetch_author->fetch_user_hdr();
		$this->load->view('theme/author/edit_addpost', $data);	
	}

	public function updateaddpost($id)
	{
		$this->load->model('save');
	    $this->save->updateadd($id);
		redirect('http://localhost/ci/user');	
	}

	public function deleteaddpost($id)
	{
		$this->load->model('save');
	    $this->save->deleteadd($id);
		redirect('http://localhost/ci/user');	
	}
	public function viewadd($id)
	{
		$this->load->model('fetch_author');
		$data['viewaddpost']=$this->fetch_author->viewaddpost($id);
		$data['authorhdr']=$this->fetch_author->fetch_user_hdr();
		$this->load->view('theme/author/view_addpost', $data);	
	}





	






	
	public function author()
	{
		
		$this->load->model('fetch_author');


		$data['fetchauthor']=$this->fetch_author->fetch_user();
		$data['authorhdr']=$this->fetch_author->fetch_user_hdr();
		$this->load->view('theme/author/author', $data);
	}

	public function addauthor()
	{
		$this->load->model('fetch_author');
		$data['authorhdr']=$this->fetch_author->fetch_user_hdr();
		$this->load->view('theme/author/addauthor',$data);
	}

	public function editauthor($id)
	{
		$this->load->model('fetch_author');
		$data['editauthor']=$this->fetch_author->editauthor($id);
		$data['authorhdr']=$this->fetch_author->fetch_user_hdr();
		$this->load->view('theme/author/edit_author', $data);	
	}

	public function updateauthor($id)
	{
		$this->load->model('save');
	    $this->save->updateauthor($id);
		redirect('http://localhost/ci/user/author');	
	}

	public function deleteauthor($id)
	{
		$this->load->model('save');
	    $this->save->deleteauthor($id);
		$this->session->unset_userdata('username', 'email');
			redirect('loginauthor');	
	}
	public function viewauthor($id)
	{
		$this->load->model('fetch_author');
		$data['viewauthor']=$this->fetch_author->viewauthor($id);
		$data['authorhdr']=$this->fetch_author->fetch_user_hdr();
		$this->load->view('theme/author/view_author', $data);	
	}






	
	
	public function saveadd()
	{
		$this->load->model('save');
		$this->save->save_add_author();
		redirect('http://localhost/ci/user');
	
	}

	
	public function saveauthor()
	{
		$this->load->model('save');
		$this->save->save_author();
		redirect('http://localhost/ci/user/author');
	
	}

	

	public function logoutauthor()
		{
			
			$this->session->unset_userdata('username', 'email');
			redirect('loginauthor');
		
	    }


	
}
