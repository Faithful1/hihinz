$(document).ready(function() {

  var buttonSubmit = $('.submit-button')

  if (!buttonSubmit.length) return;

  var overallTotal = $('input[name=Total]')
  var donateEl = $('.donation-button')
  var birdsEl = $('.birds-div')
  var buttonClear = $('.clear')
  var buttonRem = $('.remove')
  var myPicks = $('.picks')
  var selectedBirdsEl = $('.selected-birds')
  var totalCostDiv = $('.total-cost')
  var totalCostRaceFooterLabel = $('.RaceFooterLabel')
  var totalCostRaceFooterDiv = $('.RaceFooter')
  var morePicks = $('.select-more')
  var birdsCount = $('.total-birds-count')
  var birdsCover = $('.birds-div')
  var birdsInBox = $('.b-desc')

  var BirdsCart = {};

  var CartCount = function (id, buttonEl) {
    var countEl = $('<div class="count"><div>-</div><span>' + BirdsCart[id] + '</span><div>+</div></div>')
    var removeEl = countEl.find('div:first-child')
    var addEl = countEl.find('div:last-child')
    var textEl = countEl.find('span')

    removeEl.on('click', function() {
      var isFirstStep = !!buttonEl

      removeBird(id)

      if (!BirdsCart[id]) {
        if (isFirstStep) {
          buttonEl.show()
        }
        else {
          $('.bird[data-id=' + id + ']').remove()

          if ($.isEmptyObject(BirdsCart)) {
            window.location.replace('/the-race')
          }
        }
        countEl.hide()
      }
      else {
        textEl.text(BirdsCart[id])
      }
    })

    addEl.on('click', function() {
      addBird(id)
      textEl.text(BirdsCart[id])
    })

    return countEl
  }

  if (birdsEl.length) {
    var activeClass = 'w--current'
    var navEls = $('.nav a')
    var locationEls = $('.location')
    var birdEls = $('.bird')

    // show the first location and toggle the nav button
    // navEls.first().addClass('w--current')
    navEls.first().addClass('')
    locationEls.hide()

    // bind nav buttons to show the appropriate location
    navEls.on('click', function() {
      const el = $(this)
      const i = el.index()

      navEls.removeClass(activeClass)
      el.addClass(activeClass)

      locationEls.hide()
      $(locationEls[i]).show();
    })

    var addFirstBird = function(id) {
      return function (e) {
        e.preventDefault()

        //when the button is clicked, 1 item is added to the cart
        addBird(id)

        $(this).hide()
        $(this).parent('.actions').append(CartCount(id, $(this)))
      }
    }

    // select bird
    // for each bird
    // bind its select button with a function that takes into account
    birdEls.each(function() {
      var el = $(this)
      var codeEl = el.find('.code')
      var descEL = el.find('.birds-p')
      var buttonEl = el.find('button')

      var id = el.attr('data-id')

      buttonEl.on('click', addFirstBird(id))
    })
  }

  //Add a selected bird to the cart
  function addBird(id) {
    var count = BirdsCart[id]

    if (count) {
      BirdsCart[id] = count + 1
    }
    else {
      BirdsCart[id] = 1
    }

    if (
      !$.isEmptyObject(BirdsCart) &&
      !buttonSubmit.is(':visible')
    ) {
      buttonSubmit.show()
    }

    serializeBirds()
    renderTotal()
  }

  function removeBird(id) {
    var count = BirdsCart[id]

    if (count > 1) {
      BirdsCart[id] = count - 1
    }
    else {
      delete BirdsCart[id]
    }

    if ($.isEmptyObject(BirdsCart)) {
      buttonSubmit.hide()
    }

    serializeBirds()
    renderTotal()
  }

  // go through the cart, and write a string to the hidden Birds field in the form
  // BirdID:CountInCart,BirdID:CountInCart,BirdID:CountInCart,
  function serializeBirds() {
    var birds = ''

    $.each(BirdsCart, function (id, count) {
      birds += String(id + ':' + count + ',')
    })

    $('input[name=Birds]').val(birds)
  }

  //function to clear the cart all items at once
  function clearCart() {
    BirdsCart = [];
  }

  function cloneProducts() {
    $.each(BirdsCart, function(id, count) {
      // find .birds-div by id
      var targetEl = $('.bird[data-id=' + id + ']')
      var clonedEl = targetEl.clone(true, true)

      // clonedEl.find('img').hide()
      clonedEl.find('.b-desc').hide()
      clonedEl.find('.count').remove()

      clonedEl.find('.actions').append(CartCount(id))

      selectedBirdsEl.append(clonedEl)
    })
  }

  //function to return the total cost for the cart
  //multiply each cart by the count
  function getTotal() {
    var total = 0
    var donation = Number($('input[name=Donation]').val())

    $.each(BirdsCart, function(id, count) {
      total = total + count
    })

    total = (total * 10) + donation
    total = Number(total)

    // find hidden Total field and set total to its value
    overallTotal.val(total)

    // bind new donation to total bet label
    totalCostDiv.text(total)

    return Number(total).toFixed(2)
  }

  function renderTotal() {
    var total = getTotal()

    totalCostDiv.text(total)
    totalCostRaceFooterLabel.text("Total bets selected $" + total)
  }

  buttonClear.on('click', function(e) {
    clearCart()
  })

  function goToCheckout(e) {
    if (e) e.preventDefault()

    buttonSubmit.hide()
    navEls.hide()
    locationEls.hide()
    myPicks.show();
    totalCostRaceFooterDiv.hide()

    $('label.button-2').hide()
    $('.selection-header').hide()

    $('input[name=Donation]').on('change', function(e) {
      renderTotal()
    })

    cloneProducts()
  }

  buttonSubmit.one('click', goToCheckout)

});

$('.hamburger').on('click', function(e) {
  // Prevent link from jumping to the top of the page
  e.preventDefault();
  // If menu is already showing, slide it up. Otherwise, slide it down.
  $('.row-3').toggleClass('slide-down');
});
