import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { IonicModule } from '@ionic/angular';

import { Liservico1PageRoutingModule } from './liservico1-routing.module';

import { Liservico1Page } from './liservico1.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    HttpModule,
    Liservico1PageRoutingModule
  ],
  declarations: [Liservico1Page]
})
export class Liservico1PageModule {}
