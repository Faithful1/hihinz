$(document).ready(function() {

  if ($('#card').length) {
    var stripe = Stripe('pk_test_DBU6mOrp34o9zYC1T17Yv80p')
    var elements = stripe.elements()

    var card = elements.create('card')
    card.mount('#card')

    var formEl = $('#PaymentForm')
    formEl.on('submit', function(e) {
      var tokenEl = $('#PaymentForm_StripeToken')

      if (!tokenEl.val()) {
        e.preventDefault()

        stripe.createToken(card).then(function(res) {
          if (res.error) {
            alert(res.error.message)
          }
          else {
            var token = res.token.id

            $('#PaymentForm_StripeToken').val(token)

            formEl.submit()
          }
        })
      }
    })
  }

});
