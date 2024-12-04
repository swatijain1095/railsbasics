import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="salary"
export default class extends Controller {
  connect() {}

  static targets = ["salaryInput", "allowanceSalary", "netSalary"];

  calculate() {
    const salary = parseFloat(this.salaryInputTarget.value);
    const selectedRadioButton = document.querySelector(
      'input[name="allowancetype_id"]:checked'
    );
    if (!selectedRadioButton) {
      alert("Please Select atleast one allowance type!");
      return;
    }

    const allowancePercentage = parseFloat(
      selectedRadioButton.dataset.percentage
    );
    if (isNaN(salary) || isNaN(allowancePercentage)) {
      return;
    }

    const allowanceAmount = (salary * allowancePercentage) / 100;
    this.allowanceSalaryTarget.value = allowanceAmount.toFixed(2);
    const netSalary = salary + allowanceAmount;
    this.netSalaryTarget.value = netSalary.toFixed(2);
  }
}
