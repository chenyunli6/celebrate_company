class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :mobile_device?, :phone_device?

  def require_is_admin
    return if current_user.admin?
    flash[:alert] = "你没有管理员权限"
    redirect_to root_path
  end

  def mobile_device?
    @mobile_device ||= (browser.device.mobile? || browser.device.tablet?) && cookies[:platform] != 'web'
  end

  def phone_device?
    @phone_device ||= browser.device.mobile?
  end
end
