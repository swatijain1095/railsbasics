import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="selectallcheckbox"
export default class extends Controller {
  connect() {}
  static targets = ["chkheader", "chkrow"];

  togglecheckboxes() {
    let isChecked = this.chkheaderTarget.checked;
    this.chkrowTargets.forEach((chkbox) => {
      chkbox.checked = isChecked;
    });
  }
}
