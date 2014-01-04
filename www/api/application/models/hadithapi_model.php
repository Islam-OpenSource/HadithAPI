<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class HadithAPI_model extends CI_Model {
	
	function __construct(){
		parent::__construct();
		$this->load->database();
	}//end

	public function returnHadithsForBook($title, $volume){

		$q = $this->db->select("*")
		   	->from('hadiths');

		$result = $q->get()->result();
		return $result;
	}
	
	public function returnBooksForCollection($title){

		$q = $this->db->select("books.id AS 'Book_id', books.name AS 'Book_Name', collections.name AS 'Collection_Name', books.volume_number AS 'Volume_Number', books.author AS 'Author'")
		   	->from('books')
		   	->join('collections', 'collections.id = books.collection_id')
		   	->like('collections.name', $title)
		   	->order_by("books.volume_number");

		$result = $q->get()->result();
		return $result;
	}
	
}//end class