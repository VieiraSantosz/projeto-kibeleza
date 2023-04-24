import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { Liservico1Page } from './liservico1.page';

const routes: Routes = [
  {
    path: '',
    component: Liservico1Page
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class Liservico1PageRoutingModule {}
