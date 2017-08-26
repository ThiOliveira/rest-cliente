package br.com.restcliente.dao;

import java.util.List;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;

import br.com.restcliente.model.Livro;

public class BibliotecaDAO {

	private static final String URL = "http://localhost:8081/RestServer/livros";

	private Client client;

	public BibliotecaDAO() {
		client = ClientBuilder.newClient();
	}

	public Livro buscarPorID(Long id) {
		return client.target(URL + "/" + id).request(MediaType.APPLICATION_JSON).get(Livro.class);
	}

	public List<Livro> buscarTodos() {
		return client.target(URL).request(MediaType.APPLICATION_JSON).get(new GenericType<List<Livro>>() {
		});
	}

	public void salvarLivro(Livro livro) {
		if (livro.isNovo()) { // Salvar
			client.target(URL).request(MediaType.APPLICATION_JSON)
					.post(Entity.entity(livro, MediaType.APPLICATION_JSON));
		} else { // Editar
			client.target(URL + "/" + livro.getId()).request(MediaType.APPLICATION_JSON)
					.put(Entity.entity(livro, MediaType.APPLICATION_JSON));
		}
	}

	public void deletarLivro(Long id) {
		client.target(URL + "/" + id).request(MediaType.APPLICATION_JSON).delete();
	}
}
