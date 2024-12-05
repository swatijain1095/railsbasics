import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="listbox"
export default class extends Controller {
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
  connect() {
    this.leftArrowTarget.disabled = true;
    this.multipleLeftArrowTarget.disabled = true;
    this.rightArrowTarget.disabled = true;
    this.multipleRightArrowTarget.disabled = true;
  }

  changeRightButtons(event) {
    const leftSelect = this.leftSelectTarget;
    const leftArrow = this.leftArrowTarget;
    const rightArrow = this.rightArrowTarget;
    const multipleRightArrow = this.multipleRightArrowTarget;
    const multipleLeftArrow = this.multipleLeftArrowTarget;

    if (leftSelect.selectedOptions.length === 1) {
      leftArrow.disabled = true;
      multipleLeftArrow.disabled = true;
      rightArrow.disabled = false;
      multipleRightArrow.disabled = true;
    } else if (leftSelect.selectedOptions.length > 1) {
      leftArrow.disabled = true;
      multipleLeftArrow.disabled = true;
      rightArrow.disabled = true;
      multipleRightArrow.disabled = false;
    } else {
      leftArrow.disabled = true;
      multipleLeftArrow.disabled = true;
      rightArrow.disabled = true;
      multipleRightArrow.disabled = true;
    }
  }

  changeLeftButtons(event) {
    const rightSelect = this.rightSelectTarget;
    const leftArrow = this.leftArrowTarget;
    const rightArrow = this.rightArrowTarget;
    const multipleRightArrow = this.multipleRightArrowTarget;
    const multipleLeftArrow = this.multipleLeftArrowTarget;

    if (rightSelect.selectedOptions.length === 1) {
      leftArrow.disabled = false;
      multipleLeftArrow.disabled = true;
      rightArrow.disabled = true;
      multipleRightArrow.disabled = true;
    } else if (rightSelect.selectedOptions.length > 1) {
      leftArrow.disabled = true;
      multipleLeftArrow.disabled = false;
      rightArrow.disabled = true;
      multipleRightArrow.disabled = true;
    } else {
      leftArrow.disabled = true;
      multipleLeftArrow.disabled = true;
      rightArrow.disabled = true;
      multipleRightArrow.disabled = true;
    }
  }
}
