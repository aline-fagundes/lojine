package br.com.lojine.controller;

import java.sql.Connection;
import java.util.List;

import br.com.lojine.dao.CategoriaDAO;
import br.com.lojine.factory.ConnectionFactory;
import br.com.lojine.modelo.Categoria;

public class CategoriaController {

	private CategoriaDAO categoriaDAO;

	public CategoriaController() {
		Connection connection = new ConnectionFactory().recuperarConexao();
		this.categoriaDAO = new CategoriaDAO(connection);
	}

	public List<Categoria> listar() {
		return this.categoriaDAO.listar();
	}
}
