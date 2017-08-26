package br.com.restcliente.taglibs;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import br.com.restcliente.dao.BibliotecaDAO;

public class DeletarLivroTag extends SimpleTagSupport {

	private String id;
	private BibliotecaDAO dao = new BibliotecaDAO();

	@Override
	public void doTag() throws JspException, IOException {
		dao.deletarLivro(Long.parseLong(id)); 
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
