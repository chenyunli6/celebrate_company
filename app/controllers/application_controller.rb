class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :mobile_device?, :phone_device?

  def mobile_device?
    @mobile_device ||= (browser.device.mobile? || browser.device.tablet?) && cookies[:platform] != 'web'
  end

  def phone_device?
    @phone_device ||= browser.device.mobile?
  end
end
