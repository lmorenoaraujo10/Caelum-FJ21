package br.com.caelum.teste;

import java.text.SimpleDateFormat;
import java.util.List;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.modelo.Contato;

public class TestaLista {
	public static void main(String[] args) {
		ContatoDao dao = new ContatoDao();

		List<Contato> contatos = dao.getLista();

		for (Contato umContato : contatos) {
			System.out.println("Nome: " + umContato.getNome());
			System.out.println("Email: " + umContato.getEmail());
			System.out.println("Endereço: " + umContato.getEndereco());
			SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
			System.out.println("Data de Nascimento: "
					+ df.format(umContato.getDataNascimento().getTime()));
		}
	}
}
