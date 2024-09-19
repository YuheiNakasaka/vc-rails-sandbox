import { Controller } from '@hotwired/stimulus'
import * as Notyf from 'notyf'

export default class extends Controller {
  static values = {
    flash: Array
  }

  connect() {
    const notyf = new Notyf.Notyf()
    this.flashValue.forEach((flash) => {
      switch (flash[0]) {
        case 'notice':
          notyf.success(flash[1])
          break
        case 'alert':
          notyf.error(flash[1])
          break
      }
    })
  }
}