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
    const kcal = Math.round(parseInt($(this).data('kcal')));
    const carbs = Math.round(parseInt($(this).data('carbs')));
    const protein = Math.round(parseInt($(this).data('protein')));
    const fat = Math.round(parseInt($(this).data('fat')));

    const recipe_row = `
                <tr>
                  <th scope="row">${name}</th>
                  <td>${kcal} kcal</td>
                  <td>${carbs} g</td>
                  <td>${protein} g</td>
                  <td>${fat} g</td>
                  <input type="hidden" value="${id}" name="recipe_ids[]">
                </tr>`

    $('#unregistered-message').remove();
    $('#kondate-table').append(recipe_row);

    var total_kcal = parseInt($('#total-kcal').data('total-kcal'));
    var total_carbs = parseInt($('#total-carbs').data('total-carbs'));
    var total_protein = parseInt($('#total-protein').data('total-protein'));
    var total_fat = parseInt($('#total-fat').data('total-fat'));

    const standard_kcal = parseInt($('#total-kcal').data('standard-kcal'));
    const standard_carbs = parseInt($('#total-carbs').data('standard-carbs'));
    const standard_protein = parseInt($('#total-protein').data('standard-protein'));
    const standard_fat = parseInt($('#total-fat').data('standard-fat'));

    total_kcal += kcal;
    total_carbs += carbs;
    total_protein += protein;
    total_fat += fat;

    $('#total-row').remove();

    const total_row = `
                <tr id="total-row">
                  <th scope="row">合計</th>
                  <td class="table-${compare_to_standard(total_kcal, standard_kcal / 2.2)}" id="total-kcal" data-total-kcal="${total_kcal}" data-standard-kcal="${standard_kcal}">${total_kcal} kcal</td>
                  <td class="table-${compare_to_standard(total_carbs, standard_carbs / 2)}" id="total-carbs" data-total-carbs="${total_carbs}" data-standard-carbs="${standard_carbs}">${total_carbs} g</td>
                  <td class="table-${compare_to_standard(total_protein, standard_protein / 2)}" id="total-protein" data-total-protein="${total_protein}" data-standard-protein="${standard_protein}">${total_protein} g</td>
                  <td class="table-${compare_to_standard(total_fat, standard_fat / 2)}" id="total-fat" data-total-fat="${total_fat}" data-standard-fat="${standard_fat}">${total_fat} g</td>
                </tr>`

    $('#kondate-table').append(total_row);
  });

  function compare_to_standard(attribute, standard){
    if (attribute > standard + 0.5 * standard){
      return 'danger'
    } else if (attribute < standard + 0.5 * standard && attribute > standard) {
      return 'warning'
    } else if (attribute <= standard && attribute > standard - 0.2 * standard) {
      return 'success'
    } else {
      return 'default'
    }
  }
});