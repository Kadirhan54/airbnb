import { Controller } from "@hotwired/stimulus"
import {enter, leave, toggle} from 'el-transition'
import "@hotwired/turbo-rails";

export default class extends Controller {

  static targets =['dropdown', 'openUserMenu']

  connect () {
    console.log('conntected')
    this.openUserMenuTarget.addEventListener("click", (e)=> {
      openDropdown(this.dropdownTarget)
    })
  }
}

function openDropdown(element) {
  toggle(element).then(() => {
    console.log("Enter transition complete")
  })
}

function closeDropdown() {
  leave(this.dropdownTarget).then(() => {
      element.destroy();
  })
}