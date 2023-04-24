import { Component, OnInit } from '@angular/core';
import { UsuarioService } from '../../servidor/usuario.service';
import { UrlService } from '../../servidor/url.service';
import { LoginPage } from '../login/login.page';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.page.html',
  styleUrls: ['./perfil.page.scss'],
})
export class PerfilPage implements OnInit {

  constructor(public dadosUsuario:UsuarioService, 
              public servidorUrl:UrlService, 
              public nav:NavController) {

    this.verificarLogin();
   }

  ngOnInit() {
  }

  verificarLogin() {
    if (localStorage.getItem('usuarioLogado') != null) {

      this.dadosUsuario.setIdUsuario(localStorage.getItem('IdCliente'));
      this.dadosUsuario.setNomeUsuario(localStorage.getItem('nomeCliente'));
      this.dadosUsuario.setEmailUsuario(localStorage.getItem('emailCliente'));
      this.dadosUsuario.setStatusUsuario(localStorage.getItem('statusCliente'));
      this.dadosUsuario.setFotoUsuario(localStorage.getItem('fotoCliente'));
    } else {
      this.nav.navigateBack('/tabs/pg/login');
    }
  }

  sairLogin() {
    localStorage.clear();
    localStorage.setItem('deslogado','sim');
    this.nav.navigateBack('/tabs/pg/login');
    location.reload();
  }

}
