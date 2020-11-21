<?php 
require '... /Control/crud_DAO.php'; 

class cadastrar{

	private $nome_proprio; 
	private $e_mail; 
	private $senha_cad; 
	private $telefone; 
	private $email_secu; 

	public function setNomep($nome_proprio){
		$this->nome_proprio = $nome_proprio;
	}
	public function getNomep(){
		return $this->nome_proprio;
	}

	public function setEmail($e_mail){
		$this->e_mail = $e_mail;
	}
	public function getEmail(){
		return $this->e_mail;
	}

	public function setSenha($senha_cad){
		$this->senha_cad = $senha_cad;
	}
	public function getSenha(){
		return $this->senha_cad;
	}

	public function setTelefone($telefone){
		$this->telefone = $telefone;
	}
	public function getTelefone(){
		return $this->telefone;
	}

	public function setEmailse($email_secu){
		$this->email_secu = $email_secu;
	}
	public function getEmailse(){
		return $this->email_secu;
	}


}

//instanciar objeto da classe usuario e receber valores da tela cadastro

$user = new cadastrar();
//passando valor dos campos digitado
$user->setNomep($_POST['nome_cad']);
$user->setEmail($_POST['email_cad']);
$user->setSenha($_POST['senha_cad']);
$user->setTelefone($_POST['telefone_cad']);
$user->setEmailse($_POST['emailsec_cad']);

//tratamento de dados
$userDAO = new crud_DAO();
$userDAO->insert($user);

?>