class Comment < ActiveRecord::Base
  belongs_to :post

  after_create :send_notification

  private

  def send_notification
    # Generates and delivers a notification email
    CommentNotificationMailer.notification(self).deliver
  end
end
