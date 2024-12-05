import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="listbox"
export default class extends Controller {
  connect() {
    this.leftArrowTarget.disabled = true;
    this.multipleLeftArrowTarget.disabled = true;
    this.rightArrowTarget.disabled = true;
    this.multipleRightArrowTarget.disabled = true;
  }

  static targets = [
    "leftSelect",
    "leftArrow",
    "rightArrow",
    "multipleRightArrow",
    "multipleLeftArrow",
    "multipleLeftArrow",
    "rightSelect",
    "allowanceSalary",
    "netSalary",
    "salaryInput",
  ];
}
