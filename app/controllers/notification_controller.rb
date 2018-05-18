class NotificationController < ApplicationController
	def click_notification
		notification = Notification.find(params[:id])
		notification[:status] = 'read'
		notification.save
		redirect_to :back
	end	

# Send notification all member
	def send_notification
		User.all.each do |user|
			notification = Notification.new
			notification[:content] = params[:notification][:notification_message]
			notification[:user_id] = user[:id]
			notification[:status]  = 'unread'
			notification[:admin]   = 'admin'
			notification.save
		end
		notification_admin = Notificationadmin.new
		notification_admin[:content] = params[:notification][:notification_message]
		notification_admin.save
		redirect_to :back
	end

	def send_notification_member
		user = User.find(params[:id])
		notification = Notification.new
		notification[:content] = params[:notification][:notification_member]
		notification[:user_id] = user[:id]
		notification[:status] = 'unread'
		notification.save
		redirect_to :back
	end
end
