// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require rails-ujs
//= require toastr

import "controllers";
import "@hotwired/turbo-rails";

document.addEventListener("turbo:load", function () {
  hideShowAddress();
  changeCategory();
  addCertficate();
  submitEmployeeForm();
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

function addCertficate() {
  $(".add-certicate").on("click", function (e) {
    if ($("form .certi-box").length < 10) {
      $(".certificate_list").append($(".certificate_fields.d-none").html());
    } else {
      toastr.error("A maximum of 10 certificates are only allowed!.");
    }
    removeCerticate();
    e.stopImmediatePropagation();
  });
}

function removeCerticate() {
  $(".remove_certi").on("click", function (e) {
    $(this).closest(".certi-box").remove();
    e.stopImmediatePropagation();
  });
}

function submitEmployeeForm() {
  $(".submit-emp-form").on("click", function (e) {
    var foundCerti = $("form .certi-box").length != 0;
    if (!foundCerti) {
      toastr.error("You need to add atleast one certificate");
      e.preventDefault();
    }

    if (foundCerti) {
      $("form .certificate-file").each(function (index, element) {
        if ($(this).val().length == 0) {
          foundCerti = false;
          return false;
        }
      });

      if (!foundCerti) {
        toastr.error("Certificates Can't be blank");
        e.preventDefault();
      }
    }

    if (foundCerti) {
      var photoFileExtension = $("#photo").val().split(".").pop().toLowerCase();
      var panCardFileExtension = $("#employeeinfo_pan_card")
        .val()
        .split(".")
        .pop()
        .toLowerCase();
      var allowedFileExtesion = ["png", "jpeg", "jpg"];
      if (!allowedFileExtesion.includes(photoFileExtension)) {
        toastr.error("Photo must be png/jpeg/jpg only");
        foundCerti = false;
        e.preventDefault();
      }

      if (foundCerti && !allowedFileExtesion.includes(panCardFileExtension)) {
        toastr.error("Pan card must be png/jpeg/jpg only");
        foundCerti = false;
        e.preventDefault();
      }
    }
  });
}

import "trix";
import "@rails/actiontext";
