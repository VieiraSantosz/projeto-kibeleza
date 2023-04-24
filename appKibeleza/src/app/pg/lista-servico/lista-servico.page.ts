import { Component, OnInit } from '@angular/core';
import { UrlService } from "../../servidor/url.service";
import { map } from "rxjs/operators";
import { Http } from "@angular/http";

@Component({
  selector: 'app-lista-servico',
  templateUrl: './lista-servico.page.html',
  styleUrls: ['./lista-servico.page.scss'],
})
export class ListaServicoPage implements OnInit {

  servicos:any;

  servicoItem: Array<{
    IdServico:any,
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
    IdEmpresa:any}>;

  servicoItemTodos: Array<{
    IdServico:any,
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
    IdEmpresa:any}>;

  constructor(public http:Http,public servidorUrl:UrlService) { 
    this.listaServico();
    this.servicoItem = [];
  }

  ngOnInit() {
  }

  listaServico() { // Buscar os serviços
                  //http://localhost/kibeleza-xampp/admin/
    this.http.get(this.servidorUrl.getUrl()+"listaServico.php")
    .pipe(map(rep=>rep.json()))

    .subscribe(listaDados=>  {
    this.servicos = listaDados;
    console.log (this.servicos);

    for (let i = 0; i < listaDados  .length; i++) {
      
      this.servicoItem.push({
        IdServico:listaDados[i]['idServico'],
        NomeServico:listaDados[i]['NomeServico'],
        ValorServico:listaDados[i]['ValorServico'],
        StatusServico:listaDados[i]['StatusServico'],
        DataCadastroServico:listaDados[i]['DataCadastroServico'],
        FotoServico1:listaDados[i]['FotoServico1'],
        FotoServico2:listaDados[i]['FotoServico2'],
        FotoServico3:listaDados[i]['FotoServico3'],
        FotoServico4:listaDados[i]['FotoServico4'],
        DescricaoServico:listaDados[i]['DescricaoServico'],
        TextoServico:listaDados[i]['TextoServico'],
        TempoServico:listaDados[i]['TempoServico'],
        IdEmpresa:listaDados[i]['idEmpresa']
      });
    }

      this.servicoItemTodos = this.servicoItem;
    });
  }

  getItems(ev: any) {

    const val = ev.target.value;

    if(val && val.trim() != '') {
      this.servicoItem = this.servicoItemTodos.filter((servicos) => {
        return (servicos.NomeServico.toLowerCase().indexOf(val.toLowerCase()) > -1);
      });
    } else {
      this.servicoItem = this.servicoItemTodos;
    }
    console.log(this.servicoItem);
  }
}
