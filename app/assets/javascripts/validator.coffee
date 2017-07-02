(($) ->
  $.fn.bootstrapValidator.validators.isRequired = {
    validate: (validator, $field, options) ->
      $field.val() != '请选择'
  }
) window.jQuery

$(document).on 'turbolinks:load', ->
  $('.form-content').bootstrapValidator
    message: '输入值无效！'
    feedbackIcons: {}
    fields:
      'member[department]':
        validators:
          notEmpty: message: '请填写系统'
          isRequired: message: '请填写系统'
      'member[employee_code]': validators: notEmpty: message: '请填写员工编号'
      'member[name]': validators: notEmpty: message: '请填写员工姓名'
      'member[sizes][]':
        validators:
          notEmpty: message: '请填写服装尺码'
      'member[family_amount]':
        validators:
          notEmpty: message: '请填写携带家属数量'
      'member[anniversaries][]':
        validators:
          notEmpty: message: '请填写是否参加过司庆'
      'member[shuttle_bus]':
        validators:
          notEmpty: message: '请填写是否乘坐班车'
      'member[bus_line]':
        validators:
          notEmpty: message: '请填写乘坐班车路线'
          isRequired: message: '请填写是否乘坐班车'
