import { Component, OnInit } from '@angular/core';
import { UrlService } from '../../servidor/url.service';
import { Http } from '@angular/http';
import { map } from 'rxjs/operators';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-liservico1',
  templateUrl: './liservico1.page.html',
  styleUrls: ['./liservico1.page.scss'],
})
export class Liservico1Page implements OnInit {

  id:any;

  detalhe:any;
  
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

  constructor(public http:Http, public servidorUrl:UrlService, 
              public dadosUrl:ActivatedRoute) {
    this.dadosUrl.params.subscribe(parametroId=> {
      this.id = parametroId.id;
      console.log("Id do Serviço"+this.id);
      this.listaDetalhes();

      this.dados = [];
    });
  }

  ngOnInit() {
  }

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
    console.log(this.dados[0].NomeServico);
    console.log(this.dados[0]);
    localStorage.setItem('codServico', this.dados[0].idServico);
    });
  }
}
