// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require rails-ujs
//= require toastr

import "controllers";
import "@hotwired/turbo-rails";

document.addEventListener("turbo:load", function () {
  hideShowAddress();
  changeCategory();
});

function hideShowAddress() {
  const checkbox = document.getElementById("address_details");
  const addressDetailsDiv = document.querySelector(".address-details-div");
  const addressLabel = document.getElementById("lblShowHide");
  if (checkbox && addressDetailsDiv && addressLabel) {
    checkbox.addEventListener("change", function () {
      console.log("Checkbox changed"); // Debug line
      addressDetailsDiv.classList.toggle("d-none");

      if (addressLabel.textContent === "Hide Address Details") {
        addressLabel.textContent = "Show Address Details";
      } else {
        addressLabel.textContent = "Hide Address Details";
      }
    });
  }
}

function changeCategory() {
  $(".category-dropdown").on("change", function (e) {
    const categoryName = $(this).val();
    $.ajax({
      url: "/shoppingcart/product_list",
      method: "GET",
      data: {
        category: categoryName,
      },
    });
    e.stopImmediatePropagation();
  });
}

import "trix";
import "@rails/actiontext";
