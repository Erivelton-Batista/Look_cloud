<?php
require 'conexao_bd.php';
require '... /Model/cadastro.php';

//criando classe DAO com os metodos crud

class crud_DAO{

//metodo insert(cadastrar)
	public function insert(usuario $c){

		$sql = 'INSERT INTO usuarios_cadastro(nome, email, senha, telefone, e_mail_secu) VALUES (?,?,?,?,?)';
		//instacia de conexao de db
		$conex = conexao_bd::conectado()->prepare($sql);

		//relacionado os gets
		$conex->bindValue(1,$c->getNomep());
		$conex->bindValue(2,$c->getEmail());
		$conex->bindValue(3,$c->getSenha());
		$conex->bindValue(4,$c->gettelefone());
		$conex->bindValue(5,$c->getEmailse());

		//enviar para o BD(executando)
		$conex->execute();

	}

}




?>