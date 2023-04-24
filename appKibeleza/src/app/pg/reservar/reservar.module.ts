import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';
import { HttpModule } from '@angular/http';

import { ReservarPageRoutingModule } from './reservar-routing.module';
import { ReservarPage } from './reservar.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    IonicModule,
    HttpModule,
    ReservarPageRoutingModule
  ],
  declarations: [ReservarPage]
})
export class ReservarPageModule {}
