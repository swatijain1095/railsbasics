import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="cascadingselect"
export default class extends Controller {
  connect() {}

  static targets = ["countrySelect", "stateSelect", "citySelect"];

  loadStates() {
    const countryId = this.countrySelectTarget.value;
    if (countryId) {
      Rails.ajax({
        type: "GET",
        url: `/locations/states?country_id=${country_id}`,
        success: (data) => {
          if (data.length > 0) {
            this.updateOptions(this.stateSelectTarget, data, "");
          } else {
            this.updateOptions(this.stateSelectTarget, data, "Select State");
            this.updateOptions(this.citySelectTarget, [], "Select City");
          }
        },
      });
    } else {
      this.stateSelectTarget.innerHTML = "Select State";
      this.citySelectTarget.innerHTML = "Select City";
    }
  }

  updateOptions(container, data, prompt) {
    container.innerHTML = this.generateOptions(data, prompt);
  }

  generateOptions(data, prompt) {
    const options = data.map(
      (option) => `<option value="${option.id}">${option.name}</option>`
    );
    if (prompt) {
      return `<option value="">${prompt}</option>${options.join("")}`;
    } else {
      return options;
    }
  }

  loadCities() {}
}
