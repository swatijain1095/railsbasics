import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="salary"
export default class extends Controller {
  connect() {}

  static targets = ["salaryInput", "allowanceSalary", "netSalary"];

  calculate() {}
}
