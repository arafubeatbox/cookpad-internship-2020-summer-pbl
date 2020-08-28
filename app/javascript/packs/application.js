// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
import "bootstrap"


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(function() {
  $('.day-kondate-recipe-add-btn').on('click', function() {
    const id = $(this).data('id');
    const name = $(this).data('name');
    var kcal = Math.round(parseInt($(this).data('kcal')));
    var protein = Math.round(parseInt($(this).data('protein')));
    var carbo = Math.round(parseInt($(this).data('carbo')));
    var fat = Math.round(parseInt($(this).data('fat')));

    var html = `<tr>
                  <th scope="row">${name}</th>
                  <td>${kcal} kcal</td>
                  <td>${carbo} g</td>
                  <td>${protein} g</td>
                  <td>${fat} g</td>
                  <input type="hidden" value="${id}" name="recipe_ids[]">
                </tr>`

    $('#unregistered-message').remove();
    $('#kondate-table').append(html);
  });
});