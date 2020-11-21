<?php

class conexao_bd{
//variaveis de configuração
 public $host = 'localhost';
 public $db = 'look_cloud';
 public $user = 'root';
 public $pass = '';


public function conectado(){
//instanciando conexão (fazendo conexão com banco de dados)
	try{
		$con = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
		$con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

		return $con;
	}catch(PDOException $e){
			echo "erro de conexao:".$e->getMessage();	
	}	
	}

}

?>