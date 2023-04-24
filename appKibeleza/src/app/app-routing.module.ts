import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./tabs/tabs.module').then(m => m.TabsPageModule)
  },
  {
    path: 'home',
    loadChildren: () => import('./pg/home/home.module').then( m => m.HomePageModule)
  },
  {
    path: 'sobre',
    loadChildren: () => import('./pg/sobre/sobre.module').then( m => m.SobrePageModule)
  },
  {
    path: 'lista-servico',
    loadChildren: () => import('./pg/lista-servico/lista-servico.module').then( m => m.ListaServicoPageModule)
  },
  {
    path: 'login',
    loadChildren: () => import('./pg/login/login.module').then( m => m.LoginPageModule)
  },
  {
    path: 'liservico1',
    loadChildren: () => import('./pg/liservico1/liservico1.module').then( m => m.Liservico1PageModule)
  },
  {
    path: 'reservar',
    loadChildren: () => import('./pg/reservar/reservar.module').then( m => m.ReservarPageModule)
  },
  {
    path: 'cadastro',
    loadChildren: () => import('./pg/cadastro/cadastro.module').then( m => m.CadastroPageModule)
  },
  {
    path: 'perfil',
    loadChildren: () => import('./pg/perfil/perfil.module').then( m => m.PerfilPageModule)
  },
];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
