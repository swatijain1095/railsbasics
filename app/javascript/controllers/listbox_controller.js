import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="listbox"
export default class extends Controller {
  connect() {}

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
