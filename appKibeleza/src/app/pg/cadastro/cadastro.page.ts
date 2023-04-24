import { Component, OnInit } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import { map } from 'rxjs/operators';
import { UrlService } from '../../servidor/url.service';
import { FormBuilder, Validator, Validators } from '@angular/forms';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-cadastro',
  templateUrl: './cadastro.page.html',
  styleUrls: ['./cadastro.page.scss'],
})
export class CadastroPage implements OnInit {

  cadastro: any;
  nome: any;
  email: any;
  senha: any;

  constructor(public http: Http, public formConst: FormBuilder, public nav: NavController, public servidorUrl: UrlService) { 
    this.cadastro = this.formConst.group({
      nome: ['',Validators.required],
      email: ['',Validators.required],
      senha: ['',Validators.required],
    })
  }

  ngOnInit() {
  }

  async cadCliente() {
    if (this.nome == undefined || this.email == undefined || this.senha == undefined) {
      this.servidorUrl.Alerta('Atenção', 'Preencha todos os campos');
    } else {
      this.cadDados(this.cadastro.value).subscribe(

        data => {
          console.log(this.nome + 'Dados teste');
          this.servidorUrl.Alerta(this.nome, 'Seja Bem-Vindo');
          this.nav.navigateBack('/tabs/pg/login');
        },

        erro => {
          console.log(this.nome + 'Erros de dados');
          this.servidorUrl.Alerta(this.nome, 'Erro ao tentar realizar o cadastro.');
        }
      ) 
    }
  }
    cadDados(nome) {
      let cabecalho = new Headers({'content-type':'application/x-www-form-urlencoded'});
      return this.http.post(this.servidorUrl.getUrl()+'cadastro.php',nome, {
        headers: cabecalho,
        method: 'POST',
      }).pipe(map(
        (res: Response) => {return res.json();}
      ));
    }
}
