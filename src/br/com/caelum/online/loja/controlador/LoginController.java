package br.com.caelum.online.loja.controlador;

import br.com.caelum.online.loja.dominio.UsuarioLogado;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class LoginController {

	
	private UsuarioLogado usuarioLogado;
	private Result result;

	public LoginController(UsuarioLogado usuarioLogado, Result result){
		this.usuarioLogado = usuarioLogado;
		this.result = result;
	}
	
	public void formulario(){};
	
	public void loga(String login, String senha){
		
		if(login.equals("caelum") && senha.equals("vraptor")){
			this.usuarioLogado.setLogin(login);
			result.redirectTo(LoginController.class).exibe();
		}else{
			result.include("mensagem","Login ou senha inválidos!");
			result.redirectTo(LoginController.class).formulario();
		}
		
		this.usuarioLogado.setLogin("caelum");
	}
	
	public void exibe(){
		result.include("usuario",this.usuarioLogado.getLogin());
	}
}
