<?php

  /**
   * koneksi class
   */
  class koneksi
  {

    private $_host = 'localhost';
  	private $_username = 'root';
  	private $_password = '';
  	private $_database = 'rabies-manusia';

  	protected $conn;

  	public function __construct()
  	{
  		if (!isset($this->conn)) {

  			$this->conn = new mysqli($this->_host, $this->_username, $this->_password, $this->_database);

  			if (!$this->conn) {
  				echo "Can't connect to database";
  				exit;
  			}
  		}

  		return $this->conn;
  	}
  }

 ?>
