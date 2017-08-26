package br.com.restcliente.taglibs;

import javax.servlet.jsp.tagext.SimpleTagSupport;
import br.com.restcliente.dao.BibliotecaDAO;


public class ListarLivrosTag extends SimpleTagSupport {
	
	private BibliotecaDAO bibliotecaDAO;

	@Override
	public void doTag() {
		getJspContext().setAttribute("livro", bibliotecaDAO.buscarTodos().size());
	}
	
	public ListarLivrosTag() {
		this.bibliotecaDAO = new BibliotecaDAO();
	}

}
