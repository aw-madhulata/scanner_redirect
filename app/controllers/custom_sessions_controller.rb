# app/controllers/custom_sessions_controller.rb
class CustomSessionsController < Devise::SessionsController
  ## for rails 5+, use before_action, after_action
  before_action :before_login, :only => :create
  after_action :after_login, :only => :create

  def before_login
  end

  def after_login
    token = Devise.friendly_token
    self.resource.update_column(:token, token)
  end
end