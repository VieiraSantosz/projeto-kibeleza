import { Component, OnInit } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import { map } from 'rxjs/operators';
import { UrlService } from '../../servidor/url.service';
import { FormBuilder, Validator, Validators } from '@angular/forms';
import { NavController } from '@ionic/angular';
import { ActivatedRoute } from '@angular/router';
import * as moment from 'moment';

@Component({
  selector: 'app-reservar',
  templateUrl: './reservar.page.html',
  styleUrls: ['./reservar.page.scss'],
})
export class ReservarPage implements OnInit {

  id:any;
  detalhe:any;
  funcionario:any;
  dataHora:any;
  dataReserva:any;
  idFunc:any;
  reserva:any;

  dataMin: String = moment().format();

  codFunc:any;
  codServico=localStorage.getItem('idCliente');
  codCliente=localStorage.getItem('idCliente');

  dados:Array<{
          idServico:any,
        NomeServico:any,
       ValorServico:any, 
      StatusServico:any,
DataCadastroServico:any,
       FotoServico1:any, 
       FotoServico2:any, 
       FotoServico3:any, 
       FotoServico4:any, 
   DescricaoServico:any,
       TextoServico:any, 
       TempoServico:any,
          idEmpresa:any
  }>;

  constructor(public http: Http, public formConst: FormBuilder, 
              public nav: NavController, public servidorUrl: UrlService,
              public dadosUrl: ActivatedRoute) { 
    this.dadosUrl.params.subscribe(parametroId=> {
      this.id = parametroId.id;
      this.listaDetalhes();
            
      this.dados = [];
    });

    this.reserva = this.formConst.group({
      codFunc:['', Validators.required],
      dataReserva:['', Validators.required],
      codCliente:this.codCliente,
      codServico:this.codServico,
    });

    this.listaFunc();
  }

  ngOnInit() {
  }

  listaFunc() { // Buscar os serviços
                  //http://localhost/kibeleza-xampp/admin/
    this.http.get(this.servidorUrl.getUrl()+"listaFunc.php")
    .pipe(map(rep=>rep.json()))

  .subscribe(listaDados=>  {
    this.funcionario = listaDados;
    console.log (this.funcionario);
    })
  }

  //DETALHE SERVIÇO
  listaDetalhes() {
    this.http.get(this.servidorUrl.getUrl()+'detalhe.php?idServico='+this.id)
    .pipe(map(rep=> rep.json()))
    .subscribe(data=>{
      this.detalhe = data;
      for (let i=0; i<data.length; i++) {
        this.dados.push({
          idServico:data[i]['idServico'],
          NomeServico:data[i]['NomeServico'],
          ValorServico:data[i]['ValorServico'], 
          StatusServico:data[i]['StatusServico'],
          DataCadastroServico:data[i]['DataCadastroServico'],
          FotoServico1:data[i]['FotoServico1'], 
          FotoServico2:data[i]['FotoServico2'], 
          FotoServico3:data[i]['FotoServico3'], 
          FotoServico4:data[i]['FotoServico4'], 
          DescricaoServico:data[i]['DescricaoServico'],
          TextoServico:data[i]['TextoServico'], 
          TempoServico:data[i]['TempoServico'],
          idEmpresa:data[i]['idEmpresa']
        });
      }
    });
  }
  //FIM DO DETALHE

  async cadReserva() {
    if (this.idFunc == undefined || this.dataHora == undefined) {
      this.servidorUrl.Alerta('Atenção','Preencha todos os campos');
    } else {
      this.cadDados(this.reserva.value).subscribe(

        data => {
          console.log(localStorage.getItem('nomeCliente')+'Dados teste');
          this.servidorUrl.Alerta(localStorage.getItem('nomeCliente'),'Agendamento realizado');
          this.nav.navigateBack('/tabs/pg/perfil');
        },

        erro => {
          console.log(localStorage.getItem('nomeCliente') + 'Erros de dados');
          this.servidorUrl.Alerta(localStorage.getItem('nomeCliente'), 'Erro ao tentar realizar o agendamento.');
        }
      ) 
    }
  }
  
    cadDados(nome) {
      let cabecalho = new Headers({'content-type':'application/x-www-form-urlencoded'});
      return this.http.post(this.servidorUrl.getUrl()+'reserva.php',nome, {
        headers:cabecalho,
        method:'POST',
      }).pipe(map(
        (res:Response)=>{return res.json();}
      ));
    }
}
