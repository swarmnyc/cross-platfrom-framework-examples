import { Component } from '@angular/core';
import { Platform } from '@ionic/angular';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {
  backgroundColor: string
  name: string
  constructor(public plt: Platform) {
    this.backgroundColor = plt.is("android") ? "#A5C639" : "#999999"
  }
}
