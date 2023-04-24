import { Injectable } from '@angular/core';
import { AlertController } from '@ionic/angular';

@Injectable({
  providedIn: 'root'
})
export class UrlService {

  url: string='http://localhost/kibeleza-xampp/admin/';

  constructor(public alerta:AlertController) { }

  getUrl() { //Pegar a Url
    return this.url;
  }

  async Alerta(titulo, msg) {
      const alert = await this.alerta.create( {

        header: titulo,
        message: msg,
        buttons: ['OK']
      });

      await alert.present();
    }
}
