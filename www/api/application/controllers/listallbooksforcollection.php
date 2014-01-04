<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ListAllBooksForCollection extends CI_Controller {

	public function __construct(){
        parent::__construct();
        $this->load->model('HadithAPI_model');
    } //end construct

	public function index(){
		$title = (isset($_GET['title']) ? strtolower($_GET['title']) : null);
		if ($title) $this->getBooksForCollection($title);
		else {
			echo json_encode(
				array(
					'Error Message' => 'No Collection Title given',
					'Example' => 'http://www.ehadith.com/api/index.php/ListAllHadithForBook?title=bukhari&volume=1'
				)
			);
		}
	}

	public function getBooksForCollection($title){
		$results = $this->HadithAPI_model->returnBooksForCollection($title);
		echo json_encode($results);
	}


}