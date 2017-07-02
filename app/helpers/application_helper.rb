JS_VOID = 'javascript:void(0)'.freeze

module ApplicationHelper
  def layout_helper_class
    class_name = " #{controller_name}-#{action_name}-page"
    class_name += ' mobile-device' if mobile_device?
    class_name += ' phone-device' if phone_device?
    class_name += ' browser-firefox' if browser.firefox?
    class_name
  end
end
