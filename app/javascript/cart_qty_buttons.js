document.querySelectorAll('.decrement').forEach(function(button) {
    button.addEventListener('click', function(e) {
      e.preventDefault();
      let quantityField = e.target.parentNode.parentNode.querySelector('.quantity');
      if(quantityField.value > 1) { // prevent going below 1
        quantityField.value = parseInt(quantityField.value) - 1;
      }
    });
  });

  document.querySelectorAll('.increment').forEach(function(button) {
    button.addEventListener('click', function(e) {
      e.preventDefault();
      let quantityField = e.target.parentNode.parentNode.querySelector('.quantity');
      quantityField.value = parseInt(quantityField.value) + 1;
    });
  });
