#= require validator

window.App ||= {}

$(document).on 'turbolinks:load', ->
  return unless $('.member-container').length
  $('.form-group').on 'click', 'input[name="member[family_amount]"]', ->
    checkedVal = $(this).val()
    if checkedVal == '0'
      $('#family_sizes1, #family_sizes2').addClass('hide')
    else if checkedVal == '1'
      $('#family_sizes1').removeClass('hide')
      $('#family_sizes2').addClass('hide')
    else
      $('#family_sizes1, #family_sizes2').removeClass('hide')

  $('.form-group').on 'click', 'input[name="member[shuttle_bus]"]', ->
    checkedVal = $(this).val()
    return $('#member_bus_line').parents('.field').removeClass('hide') if checkedVal == 'true'
    $('#member_bus_line').parents('.field').addClass('hide')

  $('.member-form').on 'click', '.submit', ->
    $submitBtn = $('.member-form').find('.submit-field').find('.submit')
    App.disableBtn $submitBtn
    validator = $('.form-content').data('bootstrapValidator')
    validator.validate()
    return $('.member-form').submit() if validator.isValid()
    App.enableBtn $submitBtn
