import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UsuarioService {

  idUsuario = "";
  nomeUsuario = "";
  emailUsuario = "";
  statusUsuario = "";
  fotoUsuario = "";

  constructor() { }

  setIdUsuario(valor) {
    this.idUsuario = valor;
  }

  getIdUsuario() {
    return this.idUsuario;
  }

  setNomeUsuario(valor) {
    this.nomeUsuario = valor;
  }

  getNomeUsuario() {
    return this.nomeUsuario;
  }

  setEmailUsuario(valor) {
    this.emailUsuario = valor;
  }

  getEmailUsuario() {
    return this.emailUsuario;
  }

  setStatusUsuario(valor) {
    this.statusUsuario = valor;
  }

  getStatusUsuario() {
    return this.statusUsuario;
  }

  setFotoUsuario(valor) {
    this.fotoUsuario = valor;
  }

  getFotoUsuario() {
    return this.fotoUsuario;
  }
}
