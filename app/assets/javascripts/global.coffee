window.App ||= {}
App.disableBtn = (selector) ->
  $btn = $(selector)
  if $btn.length > 0 and !$btn.hasClass('disabled')
    App.disableElement $btn

App.enableBtn = (selector) ->
  $btn = $(selector)
  if $btn.length > 0 and ($btn.hasClass('disabled') || $btn.attr('disabled'))
    $btn.removeClass 'disabled'
    $btn.removeAttr 'disabled'
    $.rails.enableElement $btn

App.disableElement = (element) ->
  if element.length
    $.rails.disableElement element
    element.addClass 'disabled'

App.enableElement = (element) ->
  if element.length
    $.rails.enableElement element
    element.removeClass 'disabled disabled-with-cursor-auto'
