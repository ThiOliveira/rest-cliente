package br.com.restcliente.model;

public class Livro {
	private Long id;
	private String titulo;
	private String genero;

	public Livro(Long id, String titulo, String genero) {
		this.id = id;
		this.titulo = titulo;
		this.genero = genero;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	// verificar se é um novo livro
	public boolean isNovo() {
		return id == null || id == 0;
	}

}
