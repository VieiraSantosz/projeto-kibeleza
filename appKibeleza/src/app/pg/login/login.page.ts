import { Component, OnInit } from '@angular/core';
import { UrlService } from '../../servidor/url.service';
import { UsuarioService } from '../../servidor/usuario.service';
import { Http } from '@angular/http';
import { map } from 'rxjs/operators';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {

  email: string;
  senha: string;

  constructor(public urlServidor:UrlService, 
              public http:Http, 
              public nav:NavController,
              public dadosUsuario:UsuarioService) { 

    this.email = "flori_peixe@gmail.com";
    this.senha = "1234";

    if (localStorage.getItem('deslogado') == 'sim') {
      localStorage.setItem('deslogado','nao');
      location.reload;
    }

    if (localStorage.getItem('usuarioLogado') != null) {
      this.autenticarUsuario();
      this.nav.navigateBack("/tabs/pg/home");
    }
  }

  ngOnInit() {
    document.querySelector('ion-tab-bar').style.display = 'none';
  }

  async logar() {
    if (this.email == undefined || this.senha == undefined) {
      this.urlServidor.Alerta('Kibeleza','preencha todos os dados');

    } else {
      this.http.get(this.urlServidor.getUrl()+'login.php?email='+this.email+'&senha='+this.senha)
      
      .pipe(map(rep=>rep.json()))
      .subscribe(data=> {

        if (data.msg.Logado=='Sim') {

          if (data.Dados.statusCliente=='ATIVO') {
            this.urlServidor.Alerta(data.Dados.nomeCliente,'Seja Bem Vindo.');

            //Pegar os dados no Local Storage:
            localStorage.setItem('IdCliente', data.Dados.idCliente);
            localStorage.setItem('nomeCliente', data.Dados.nomeCliente);
            localStorage.setItem('emailCliente', data.Dados.emailCliente);
            localStorage.setItem('statusCliente', data.Dados.statusCliente);
            localStorage.setItem('fotoCliente', data.Dados.fotoCliente);

            this.dadosUsuario.setIdUsuario(localStorage.getItem('IdCliente'));
            this.dadosUsuario.setNomeUsuario(localStorage.getItem('nomeCliente'));
            this.dadosUsuario.setEmailUsuario(localStorage.getItem('emailCliente'));
            this.dadosUsuario.setStatusUsuario(localStorage.getItem('statusCliente'));
            this.dadosUsuario.setFotoUsuario(localStorage.getItem('fotoCliente'));

            localStorage.setItem('usuarioLogado', data);
            document.querySelector('ion-tab-bar').style.display = 'flex';

            //Direcionar
            this.nav.navigateBack('/tabs/pg/perfil');

          } else {
            this.urlServidor.Alerta(data.Dados.nomeCliente,'Entre em contato com a empresa.');
          }

        } else {
          this.urlServidor.Alerta('KiBeleza','Usuário ou Senha inválido.');
        }
      });
    }
  }

  autenticarUsuario() {
    this.dadosUsuario.setIdUsuario(localStorage.getItem('IdCliente'));
    this.dadosUsuario.setNomeUsuario(localStorage.getItem('nomeCliente'));
    this.dadosUsuario.setEmailUsuario(localStorage.getItem('emailCliente'));
    this.dadosUsuario.setStatusUsuario(localStorage.getItem('statusCliente'));
    this.dadosUsuario.setFotoUsuario(localStorage.getItem('fotoCliente'));
  }
}