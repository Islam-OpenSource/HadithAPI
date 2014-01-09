<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ListAllHadithsForBook extends CI_Controller {

	public function __construct(){
        parent::__construct();
        $this->load->model('HadithAPI_model');
    } //end construct

	public function index(){
		$title = (isset($_GET['title']) ? strtolower($_GET['title']) : null);
		$volume = (isset($_GET['volume']) ? $_GET['volume'] : '1');
		
		if ($title) $this->getHadithsForBook($title, $volume);
		else echo json_encode(
				array(
					'Error Message' => 'No Book Title given',
					'Example' => 'http://www.ehadith.com/api/index.php/ListAllHadithForBook?title=bukhari&volume=1'
				)
			);
	}

	public function getHadithsForBook($title, $volume){
		$results = $this->HadithAPI_model->returnHadithsForBook($title, $volume);
		echo json_encode($results);
	}

}