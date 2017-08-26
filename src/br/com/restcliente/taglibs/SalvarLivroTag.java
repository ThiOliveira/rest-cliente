package br.com.restcliente.taglibs;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import br.com.restcliente.dao.BibliotecaDAO;
import br.com.restcliente.model.Livro;

public class SalvarLivroTag extends SimpleTagSupport {

	private Long id;
	private String titulo;
	private String genero;
	
	private BibliotecaDAO biblioteceDAO;

	public SalvarLivroTag() {
		this.biblioteceDAO = new BibliotecaDAO();
	}

	@Override
	public void doTag() throws JspException, IOException {
		Livro livro = new Livro(id, titulo, genero);
		biblioteceDAO.salvarLivro(livro);
	}

	//SETS (INPUT VALUES)
	public void setId(Long id) {
		this.id = id;
	}	
	
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	

}