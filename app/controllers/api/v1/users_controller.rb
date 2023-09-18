module Api
  module V1
    class UsersController < ApplicationController
      def login 
        token = Devise.friendly_token
        user = User.first 
        user.update_column(:token, token)
        render json: {user: User.first}
      end

      def scanner
        user = User.find_by_token(params[:token])
        if user.present?
          # ActionCable.server.broadcast("notification_channel#{user.token}", "You have visited the welcome page. your token is #{params[:token]}")
          ActionCable.server.broadcast("notification_channel#{user.token}", "/profile/#{user.id}")
          # TODO write code to redirect login user session to profile page 
        end
        head :ok 
      end 
    end
  end
end

