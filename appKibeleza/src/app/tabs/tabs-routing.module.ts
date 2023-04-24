import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TabsPage } from './tabs.page';

const routes: Routes = [
  {
    path: 'tabs/pg',
    component: TabsPage,
    children: [
      {
        path: 'home',
        loadChildren: () => import('../pg/home/home.module').then(m => m.HomePageModule)
      },
      {
        path: 'sobre',
        loadChildren: () => import('../pg/sobre/sobre.module').then(m => m.SobrePageModule)
      },
      {
        path: 'lista-servico',
        loadChildren: () => import('../pg/lista-servico/lista-servico.module').then(m => m.ListaServicoPageModule)
      },
      {
        path: 'login',
        loadChildren: () => import('../pg/login/login.module').then(m => m.LoginPageModule)
      },
      {
        path: 'liservico1/:id',
        loadChildren: () => import('../pg/liservico1/liservico1.module').then( m => m.Liservico1PageModule)
      },
      {
        path: 'reservar/:id',
        loadChildren: () => import('../pg/reservar/reservar.module').then( m => m.ReservarPageModule)
      },
      {
        path: 'cadastro',
        loadChildren: () => import('../pg/cadastro/cadastro.module').then( m => m.CadastroPageModule)
      },
      {
        path: 'perfil',
        loadChildren: () => import('../pg/perfil/perfil.module').then( m => m.PerfilPageModule)
      },
      {
        path: '',
        redirectTo: '/tabs/pg/home',
        pathMatch: 'full'
      }
    ]
  },
  {
    path: '',
    redirectTo: '/tabs/pg/home',
    pathMatch: 'full'
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
})
export class TabsPageRoutingModule {}
