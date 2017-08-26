package br.com.restcliente.taglibs;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import br.com.restcliente.dao.BibliotecaDAO;
import br.com.restcliente.model.Livro;

public class BuscarLivroPorIdTag extends SimpleTagSupport {

	private String id;
	private BibliotecaDAO dao = new BibliotecaDAO();

	@Override
	public void doTag() throws JspException, IOException {
		Livro livro = dao.buscarPorID(Long.parseLong(id));
		getJspContext().setAttribute("livro", livro); //Set Atributo no Contexto
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
