<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class HadithAPI_model extends CI_Model {
	
	function __construct(){
		parent::__construct();
		$this->load->database();
	}//end

	public function returnHadithsForBook($title, $volume){
		return 'hello';
	}



	
}//end class