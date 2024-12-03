function addQtyBtn() {
  $(".btn-plus").on("click", function (e) {
    var qtyElement = $(this).closest("tr").find(".qty");
    var qty = parseInt(qtyElement.val());
    if (qty == 0) {
      toastr.error("Qty can't be 0");
    } else {
      qtyElement.val(qty + 1);
    }
    updatePrice(this);
    e.stopImmediatePropagation();
  });
}

function updatePrice(element) {
  var closestTr = $(element).closest("tr");
  var price = parseFloat(closestTr.find(".product-price").val());
  var qty = parseInt($(element).closest("tr").find(".qty").val());
  $(element)
    .closest("tr")
    .find("td:eq(2)")
    .text((price * qty).toFixed(2));
}
