class NotificationChannel < ApplicationCable::Channel
  def subscribed
    if current_user.present?
      stream_from "notification_channel#{current_user.token}"
    end 
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
